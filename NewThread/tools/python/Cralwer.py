# -*- coding:utf-8 -*-

import Queue
import json
import os
import re
import sys
import threading
import time
import urllib2

import MySQLdb

default_encoding = 'utf-8'
if sys.getdefaultencoding() != default_encoding:
    reload(sys)
    sys.setdefaultencoding(default_encoding)

URL = "http://2014.new-thread.com/Newthread2014/?cat=5&paged="


# r = redis.StrictRedis(host='127.0.0.1', port=6379, db=0)

class News(object):
    def __init__(self, id=None, title=None, time=None, author=None, view=None, content=None, images={}):
        self.id = id
        self.title = title
        self.time = time
        self.author = author
        self.view = view
        self.content = content
        self.images = images

    def to_json(self):
        return json.dumps(self.__dict__)

    @classmethod
    def json_obj(cls, str):
        str = json.loads(str)
        return cls(**str)


class MinDaNews:
    removeImg = re.compile('<img.*?src="(.*?)".*?>')
    # 删除超链接标签
    removeAddr = re.compile('<a.*?>|</a>')
    # 把换行的标签换为\n
    replaceLine = re.compile('<tr>|<div>|</div>|</p>')
    # 将表格制表<td>替换为\t
    replaceTD = re.compile('<td>')
    # 把段落开头换为\n加空两格
    replacePara = re.compile('<p.*?>')
    # 将换行符或双换行符替换为\n
    replaceBR = re.compile('<br><br>|<br>')
    # 将其余标签剔除
    removeExtraTag = re.compile('<.*?>')

    # 生产者使用到的re
    center_div = re.compile('<div class="zhq-substance">(.*?)<div class="zhq-clear"', re.S)  # 截取中间部分
    news_link = re.compile('<a href="(.*?)" rel="bookmark">', re.S)
    total_size = re.compile('paged=(\d*)\' class=\'extend\'', re.S)

    # 消费者解析新闻用的到re
    title_re = re.compile('<h2>(.*?)</h2>')
    time_re = re.compile('news-single-time">(.*?)(</div>)?')
    author_re = re.compile('<span class="s-author">(.*?)</span>?', re.S)
    view_re = re.compile('<span class="s-view">(.*?)</span>?', re.S)
    content_re = re.compile('single-body">(.*?)<div class="line">', re.S)
    imgs_re = re.compile('<img.*?src="(.*?)" alt=')

    # 图片计数器,只能在单线程下使用
    # Redis中索引的key名称

    IMG_PATH = '/home/pingcai/newthread/news/%s/'

    producer_continue = True  # 消费者主动去终止生产者的标志

    def __init__(self):
        self.newsLinks = Queue.Queue()

    def produce(self):
        size = 0
        # 第一页
        try:
            u = URL + str(1)
            req = urllib2.Request(url=u)
            resp = urllib2.urlopen(req)
            content = resp.read().decode('utf-8')
            # todo 把页数改过来
            size = self.getSize(content)
            # size = 1
        except Exception as e:
            raise e
        self.getPostLists(1)
        for i in range(2, size):
            if self.producer_continue:
                self.getPostLists(i)
        print '生产者爬取完成！'

    def getPostLists(self, n):
        print u"生产者正在爬取第 ： %s  页" % n
        try:
            u = URL + str(n)
            req = urllib2.Request(url=u)
            resp = urllib2.urlopen(req)
            content = resp.read().decode('utf-8')
        except urllib2.HTTPError as e:
            raise e
        content = re.findall(self.center_div, content)[0]
        l = re.findall(self.news_link, content)
        for i in l:
            self.newsLinks.put(i)

    def getSize(self, content):
        n = re.findall(self.total_size, content)[0]
        return int(n)

    def consume(self):

        times = 20  # 每20条commit 一次

        con = MySQLdb.connect(host='localhost', port=3306, user='root', passwd='314115', db='db_newthread')
        con.set_character_set('utf8')
        cur = con.cursor()
        cur.execute('SET NAMES utf8;')
        cur.execute('SET CHARACTER SET utf8;')
        cur.execute('SET character_set_connection=utf8;')
        cur.execute('use db_newthread;')
        cur.execute('delete from teamnews;')
        while not self.newsLinks.empty():
            url = str(self.newsLinks.get())
            print "消费者正在爬取 ： %s" % url
            try:
                req = urllib2.Request(url=url)
                resp = urllib2.urlopen(req)
                content = resp.read().decode('utf-8')
                n = self.parseDetail(content)
                n.id = self.getPostId(url)
                self.saveInfo(n, cur)
            except Exception as q:
                print q
            else:
                if times == 20:
                    con.commit()
                    time = 0
        cur.close()
        con.commit()
        con.close()
        print '消费者爬取完成！'

    def getPostId(self, url):
        if url:
            return url.split('p=')[1]
        return None;

    def parseDetail(self, content):
        if content is None:
            return content

        n = News()
        content = content.replace('&nbsp;', ' ')  # 转义空格

        titl = re.findall(self.title_re, content)
        if titl is not None and len(titl) > 0:
            n.title = titl[0]

        # 根据文章标题设置id， md5
        # md = hashlib.md5()
        # md.update(n.title)
        # n.id = str(md.hexdigest())
        tim = re.findall(self.time_re, content)
        if tim is not None and len(tim) > 0:
            n.time = tim[0]

        autho = re.findall(self.author_re, content)
        if autho is not None and len(autho) > 0:
            n.author = autho[0].split(u"：")[1]

        vie = re.findall(self.view_re, content)
        if vie is not None and len(vie) > 0:
            n.view = vie[0].split(u"：")[1]

        conten = re.findall(self.content_re, content)

        if conten and len(conten) > 0:
            n.content = self.replace(conten[0])

        n.images = re.findall(MinDaNews.imgs_re, content)

        return n

    def saveInfo(self, n, cur):
        sql = "insert into teamnews(news_sid,news_title,news_contend,news_author) values(%s,%s,%s,%s)"
        cur.execute(sql, (n.id, n.title, n.content, n.author))
        for url in n.images:
            self.saveImage(url, n)

    # 保存图片
    def saveImage(self, u, n):
        try:
            if not n.id:
                n.id = u'123456'
            resp = urllib2.urlopen(u)
            img = resp.read()
            path = MinDaNews.IMG_PATH % n.id
            if not os.path.exists(path):
                os.makedirs(path)
            path = path + self.getImgName(u)
            f = open(path, 'wb')
            f.write(img)
            f.close()
        except Exception as e:
            print e

    def getImgName(self, url):
        if url:
            l = url.split('/')
            if len(l) > 0:
                return l[len(l) - 1]
        return None

    def replace(self, x):
        x = re.sub(MinDaNews.removeAddr, "", x)
        x = re.sub(MinDaNews.replaceLine, "\n", x)
        x = re.sub(self.replaceTD, "\t", x)
        x = re.sub(self.replacePara, "\n    ", x)
        x = re.sub(MinDaNews.replaceBR, "\n", x)
        x = re.sub(MinDaNews.removeExtraTag, "", x)
        return x.strip()

    def start(self):
        '''
        生产者消费者两个线程，一个获取链接，一个爬取新闻详情
        :return:
        '''
        try:
            producer = threading.Thread(target=self.produce)
            consumer = threading.Thread(target=self.consume)
            producer.start()
            time.sleep(2)
            consumer.start()
        except Exception as e:
            print e


m = MinDaNews()
m.start()
