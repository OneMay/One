$(document).ready(function() {
    var style = '<link rel="stylesheet" href="./static/css/page/public.css">';
    $('head').append(style);
    var head = '<header>' +
        '<div class="old_version">' +
        '<div>' +
        '<a>|</a>' +
        '<a href="https://www.scuec.edu.cn" target="_blank">民大官网</a>' +
        '<a>|</a>' +
        '<a href="http://www.new-thread.com" target="_blank">返回旧版</a>' +
        '<a>|</a>' +
        '<div class="search">' +
        '<input type="text" class="search_input">' +
        '<input type="button" class="search_btn">' +
        '</div>' +
        '</div>' +
        '</div>' +
        '<div class="logo">' +
        '<div class="log"><a href="#">新思路</a></div>' +
        '<ul class="headerNav">' +
        '<li><a href="index.html">首页</a><div></div></li>' +
        '<li><a href="team_introduction.html">团队简介</a><div ></div></li>' +
        '<li><a href="new.html">新闻中心</a><div></div></li>' +
        '<li><a href="research.html">荣誉成果</a><div></div></li>' +
        '<li><a href="teampic.html">团队风采</a><div></div></li>' +
        '<li><a href="#">团队招新</a><div></div></li>' +
        '<li><a href="contact.html">联系我们</a><div></div></li>' +
        '</ul>' +
        '</div>' +
        '</header>';
    $('body').prepend(head);
    var footer = '<footer>' +
        '<div id="footer">' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>团队简介</a></li>' +
        '<li><a href="team_introduction.html">团队介绍</a></li>' +
        '<li><a href="team_introduction_jg.html">组织架构</a></li>' +
        '<li><a href="Milepost.html">里程碑</a></li>' +
        '<li><a href="teacher.html">导师力量</a></li>' +
        '<li><a href="station.html">团队分站</a></li>' +
        '<li><a href="group.html">小组简介</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>新闻中心</a></li>' +
        '<li><a href="#">团队新闻</a></li>' +
        '<li><a href="#">例会动态</a></li>' +
        '<li><a href="#">文化活动</a></li>' +
        '<li><a href="#">项目快报</a></li>' +
        '<li><a href="#">团队分站</a></li>' +
        '<li><a href="#">交流合作</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>荣誉成果</a></li>' +
        '<li><a href="#">科研项目</a></li>' +
        '<li><a href="#">创新比赛</a></li>' +
        '<li><a href="#">软件专利</a></li>' +
        '<li><a href="#">优秀学生</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>团队风采</a></li>' +
        '<li><a href="teampic.html">团队照片</a></li>' +
        '<li><a href="teamvideo.html">团队视频</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>团队招新</a></li>' +
        '<li><a href="#">报名表</a></li>' +
        '<li><a href="#">招新流程</a></li>' +
        '<li><a href="#">小组简介</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="footer_nav">' +
        '<ul>' +
        '<li><a>联系我们</a></li>' +
        '<li><a href="contact.html">官方QQ</a></li>' +
        '<li><a href="contact.html">官方微博</a></li>' +
        '<li><a href="contact.html">负责人联系方式</a></li>' +
        '<li><a href="contact.html">其他联系方式</a></li>' +
        '</ul>' +
        '</div>' +
        '<div class="contact">' +
        '<img src="./static/image/qq.jpg" alt="">' +
        '<img src="./static/image/blog.jpg" alt="">' +
        '</div>' +
        '</div>' +
        '<div class="about">' +
        '<p>新思路</p>' +
        '<div>' +
        '<p>新思路—网酷科技Copyright@2014网酷科技有限公司</p>' +
        '<p>技术支持： 新思路团队-网酷科技</p>' +
        '</div>' +
        '<div class="about_our">' +
        '<a href="#">关于我们</a>|' +
        '<a href="#">网站地图</a>|' +
        '<a href="#">联系我们</a>|' +
        '<a href="#">加入我们</a>' +
        '</div>' +
        '</div>' +
        '<div class="chat">' +
        '<img src="./static/image/blog.png" alt="微博">' +
        '<a target="_blank" href="http://user.qzone.qq.com/3553633708?ptlang=2052"><img src="./static/image/qq.png" alt="QQ"></a>' +
        '</div>' +
        '</footer>';
    $('body').append(footer);

    $('.headerNav li a').each(function(index, el) {
        if ($('.positionl a')[1]) {
            if ($('.positionl a')[1].textContent == $('.headerNav li a')[index].textContent) {
                $('.headerNav li div')[index].className = 'active';
            }
        }
    });

})