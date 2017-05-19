/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 100122
Source Host           : localhost:3306
Source Database       : db_newthread

Target Server Type    : MariaDB
Target Server Version : 100122
File Encoding         : 65001

Date: 2017-05-13 18:29:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aboutourteam
-- ----------------------------
DROP TABLE IF EXISTS `aboutourteam`;
CREATE TABLE `aboutourteam` (
  `about_sid` int(11) NOT NULL AUTO_INCREMENT,
  `about_introduce` text,
  `about_picture` varchar(100) DEFAULT NULL,
  `about_qq` varchar(50) DEFAULT NULL,
  `about_weibo` varchar(50) DEFAULT NULL,
  `about_tel` varchar(50) DEFAULT NULL,
  `about_mail` varchar(50) DEFAULT NULL,
  `about_master` varchar(50) DEFAULT NULL,
  `about_wechat` varchar(50) DEFAULT NULL,
  `about_facebook` varchar(50) DEFAULT NULL,
  `about_twitter` varchar(50) DEFAULT NULL,
  `about_timesstamp` int(11) DEFAULT NULL,
  `about_note` text,
  PRIMARY KEY (`about_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutourteam
-- ----------------------------
INSERT INTO `aboutourteam` VALUES ('3', '这是新思路的介绍', 'https://pingcai.me/img/docker.png', '110', 'weibo账号', '电话110', '212343@qq.com', '帖军', '微信都搞出来了，可怕', '脸书', 'twitter', '23423', '3333333333333333333333333');
INSERT INTO `aboutourteam` VALUES ('8', null, 'https://pingcai.me/img/docker.png', '110', 'weibo账号', '11111111111111111111111111111111111111111111', '212343@qq.com', '帖军', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '脸书', 'twitter', '23423', '3333333333333333333333333');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_time` datetime NOT NULL,
  `a_title` varchar(96) NOT NULL,
  `a_path` varchar(255) NOT NULL,
  `a_alias` varchar(128) NOT NULL,
  `a_palyers` varchar(128) NOT NULL,
  `a_level` varchar(16) DEFAULT NULL,
  `a_clickrate` int(11) NOT NULL,
  `a_context` text,
  `a_evaluate` text,
  `a_background` text,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('3', '2015-12-01 16:30:30', '007：幽灵党Spectre', '', '007：鬼影帝国(港)007：恶魔四伏(台)007：大破幽灵危机007系列24：大破幽灵危机邦德24', '丹尼尔·克雷;格克里斯托弗·沃尔兹;蕾雅·赛杜;本·卫肖;娜奥米·哈里;斯戴夫·巴蒂斯塔;', '6.2', '2', null, null, null);
INSERT INTO `article` VALUES ('4', '2015-12-01 16:31:29', '精灵旅社2', '', '尖叫旅社2(台)鬼灵精怪大酒店2(港)精灵旅店2', '亚当·桑德;勒安迪·萨姆;伯格赛琳娜·戈麦斯;凯文·詹姆斯;大卫·斯佩', '7.6', '3', null, null, null);
INSERT INTO `article` VALUES ('5', '2015-12-01 16:31:33', '僵尸王爷', '', 'Hopping Vampire VS Zombie', '许京川;袁媛;张玉轩;闻超;陈婧;杨可;彭静', '5.6', '17', null, null, null);
INSERT INTO `article` VALUES ('6', '2015-12-01 16:31:38', '暗月升起Dark Moon Rising', '', '黑月升起', 'Stasi Esper;埃里克·罗伯茨;Khu', '8.0', '1', null, null, null);
INSERT INTO `article` VALUES ('7', '2015-12-01 16:31:41', '完美丈夫/The Perfect Husband.2014', '', 'The Perfect Husband.2014', 'Gabriella WrightBret Roberts', '5.6', '2', null, null, null);
INSERT INTO `article` VALUES ('8', '2015-12-01 16:31:43', '密西西比One Mississippi', '', '密西西比One Mississippi', '诺亚·哈普斯;特约翰·罗斯曼;凯西·威尔逊;Beth BurvantTig ;Notaro', '6.8', '6', null, null, null);
INSERT INTO `article` VALUES ('9', '2015-12-01 16:31:46', '没女神探/沒女神探.2015', '', '没女神探,沒女神探,Love Detective', '王菀;周柏豪;陈嘉宝;庄思敏;连诗雅;李静仪;林盛斌;郑敬基;郑欣宜;蒋志光', '4.8', '40', null, null, null);
INSERT INTO `article` VALUES ('10', '2015-12-01 16:31:49', '垫底辣妹/ビリギャル.2015', '', '奇迹补习班(港)奇迹补习社(港)垫底女生Biri GirlFlying Colors', '有村架纯;伊藤淳史;吉田羊田;中哲司;野村周平;安田;显阿部;菜渚美;中村靖日;矢岛健一;峰村理惠', '5.8', '13', null, null, null);
INSERT INTO `article` VALUES ('11', '2015-12-01 16:31:52', '天堂90分钟/90 Minutes in Heaven.2015', '', '在天堂90分钟(台)去过天堂90分钟', '海登·克里斯;滕森凯;特·波茨;沃斯哈德森·米克;鲍比·巴特森;伊丽莎白·亨特;大卫·克莱德', '6.2', '17', null, null, null);
INSERT INTO `article` VALUES ('12', '2015-12-01 16:31:56', '火星救援 The Martian', '', '火星任务(港) / 绝地救援(台) / 火星人', ' 马特·达蒙; 杰西卡·查斯坦 ;克里斯汀·韦格 ; 杰夫·丹尼尔斯 ; 迈克尔·佩纳', '8.5', '30', '人类实现了首次在火星上登陆，美国宇航员马克·沃特尼（马特·达蒙饰），他与其他五位宇航员遭遇巨型风暴，外太空之旅只能提前结束，他因为被误认为无法生还而被留在火星，成了太空鲁宾逊。清醒后的沃特尼发现自己远离地球家园，食物只够一个月的供应。幸好他天性幽默乐观，而且是个植物学专家，决定靠自己的力量生存下去，等到下次火星任务的到来，虽然这一等就要四年。沃特尼精心计算如何最大限度地利用他在这颗干旱星球上的时间，开始利用自制的肥料种植土豆，对手头的所有材料物尽其用。而在地球上，公众哀悼马克的悲剧死亡后，一位眼尖的NASA技术员在监看时注意到火星表面的运动迹象，怀疑可能是马克还活着。双方重新取得联系后，火星救援任务由此启动......', null, null);
INSERT INTO `article` VALUES ('13', '2015-12-17 11:30:17', '纵横四海', '', 'Once A Thief', '周润发;张国荣;钟楚红;曾江', '9.2', '55', '阿海（周润发饰）、阿占（张国荣饰）和红豆（钟楚红饰）三人是黑社会头子曾江收养的孤儿，长大后成\r\n了帮他赚钱的艺术品大盗。法国巴黎博物馆内，名画《赫林之女仆》被人盗走。与此同时，阿海、阿占和红豆三人以敏捷身手盗得另一幅名画，在与法国大哥交易时得知名画《赫林之女仆》在妖气重重的古堡内，他们在曾江安排下成功地盗取此画之后，反被集团原凶曾江与法国大哥合谋设下陷阱，派人追杀灭口。阿海驾车与杀手快艇相撞，三人失散。数年后，他们在香港重聚，阿海“瘫痪”，阿占和红豆已经结婚了。曾江又逼他们去偷另一幅画......', '《纵横四海》于1991年上映时叫好又叫座，是神偷类型的经典电影。《纵横四海》是吴宇森枪战片中最浪漫的一部作品。影片天马行空，华光溢彩，不仅画面具有强烈的观赏性，故事述说更具有丰富的层次感。除了精彩的枪战和对峙场面外，对男女感情的描写也显得很细腻。周润发、张国荣、钟楚红的明星魅力在片中挥洒自如，让人过目难忘 。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在香港商业电影中，《纵横四海》堪称是一部品质优异的示范作。导演吴宇森为影片在枪战主旋律中注入了喜剧和浪漫的元素。《纵横四海》风格多样却又有效地掺揉，拍手称赞的街头枪战、紧张不堪地对峙场面、目不转移地激情之舞、细腻动人的感情描写、让人会心一笑地精彩对白都是这部电影的亮点。 做为吴宇森的又一招牌作品，影片显得从容与潇洒。吴宇森在赋予三个主要人物以火爆的动作场面和不俗的身手外，还给予他们细腻的感情世界。一女两男的关系，从一开始就注定不会永远稳固。由此产生的友情破裂显得非常能让人理解。《纵横四海》所表达的是流动的美，无论是偷宝窃画，还是周润发轮椅上的华尔兹，抑或所有对打场面，都充满了运动的美感。而这恰恰也是吴宇森的优势，人物的运动，剪切的运动，镜头的运动。这些艺术语言所营造的美感，给观众感观带来的愉悦远远优于五个江湖大贼爱恨情仇的情节。（新浪评）', '拍摄此片前吴宇森导演正是对枪战片心灰意冷的时候，他刚执导完的《喋血双雄》遭遇票房和影评的双向打击。也正是这个时候，周润发找了张国荣一起来说服吴执导此片，不仅许诺此片非吴不演，而且只要吴执导此片，薪酬待遇等等一切都可以好商量，更联手请来了他们的好搭档钟楚红。');
INSERT INTO `article` VALUES ('14', '2015-12-19 19:40:01', '寻龙诀', '', '乌尔善版鬼吹灯 / 鬼吹灯之寻龙诀', ' 陈坤 / 黄渤 / 舒淇 / 杨颖 / 夏雨', '8.0', '11', '上世纪80年代末，胡八一（陈坤 饰）、王凯旋（黄渤 饰）与Shirley杨（舒淇 饰）在美国打算金盆洗手，本来叱咤风云的摸金校尉沦为街头小贩被移民局追得满街跑。就在此时，意外发现20年前死在草原上的初恋对象丁思甜（Angelababy 饰）可能还活着，胡八一、王凯旋、Shirley杨决定再入草原千年古墓……', '特效看出来是诚意十足的做了，钱能花也绝对花。而对于剧情改编也很合理，人物选角和塑造真心很赞很还原了。另外一点就是他们真的在讲！盗！墓！的故事！不是什么妖塔标题党的外星人。国产的奇幻电影不缺乏批评，但是就是缺乏鼓励以及帮助。五星鼓励，这才是正宗摸金范。', '筹备该片的两年中，乌尔善为此学习了“倒斗”，去了很多墓穴\r\n和博物馆，并且在专家的带领下学习风水学、了解极限运动。');
INSERT INTO `article` VALUES ('15', '2015-12-19 19:41:27', '万万没想到', '', '万万没想到：西游篇 / 万万没想到电影版 ', '易小星 / 刘循子墨 / 柯达 / 胡舒欣 / 王伟杰\r\n主演: 白客 / 杨子姗', '6.5', '4', '屌丝小妖王大锤（白客 饰），他生来便与常人不同，两耳尖尖，又有些小法力，总是自诩本地妖王。但让他万万没想到的是，在遇到唐僧师徒四人组后，他的命运发生了逆转；而对于唐僧师徒四人组来说，遇见王大锤也是无比郁闷的第八十二难。双方因此上演了一出相爱相杀，令人捧腹的奇幻冒险。', '特别感人充满泪点，今年看过最好的片。不如判定人间还是有希望，当代中国式侠义真善美无法谈正事来表现，mty自带悲剧BGM选角rnb。电影工业碰巧一群人开心做自己喜欢的事效果就这种吧！祝贺商业化成功', '易小星表示，西游篇在万万系列网剧中是人气最高、互动最好的，因此在无数的选题中顺应粉丝挑中了这个题材；不过此次做的是反转西游，与传统的西游题材不同');
INSERT INTO `article` VALUES ('19', '2015-12-19 19:41:39', '肖申克的救赎', '', '月黑高飞(港) / 刺激1995(台) / 地狱诺言 ', ' 蒂姆·罗宾斯 / 摩根·弗里曼 / 鲍勃·冈顿 / 威廉姆·赛德勒 ', '9.6', '8', '20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步…… ', 'Andy Dufresne，一个永垂电影史册的名字。 1 关于《The Shawshank Redemption》的评论，太多，该说的差不多都已说了千万遍。对于这样一个热门的话题，再想要抒发一些个人的喜爱之情，不免有拾人牙慧之嫌。为了避免这样没新意的事情发生，许多单词我就不再提了，譬如“希望”，譬如“自由”。当然，这些都是很好很好的，也是可以第一时间从电影里感受到的。', 'Tommy Williams（因为偷电视而被判两年的小伙子）这一角色本来是给布拉德·彼特准备的，片中扮演Tommy的Gil Bellows，曾在1997年的当红电视剧集《Ally McBeal》（港译《艾丽的异想世界》台译《甜心俏佳人》）扮演了一个类似角色William Thomas。');
INSERT INTO `article` VALUES ('21', '2015-12-19 19:41:45', '这个杀手不太冷', '', '杀手莱昂 / 终极追杀令(台) / 杀手里昂', '让·雷诺 / 娜塔莉·波特曼 / 加里·奥德曼', '9.4', '2', '里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。 \r\n　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免…… ', '叙事节奏清晰流畅，毫不拖泥带水；Léon、Stansfield、Mathilda，几个主要人物个性鲜明； 加上如同MTV般快速切换的画面，影片从头到尾紧抓观众的眼球，非常难得。更因为此片，让全世界认识到了娜塔莉·波特曼。', '起初选角时娜塔丽·波特曼由于年龄太小而落选，但她没有放\r\n剧照\r\n剧照\r\n弃，再次回到吕克·贝松面前来了一段精彩绝伦的表演，使得吕克·贝松不得不把这个角色给她。这也是她出演电影的处女作。');
INSERT INTO `article` VALUES ('22', '2015-12-19 20:01:48', '阿甘正传 Forrest Gump', '', '福雷斯特·冈普', ' 汤姆·汉克斯 / 罗宾·怀特 / 加里·西尼斯', '9.4', '7', '阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。 \r\n　　阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。 \r\n　　阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。 \r\n　　有一天，阿甘收到珍妮的信，他们终于又要见面……', '人要走过多少路 　　才配称大丈夫 　　白鸽要救过多少种子 　　才得在沙滩上栖息 　　炮弹要发射过多少次 　　才永远地停火 　　朋友 答案随风飘去...... 　 每当想起珍妮赤身裸体的弹着吉它, 面对酒吧阴晦肆猊的男人幽幽的弹唱这首动人的曲子, 脑海中便浮现出阿甘的身影:　憨厚的表情, 率直的眼神，俊郎的身躯，以及他对珍妮大海般的款款情深． ......', '拍摄时Gary Sinise（丹中尉）的腿是用蓝布包着的，这样在后期制作时可以用电脑去除。');
INSERT INTO `article` VALUES ('23', '2015-12-19 20:01:52', '三傻大闹宝莱坞 3 Idiots', '', '三个傻瓜 / 作死不离3兄弟(港) / 三个白痴 ', ' 阿米尔·汗 / 卡琳娜·卡普尔 / 马达范 / 沙尔曼·乔希', '9.1', '8', '本片根据印度畅销书作家奇坦·巴哈特（Chetan Bhagat）的处女作小说《五点人》（Five Point Someone）改编而成。法兰（马德哈万 R Madhavan 饰）、拉杜（沙曼·乔希 Sharman Joshi 饰）与兰乔（阿米尔·汗 Aamir Khan 饰）是皇家工程学院的学生，三人共居一室，结为好友。在以严格著称的学院里，兰乔是个非常与众不同的学生，他不死记硬背，甚至还公然顶撞校长“病毒”（波曼·伊拉尼 Boman Irani 饰），质疑他的教学方法。他不仅鼓动法兰与拉杜去勇敢追寻理想，还劝说校长的二女儿碧雅（卡琳娜·卡普 Kareena Kapoor 饰）离开满眼铜臭的未婚夫。兰乔的特立独行引起了模范学生“消音器”（奥米·维嘉 Omi Vaidya 饰）的不满，他约定十年后再与兰乔一决高下，看哪种生活方式更能取得成功。 ', '“他的人和名字一样不同寻常” “一出生就有人告诉我们，生活是场赛跑，不跑快点就会惨遭蹂躏，哪怕是出生，我们都得和3亿个精子赛跑” “一切顺利，一切顺利……” “盐水具有极强的导电性，初二物理知识，我们都学过，只有他会应用。” “噪鹃从来不自己筑巢，他只在别人的巢里下蛋，要孵蛋的时候他们会怎样？他们会把其他的诞从巢里挤出去，竞争结束了，他们的生命从谋杀......', '影片中的帝国工业学院是现印度工业学院的老名字,影片上映之后，打破了印度电影票房的诸多记录。也是在海外第二卖座的印度片。');
INSERT INTO `article` VALUES ('24', '2015-12-19 20:01:54', '放牛班的春天', '', '歌声伴我心(港) / 唱诗班男孩 / The Chorus', '杰拉尔·朱诺 / 弗朗西斯·贝尔兰德 / 凯德·麦拉德', '9.2', '3', '1949年的法国乡村，音乐家克莱门特（杰勒德•尊诺 饰）到了一间外号叫“塘低”的男子寄宿学校当助理教师。学校里的学生大部分都是难缠的问题儿童，体罚在这里司空见惯，学校的校长（弗朗西斯•贝尔兰德 饰）只顾自己的前途，残暴高压。 \r\n　　性格沉静的克莱门特尝试用自己的方法改善这种状况，他重新创作音乐作品，组织合唱团，决定用音乐的方法来打开学生们封闭的心灵。 \r\n　　然而，事情并不顺利，克莱门特发现学生皮埃尔•莫安琦（尚•巴堤•莫里耶 饰）拥有非同一般的音乐天赋，但是单亲家庭长大的他，性格异常敏感孤僻，怎样释放皮埃尔的音乐才能，让克莱门特头痛不已；同时，他与皮埃尔母亲的感情也渐渐微妙起来。', '每天，都会有颗傻乎乎的脑袋爬在铁门上向外张望，等待星期六、等待他已经战死的父亲、等待那个能带他离开的人。 机缘巧合，看过好几次《放牛班的春天》，每每为它感动。和朋友探讨，很多人喜欢马修，喜欢他把春天带给了这个被美好遗忘的角落，喜欢他用音乐还原了孩子纯洁的心灵；很多人喜欢皮埃尔，喜欢他的天使面孔，喜欢他如天籁般的声音。', '饰演马修老师的杰拉尔·朱诺同时担任本片的制作人。他为了出钱投资本片抵押了在巴黎的公寓。最终通过卖座他拿到了500万欧元的报酬，这让他成为2004年法国收入最高的演员。');
INSERT INTO `article` VALUES ('25', '2015-12-19 20:01:57', '美丽人生', '', '一个快乐的传说(港) / Life Is Beautiful', ' 罗伯托·贝尼尼 / 尼可莱塔·布拉斯基 / 乔治·坎塔里尼', '9.5', '6', '犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 \r\n　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！” \r\n　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？', '生活是美丽的，无论它怎样不尽如人意。你会在不经意的时候偶遇可爱的女孩儿，你要对她说：早上好，我的公主！然后脱帽致意，向她展示你的无与伦比的才能。 对任何事情充满巨大的热情，把任何事情看作天赐。对任何人报以微笑，对欣赏你的人充满敬意。公主会爱上你的，因为你是如此热情洋溢，如此幽默风趣。你让她永远充满无限的惊喜。', '在片中扮演罗伯托·贝尼尼妻子的尼可莱塔·布拉斯基在生活中也是他的妻子。');

-- ----------------------------
-- Table structure for article_image
-- ----------------------------
DROP TABLE IF EXISTS `article_image`;
CREATE TABLE `article_image` (
  `a_id` int(11) NOT NULL,
  `a_thumb_path` varchar(128) DEFAULT NULL,
  `a_small_poster_path` varchar(128) DEFAULT NULL,
  `a_poster_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  CONSTRAINT `a_image_FK` FOREIGN KEY (`a_id`) REFERENCES `article` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_image
-- ----------------------------
INSERT INTO `article_image` VALUES ('3', 'images/thumb/Spectre.jpg', 'images/pic.jpg', '');
INSERT INTO `article_image` VALUES ('4', 'images/thumb/精灵旅社2.jpg', 'images/pic1.jpg', null);
INSERT INTO `article_image` VALUES ('5', 'images/thumb/僵尸王爷.jpg', 'images/pic2.jpg', null);
INSERT INTO `article_image` VALUES ('6', 'images/thumb/Dark Moon Rising.jpg', 'images/pic3.jpg', null);
INSERT INTO `article_image` VALUES ('7', 'images/thumb/完美丈夫.jpg', 'images/pic.jpg', null);
INSERT INTO `article_image` VALUES ('8', 'images/thumb/One Mississippi.jpg', 'images/pic5.jpg', null);
INSERT INTO `article_image` VALUES ('9', 'images/thumb/Love Detective.jpg', 'images/pic5.jpg', null);
INSERT INTO `article_image` VALUES ('10', 'images/thumb/ビリギャル.jpg', 'images/smallposter/ビリギャル.jpg', null);
INSERT INTO `article_image` VALUES ('11', 'images/thumb/90 Minutes in Heaven.jpg', 'images/smallposter/90 Minutes in Heaven.jpg', null);
INSERT INTO `article_image` VALUES ('12', 'images/thumb/Dark Moon Rising.jpg', 'images/smallposter/Dark Moon Rising.jpg', 'images/poster/火星救援.jpg');
INSERT INTO `article_image` VALUES ('13', 'images/thumb/纵横四海.jpg', 'images/smallposter/纵横四海.jpg', 'images/poster/纵横四海.jpg');
INSERT INTO `article_image` VALUES ('14', 'images/thumb/寻龙诀.jpg', 'images/smallposter/寻龙诀.jpg', 'images/poster/寻龙诀.jpg');
INSERT INTO `article_image` VALUES ('15', 'images/thumb/万万没想到.jpg', 'images/smallposter/万万没想到.jpg', 'images/poster/万万没想到.jpg');
INSERT INTO `article_image` VALUES ('19', 'images/thumb/肖申克的救赎.jpg', 'images/smallposter/肖申克的救赎.jpg', 'images/poster/肖申克的救赎.jpg');
INSERT INTO `article_image` VALUES ('21', 'images/thumb/这个杀手不太冷.jpg', 'images/smallposter/这个杀手不太冷.jpg', 'images/poster/这个杀手不太冷.jpg');
INSERT INTO `article_image` VALUES ('22', 'images/thumb/阿甘正传 Forrest Gump.jpg', 'images/smallposter/阿甘正传 Forrest Gump.jpg', 'images/poster/阿甘正传 Forrest Gump.jpg');
INSERT INTO `article_image` VALUES ('23', 'images/thumb/三傻大闹宝莱坞 3 Idiots.jpg', 'images/smallposter/三傻大闹宝莱坞 3 Idiots.jpg', 'images/poster/三傻大闹宝莱坞 3 Idiots.jpg');
INSERT INTO `article_image` VALUES ('24', 'images/thumb/放牛班的春天.jpg', 'images/smallposter/放牛班的春天.jpg', 'images/poster/放牛班的春天.jpg');
INSERT INTO `article_image` VALUES ('25', 'images/thumb/美丽人生.jpg', 'images/smallposter/美丽人生.jpg', 'images/poster/美丽人生.jpg');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `img_sid` int(11) NOT NULL AUTO_INCREMENT,
  `img_type` int(11) NOT NULL,
  `img_origin_name` varchar(255) DEFAULT NULL,
  `img_name` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) NOT NULL,
  `img_comment` varchar(255) DEFAULT NULL,
  `img_upload_time` datetime DEFAULT NULL,
  `img_timestamp` bigint(20) NOT NULL,
  `img_note` text,
  `user_account` varchar(50) NOT NULL,
  PRIMARY KEY (`img_sid`),
  KEY `user_account` (`user_account`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_account`) REFERENCES `user` (`user_account`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文件总表';

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('5', '2', 'P61209-132733.jpg', '2f8e6b3e-fc2c-423e-96ae-3f55a586557e.jpg', 'D://download/2f8e6b3e-fc2c-423e-96ae-3f55a586557e.jpg', '民委下发文件', '2016-12-09 23:48:16', '1481298496', '1', 'admin');
INSERT INTO `images` VALUES ('6', '2', 'P61209-132733.jpg', '2d660328-ad02-4d82-b6a3-83807f99567d.jpg', 'D://download/2d660328-ad02-4d82-b6a3-83807f99567d.jpg', '民委下发文件', '2016-12-09 23:50:04', '1481298603', '3', 'admin');
INSERT INTO `images` VALUES ('7', '2', 'e.png', '2604564f-b3f9-4654-b46f-2bb3d428fc11.png', '/var/newthread/file/news/2604564f-b3f9-4654-b46f-2bb3d428fc11.png', null, null, '1494060365050', '2', 'admin');
INSERT INTO `images` VALUES ('8', '2', 'e.png', 'd0953798-f506-4f1c-aac8-ee3d47de1fbd.png', '/var/newthread/file/news/d0953798-f506-4f1c-aac8-ee3d47de1fbd.png', null, null, '1494060636677', '2', 'admin');
INSERT INTO `images` VALUES ('9', '2', '成绩单.png', '78854eb0-38aa-44ef-8b9b-9840dca51e27.png', '/var/newthread/file/news/78854eb0-38aa-44ef-8b9b-9840dca51e27.png', null, null, '1494065925445', '4', 'admin');
INSERT INTO `images` VALUES ('10', '2', '成绩单.png', '11bc4b0d-dc6f-4f8f-bd07-e48e58a24d0e.png', '/var/newthread/file/news/11bc4b0d-dc6f-4f8f-bd07-e48e58a24d0e.png', null, null, '1494065996523', '1', 'admin');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `job_sid` int(11) NOT NULL AUTO_INCREMENT,
  `job_number` varchar(50) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `job_note` text,
  PRIMARY KEY (`job_sid`),
  UNIQUE KEY `job_number` (`job_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '1', '负责人', null);

-- ----------------------------
-- Table structure for power
-- ----------------------------
DROP TABLE IF EXISTS `power`;
CREATE TABLE `power` (
  `power_sid` int(11) NOT NULL AUTO_INCREMENT,
  `power_number` varchar(50) NOT NULL,
  `power_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`power_number`),
  KEY `power_sid` (`power_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of power
-- ----------------------------
INSERT INTO `power` VALUES ('1', '1', 'delete');
INSERT INTO `power` VALUES ('2', '2', 'upload');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_sid` int(11) NOT NULL AUTO_INCREMENT,
  `role_number` varchar(50) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_number`),
  KEY `role_sid` (`role_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1', 'admin');
INSERT INTO `role` VALUES ('3', '2', 'editor');

-- ----------------------------
-- Table structure for role_power
-- ----------------------------
DROP TABLE IF EXISTS `role_power`;
CREATE TABLE `role_power` (
  `role_number` varchar(50) NOT NULL,
  `power_number` varchar(50) NOT NULL,
  PRIMARY KEY (`role_number`,`power_number`),
  KEY `FK_Give2` (`power_number`),
  CONSTRAINT `FK_Give` FOREIGN KEY (`role_number`) REFERENCES `role` (`role_number`),
  CONSTRAINT `FK_Give2` FOREIGN KEY (`power_number`) REFERENCES `power` (`power_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_power
-- ----------------------------
INSERT INTO `role_power` VALUES ('1', '1');
INSERT INTO `role_power` VALUES ('1', '2');

-- ----------------------------
-- Table structure for teamdevelopment
-- ----------------------------
DROP TABLE IF EXISTS `teamdevelopment`;
CREATE TABLE `teamdevelopment` (
  `develovpment_sid` int(11) NOT NULL AUTO_INCREMENT,
  `development_content` text,
  `development_picture` varchar(100) DEFAULT NULL,
  `development_timesstamp` int(11) DEFAULT NULL,
  `development_note` text,
  PRIMARY KEY (`develovpment_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teamdevelopment
-- ----------------------------
INSERT INTO `teamdevelopment` VALUES ('1', '新思路团队（NewThread Team）是在2009年成立的，成立之初是由三个技术小白学长在帖老师的指导下， 经过对前端自学的一点点摸索，就此 ，自我学习、自我摸索也成为了新思路团队的一个核心理念。 在之后的数年时间内，团队成员们自我发掘兴趣志向，坚持自主钻研，相互协作，逐步完善成现有的八个技术小组， 包括CPP，J2EE，iOS，DB，.NET，Feweb，Android，搜索引擎在内的八个小组，为了团队更好的运作，之后逐步建立了企划、宣传、财务、设计四个行政小组， 前后有六位导师全力指导，导师力量有：帖军老师（指导Android组、研究生组，导师队长）、徐科老师（指导搜索引擎组）、吴经龙老师（指导实验室日常）、孙翀老师（指导iOS组、DB组）、 徐胜舟老师（指导CPP组、JavaEE组）、尹帆老师（指导FeWeb组、.NET组），至此新思路团队架构大致构成，并以公司化的模式经营。新思路团队更是在2014年夏受邀请到北京人民大会堂授勋“小平科技团队”的荣称。 新思路团队的征途是星辰大海，在努力实现每一位新思路人的梦想的同时，更希望新一代的你们在此挥洒你们的激情、活力，运用你们的智慧、毅力、创造力，为你们自己、为你们的学弟学妹们、为新思路团队创造更多的奇迹！ 让每一位成员都以新思路团队为荣，让每一位学生都以新思路团队为向往，最终让新思路团队的名称响彻神州IT大地！ ', 'https://pingcai.me/img/docker.png', null, 'Careful studying , Cooperative , Innovative , Serviceability ');
INSERT INTO `teamdevelopment` VALUES ('4', '新思路团队（NewThread Team）是在2009年成立的，成立之初是由三个技术小白学长在帖老师的指导下， 经过对前端自学的一点点摸索，就此 ，自我学习、自我摸索也成为了新思路团队的一个核心理念。 在之后的数年时间内，团队成员们自我发掘兴趣志向，坚持自主钻研，相互协作，逐步完善成现有的八个技术小组， 包括CPP，J2EE，iOS，DB，.NET，Feweb，Android，搜索引擎在内的八个小组，为了团队更好的运作，之后逐步建立了企划、宣传、财务、设计四个行政小组， 前后有六位导师全力指导，导师力量有：帖军老师（指导Android组、研究生组，导师队长）、徐科老师（指导搜索引擎组）、吴经龙老师（指导实验室日常）、孙翀老师（指导iOS组、DB组）、 徐胜舟老师（指导CPP组、JavaEE组）、尹帆老师（指导FeWeb组、.NET组），至此新思路团队架构大致构成，并以公司化的模式经营。新思路团队更是在2014年夏受邀请到北京人民大会堂授勋“小平科技团队”的荣称。 新思路团队的征途是星辰大海，在努力实现每一位新思路人的梦想的同时，更希望新一代的你们在此挥洒你们的激情、活力，运用你们的智慧、毅力、创造力，为你们自己、为你们的学弟学妹们、为新思路团队创造更多的奇迹！ 让每一位成员都以新思路团队为荣，让每一位学生都以新思路团队为向往，最终让新思路团队的名称响彻神州IT大地！', 'https://pingcai.me/img/docker.png', null, 'Careful studying , Cooperative , Innovative , Serviceability');

-- ----------------------------
-- Table structure for teamhonor
-- ----------------------------
DROP TABLE IF EXISTS `teamhonor`;
CREATE TABLE `teamhonor` (
  `honor_sid` int(11) NOT NULL AUTO_INCREMENT,
  `honor_title` varchar(50) DEFAULT NULL,
  `honor_introduce` text,
  `honor_picture` varchar(100) DEFAULT NULL,
  `honor_time` datetime DEFAULT NULL,
  `honor_type` varchar(50) DEFAULT NULL,
  `honor_timesstamp` int(11) DEFAULT NULL,
  `honor_note` text,
  PRIMARY KEY (`honor_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teamhonor
-- ----------------------------
INSERT INTO `teamhonor` VALUES ('605', '标题1', '今天获了个奖！！！1', null, null, '3', null, null);
INSERT INTO `teamhonor` VALUES ('606', '标题2', '今天获了个奖！！！2', null, null, '3', null, null);
INSERT INTO `teamhonor` VALUES ('607', '标题3', '今天获了个奖！！！3', null, null, '3', null, null);
INSERT INTO `teamhonor` VALUES ('608', '标题4', '今天获了个奖！！！4', null, null, '3', null, null);
INSERT INTO `teamhonor` VALUES ('609', '标题5', '今天获了个奖！！！5', null, null, '3', null, null);

-- ----------------------------
-- Table structure for teammarkup
-- ----------------------------
DROP TABLE IF EXISTS `teammarkup`;
CREATE TABLE `teammarkup` (
  `markup_sid` int(11) NOT NULL AUTO_INCREMENT,
  `markup_name` varchar(50) DEFAULT NULL,
  `markup_content` text,
  `markup_picture` varchar(100) DEFAULT NULL,
  `markup_job` varchar(50) NOT NULL,
  `markup_academy` varchar(50) DEFAULT NULL,
  `markup_major` varchar(50) DEFAULT NULL,
  `markup_grade` varchar(50) DEFAULT NULL,
  `markup_group` varchar(50) DEFAULT NULL,
  `markup_timestamp` int(11) DEFAULT NULL,
  `markup_note` text,
  PRIMARY KEY (`markup_sid`),
  KEY `markup_job` (`markup_job`),
  CONSTRAINT `teammarkup_ibfk_1` FOREIGN KEY (`markup_job`) REFERENCES `job` (`job_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teammarkup
-- ----------------------------
INSERT INTO `teammarkup` VALUES ('1', null, '好好学习', 'https://pingcai.me/img/docker.png', '1', null, null, '2014', 'javaEE', null, null);
INSERT INTO `teammarkup` VALUES ('2', null, '好好学习', 'https://pingcai.me/img/docker.png', '1', '计科院', null, '2014', 'Android', '1', null);
INSERT INTO `teammarkup` VALUES ('3', '江泽民 ', '好好学习', 'https://pingcai.me/img/docker.png', '1', null, null, '2014', 'javaEE', null, null);

-- ----------------------------
-- Table structure for teammien
-- ----------------------------
DROP TABLE IF EXISTS `teammien`;
CREATE TABLE `teammien` (
  `mien_sid` int(11) NOT NULL AUTO_INCREMENT,
  `mien_title` varchar(50) DEFAULT NULL,
  `mien_type` int(1) DEFAULT NULL,
  `mien_introduce` text,
  `mien_time` date DEFAULT NULL,
  `mien_timesstamp` int(11) DEFAULT NULL,
  `mien_note` text,
  PRIMARY KEY (`mien_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teammien
-- ----------------------------
INSERT INTO `teammien` VALUES ('1', '2015欢送会', '1', '这是学长学姐们的欢送会', '2017-05-09', null, null);
INSERT INTO `teammien` VALUES ('2', '2014', '1', '欢送会', '2017-05-09', null, null);

-- ----------------------------
-- Table structure for teamnews
-- ----------------------------
DROP TABLE IF EXISTS `teamnews`;
CREATE TABLE `teamnews` (
  `news_sid` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(50) DEFAULT NULL,
  `news_contend` text,
  `news_picture` varchar(100) DEFAULT NULL,
  `news_type` varchar(50) DEFAULT NULL,
  `news_author` varchar(50) DEFAULT NULL,
  `news_readers` int(11) DEFAULT NULL,
  `news_time` datetime DEFAULT NULL,
  `news_timesstamp` int(11) DEFAULT NULL,
  `news_note` text,
  PRIMARY KEY (`news_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=1060 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teamnews
-- ----------------------------
INSERT INTO `teamnews` VALUES ('150', '微软创新杯民大赛区颁奖晚会邀您共赏！', '用心发现，潜能无限！\n用双眼见证他们的创意，用心灵感受他们的技术热忱。\n\n\n    3月26日晚7点润良报告厅与您不见不散！\n活动现场还有精美奖品等你拿！快带上你的小伙伴一起过来吧！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('204', '珍珠网', '', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('207', '2014年学期末福利大派送！', '快到学期末了，一个学期又快过去，实验室为了犒劳New Tread团队成员这个学期所做的工作，在2014年6月13日中午的例会上，给每个组的组长发放相应的活动经费，每组每人25元。\n\n\n    另外，我们还对每个组这学期对新生的培训进度进行了评比，评比结果为C++、C#组并列第一名，Web前端组第三名，分别给以200元、200元和100元的奖励。\n\n\n    最后，祝大家考试顺利！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('210', '人事信息管理系统', '', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('216', '图书馆管理系统', '', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('220', '智慧U盘', '', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('221', '关于免费使用微软DreamSpark正版软件的通知', '根据计科学院和微软公司签订的协议，自2013年12月1日起，计科学院的广大教师和正式录取的在校学生均可以免费使用微软DreamSpark高级订阅里包含的所有微软正版软件。请在使用中严格遵守DreamSpark Premium的相关规定，包括但不限于DreamSpark Premium中的软件和资源只用于院系的教学和非商业性的科研工作，更多相关规定，请参阅《订阅规则(DreamSpark Premium)》\n\n\n    DreamSpark正版软件下载门户：\n\n\n    http://e5.onthehub.com/WebStore/ProductsByMajorVersionList.aspx?ws=137ff89c-a42b-e311-93f4-b8ca3a5db7a1&#038;vsro=8&#038;JSEnabled=1\n\n\n    DreamSpark使用手册下载链接：DreamSpark使用指南.doc\n\n\n    常见问题：\n\n\n    1、如何申请DreamSpark的个人下载账号？\n\n\n    请按班级登记如下信息到excel文件中，然后发送下面表格信息至邮箱\n（xiaobo921014@hotmail.com），邮件标题为申请DreamSpark校内下载账号：\n\n\n    2、软件下载速度慢怎么办？\n\n\n    针对需要提供外置软件密钥才能安装的的产品，可以访问校内ftp服务器（ftp://210.42.151.73）获取安装介质（不包含软件密钥）。但是只有先访问DreamSpark 正版软件下载门户生成软件订单才能获得正版产品密钥和使用授权。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('226', '服务外包小组聚餐', '2014年6月6日晚，参加服务外包大赛的小组成员集体聚餐，共同参与的还有帖军老师。预祝他们在第五届中国大学生服务外包创新创业大赛中取得好成绩！\n\n\n    （附：中国大学生服务外包创新创业大赛（以下简称“服创大赛”）由教育部、商务部和无锡市人民政府共同主办，自2010年以来，已连续在美丽的太湖之滨——无锡成功举办四届，吸引了清华大学、台湾淡江大学、香港理工大学、澳门大学等两岸四地著名高校的近万名学生参赛，一批优秀的创新创业团队在竞赛中脱颖而出。\n\n\n    \n\n\n    想了解更多，可以浏览官网：http://www.fwwb.org.cn/）', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('228', '迎新专题网站', 'back link check webhosting info', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('231', '考勤排班系统', '', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('233', '微软‘‘创新杯’’，未来真奇妙', '11月14日晚上七时，微软大中华区企业培训主讲与项目管理咨询顾问刘颖老师携Imagine Cup微软“创新杯”强势登陆我校，在中南民族大学润良报告厅举行了题为“创新之旅”的精彩推荐活动，场面堪称火爆。出席此次活动的领导有计算机科学学院院长李子茂、校创新创业中心汤渊新思路团队指导老师帖军等。\n\n\n    Imagine Cup微软“创新杯”全球学生科技大赛是全球最有影响力的学生科技项目之一，此次来到我校做宣讲活动，正是看中了我校在计算机软件开发方面雄厚的科研实力与师资力量。作为本次承办单位，中南民族大学新思路团队从筹办到宣传，以及成功举行，都做出了极大努力。\n\n\n    本次宣讲会分为三个环节：关于未来的展望，Windous8系统展示，Imagine Cup微软“创新杯”比赛规则及参赛条件。\n\n\n    宣讲会上，刘老师向同学们展示了精美的PPT，并为同学们播放了精心挑选的微软创意视频，同学们都被微软公司强大的科研实力与无比丰富的想象力叹服。刘老师富有表现力的演讲更是吸引了同学们的注意力，大家跟随刘老师的思路，仿佛游走在未来的世界之中：无处不在的高科技极大地丰富了人们的生活，也因此改变了人类世界。\n\n\n    随后，刘老师为我们系统地介绍了微软公司的最新成果Windous8系统及Windous phone8.1系统。她告诉同学们，未来的世界是科技的世界，也是云和端的世界，大学生们只有学好本事，具备“用科技解决全球最棘手的问题，将创意变为商业财富”的能力，才有可能在滚滚而来的历史潮流中立于不败之地。刘老师的话让我们受益匪浅，同学们纷纷加入讨论行列，将讲座推向高潮。\n\n\n    最后，刘老师为我们介绍了Imagine Cup微软“创新杯”比赛的起源，历史与发展以及同学们报名参加的详细流程和规则。她说：微软“创新杯”汇集了全球顶尖的青年智慧，为不同背景的学生提供了合作，创新，展示的舞台，旨在鼓励青年学生发挥想象力与创造力，促进世界的繁荣与进步。同学们反应热烈，纷纷表示愿意参与到活动中。\n\n\n    活动最后，记者陶同学向刘老师提出问题：科学对于人类究竟意味着什么？刘老师回答说：科学也许并不只是为同学们带来有益的东西，但是不得不承认，它始终利大于弊。我们应该利用科学来造福人类，方便人类的生活。会议厅里再次响起了热烈的掌声。\n\n\n    随着现场抽奖环节的到来，活动也接近了尾声。本次微软集团“创新之旅”校园行活动中南民族大学站顺利落下帷幕。活动结束，主讲老师刘颖和出席本次活动的领导，以及现场工作人员留影合念。\n\n\n    作者：陶熹 编辑：彭茜', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('236', '许愿墙', '民大许愿墙是民大学子祝福和表白的一个平台。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('240', '计算机实验教学示范中心', '计算机实验教学示范中心是中南民族大学专业公告的一个平台。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('245', '软件工程导论', '该平台主要针对中南民族大学软件工程专业学子了解本专业和学习。软件工程专业学子了解专业介绍、在线学习软件工程课程教学和下载教学资源、专业去向、就业创新。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('248', '外语语言示范中心', '中南民族大学英语语言学习中心建于2004年底，目前已经建成包括840个学习机位（其中带PC机共578座）、建筑面积约1500平方米的15间数字化多媒体语音实验室、学习中心局域网、卫星接收系统、非线性编辑系统、语音录音系统和同声传译系统。可以满足多层次、个性化的英语教学和自主学习需求，形成一个软硬件都比较完善的网络学习系统。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('251', '校庆专题', '中南民族大学60周年校庆\n\n\n    甲子民大 共迎校庆\n\n\n    我与校庆 零距离板块分为校庆动态和活动动态；校庆华章 志愿添翼板块分为志愿先锋、迎校庆 志愿在行动。快来选出你心目中最美的校庆志愿者吧!快来，我们一起过校庆！！！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('256', '阿里技术嘉年华—-程序员之间的思想碰撞', '2013年7月13日到2013年7月14日，新思路团队网酷小组成员黄智超、牛赞、王玥、姜朔去参加了阿里巴巴集团在杭州海外海国际会展中心举办的ADC阿里技术嘉年华。\n\n\n    ADC·阿里技术嘉年华是一个面向业界互联网工程师，以纯粹的技术交流为核心的大型会议。ADC是一个崇尚开放分享的大型互联网技术会议，集中交流业界领先的“大数据技术与应用”、“无线技术”、“业务架构&amp;后端技术”、“前端&amp;体验设计”、“互联网测试”、“系统开发和运维”、“广告&amp;搜索”等热点领域的潮流技术、创新思路。\n\n\n    此次前端技术论坛的主题是跨越，会上主要为我们讲解了跨终端的技术应用、跨前后端的JS语言，虽然很多技术都不成熟，但是却让我们接触到了前端技术中最新鲜的血液，跨越了传统，带领我们进入到了更加广阔的前端世界！在会上，我们接触到了很多业界技术领先人物，他们拥有着对技术的热情，这些热情也同样感染了我们，技术源于兴趣，创新源于生活，只有你的兴趣真的存在于某一点上的时候，你才能发现这一点的独特之美，才能为这一领域添砖加瓦。\n\n\n    随着阿里技术嘉年华的圆满落幕，程序员们此次的思想碰撞也告一段落，但是我们的激情不减，热情不灭，相信新思想仍然在花苞之中等待盛开绽放的那一刻，萌发的嫩芽会在不久的将来长成参天大树。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('258', '欢迎魏书记莅临New-thread团队指导和视察工作', '首先，网酷组组长牛赞向魏书记一行展示了网酷组所做的网站，如大武汉珍珠网、数统院英文网站。移动终端组组长苏顺展示了他们为民大学子打造的“校园百事通”安卓应用。另外，IOS组组长刘任驰也对他们组的成果做了展示与讲解。在曲佳齐对New-thread团队文化进行深入介绍之后，魏书记等就知识产权及产品包装宣传等方面与团队师生进行了交流，并希望团队不仅要在技术上更要在管理和宣传等方面加强与完善，保持先进性。\n\n\n    最后，魏书记一行参观了实验室的工作学习环境，同学们的学习热情得到了他们高度的赞扬。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('265', '团省委学校部副部长徐本禹到New-thread工作室视察和指导工作', '3月24日下午，2004感动中国年度人物、共青团湖北省委学校部副部长、省志愿者行动指导中心副主任徐本禹一行在校团委的王书记、江书记、钱书记等领导的陪同下莅临New-thread团队视察和指导工作。\n\n\n    徐部长一行认真听取了设计人员对网站的设计想法，查看了第九届挑战杯网站的建设进度，并亲切地与设计人员讨论关于网站的问题，在一些内容和版面样式问题上也给出了自己的意见和建议。随后，吴迪带领的C++组向徐部长演示了体感游戏和体感运动比对、基于kinect的帕金森康复医疗软件以及虚拟试衣间虚拟换衣的新技术，得到了各位领导们的高度赞扬。\n\n\n    在这期间，徐部长所展现的亲切，让我们更愿意将他当做一位老师，也许这和他那段大山深处义务支教的经历分不开吧。在此，摘录一段2004年感动中国人物徐本禹老师的颁奖词，与君共勉：\n\n\n    如果眼泪是一种财富，徐本禹就是一个富有的人，在过去的一年里，他让我们泪流满面。从繁华的城市，他走进大山深处，用一个刚刚毕业大学生稚嫩的肩膀，扛住了倾颓的教室，扛住了贫穷和孤独，扛起了本来不属于他的责任。也许一个人的力量还不能让孩子们的眼睛铺满阳光。爱，被期待着。徐本禹点亮了火把，刺痛了我们的眼睛。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('267', '中南民族大学Imagine Cup 2013——诚挚邀约你的所有梦想', '中南民族大学“Imagine Cup微软创新杯”首届校区选拨赛开赛了！本次比赛的目的在于进一步加强学生的实践和创新能力，鼓励学生在最新技术平台上实现应用创新，将创意变成现实，帮助学生提升就业和创业所需的技能。\n\n\n    据了解，通过首轮比赛的项目名单已于3月10日公布。目前，学院负责人正在检查并督促各项目进度,每3天向组委会反馈进展。为了使参赛人员更好地完成自己的项目，举办方开放了507实验室无偿提供场地和咨询。\n\n\n    本次比赛将于3月19到20号收集二轮比赛作品（作品原型），届时将决定决赛参赛名单。3月21号到24督促校区选拔赛决赛队伍完善作品，其中包括：\n\n\n    1. 作品介绍PPT\n\n\n    2. 作品介绍视频\n\n\n    3. 应用程序（或者应用程序安装包）\n\n\n    4. 应用程序安装使用说明\n\n\n    5. 作品宣传视频\n\n\n    校区选拔赛决赛将于3月25日正式举行。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('269', '热烈欢迎Oracle专家朱志辉来我校进行Oracle（甲骨文）技术讲座', '2012.12.5为了加强同学们对oracle的了解和兴趣，我校请来Oracle专家朱志辉在9栋507实验室进行Oracle（甲骨文）技术讲座，507实验室座无虚席，很多同学都站着听知道讲座结束。\n\n\n    朱志辉专家为我们介绍了Oracle公司的创建理念和自己再Oracle公司里面的感想，并且对Oracle技术进行了简单的介绍，让同学们开始对Oracle有了进一步的了解。最后十几分钟，同学们积极的就Oracle技术和自己学习的目标提出自己的问题，朱志辉老师也耐心的一一给予了答案。最后在热烈的掌声下结束了这一段愉快的讲座。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('271', 'New-thread团队受邀参加“阿里云开发者大会”', '2012年11月9日，阿里云开发者大会在杭州召开，黄志超、沙恒代表new-thread团队受邀参加了本次大会。\n\n\n    云计算在中国正呈现百花齐放的发展势头，各行业、各领域都在以各种各样的方式尝试云计算技术与自身业务的深度结合，云计算的应用实践成为业界关注的重点。11月9日在杭州举行的阿里云开发者大会，为所有关注者提供了深入了解云计算应用落地的重要机会，大会全面展示了阿里云飞天开放平台上的众多云计算服务。\n\n\n    通过阿里云的众多云计算应用案例，黄志超、沙恒全面认识了云计算从技术到产品再到应用的云计算生态全貌。同时资深开发者等各路精英共同分享云锦书案技术革新和开发经验，更让他们对云计算有了更多的理解与感悟。这次的学习无论是对他们个人，还是对new-thread团队都是一份宝贵的经验。\n\n\n    我们相信，继承与创新会使new-thread团队走得更远更好！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('273', '创新工场参观经历报告会', '2011年7月19日，杨理航学姐在9栋211举行了创新工场参观经历报告会，会上她讲解了她参观工场的一些感受，给了我们很多学习的经验。\n\n\n    在校学习的我们，应该尽量争取出去学习的机会，只有走出学校去看一看，等我们真正走出学校的时候才能更快适应社会。同时，也能给我们更多的思考的空间，更加了解自己。让我们的大学生活目标更明确。珍惜在校的学习时间，不断丰富自己的知识与技能，在大学四年里，不断完善和提高自己。\n\n\n    常常会听到前辈们的告诫：“把握好学习机会，要好好表现。”在这次报告会上，学姐也再三强调要虚心学习，积极主动。如今一个活生生的例子放在眼前告诉我们，不管就业市场竞争有多大，只要我们充分做好准备，把握好每一次机会，决不会没有我们的藏身之所，立身之地。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('280', '计算机工程与应用实验室优秀毕业生经验交流会', '2011年4月5日，计算机工程与应用实验室优秀毕业生经验交流会在9栋211举行，会上学长学姐给我们讲解了他们大学四年的学习状况，还说了很多有关求职的事情，给了我们极大的思考空间。\n\n\n    让我们对自己未来的时间规划有了更好的想法，大学四年，听着很长，其实给我们去学习的时间却很短。所以我们更要好好利用。珍惜在校的学习的时间，在课余时间，去了解和学习自己感兴趣的东西，不断完善和提高自己的同时，还能更了解自己，了解世界。\n\n\n    平时，我们不管做什么事，都要明确自己的目标，就像我们到公司工作以后，要知道自己能否胜任这份工作，关键是看你自己对待工作的态度，态度对了，\r\n即使自己以前没学过的知识也可以在工作中逐渐的掌握。\r\n因此，要树立正确的目标，在实现目标的过程中一定要多看别人怎样做，多听别人怎样说，多想自己应该怎样做，然后自己亲自动手去多做。\r\n只有这样我们才能把事情做好。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('284', 'Mobile Market百万青年创业计划宣讲会成功举行', '2010年12月8日15：10，中国移动“MM百万青年创业计划”系列讲座在第三学术报告厅正式举行，中国移动湖北武汉分公司相关负责人出席本次讲座。 此次“百万青年创业计划”宣讲会是由中南民大计算机科学学院主办，计算机协会及“民大之星”团队承办。计划以“行动创造未来”为主题，注重对学生的创造力的培养。\n\n\n    讲座上，移动公司龚倩女士分别从“MM创业计划的活动背景”、“MM创业计划的组织结构”、“移动互联网的发展”等方面作了相关介绍。接着，活动运用了精彩短片和成功个人案例详细讲解了此次创业计划活动的目的和方式。讲座同时分享了关于手机动漫游戏产业以及软件开发的相关知识，这对同学的未来创业计划有了很好的铺垫和启示。\n\n\n    此外，“民大之星”实验室作为学生开发软件、网页的主科研负责也向到场的同学介绍了近期相关成果，激励了的同学的创业热情和动力。 讲座接近尾声时，“民大之星”实验室负责人帖军教授作了讲话，他认为机会是人们应该主动争取的，同时团队合作也是成功的关键。至此，本次讲座圆满结束', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('292', '深信服科技2015年校招', '深信服科技2015校招来袭~\n\n\n    \n\n\n    \n\n    \n\n    \n\n    \n\n    \n\n    \n\n    \n\n    详情请见网站：http://www.sangfor.com/hr/school.html', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('306', '2013腾讯笔试面试经验交流会成功举行', '4月30日下午，New-thread团队组织召开了“腾讯笔试面试经验交流会”，参加本次会议的有帖军老师、09级部分优秀学长学姐。\n\n\n    本次交流会由10级同学金果主持。首先，他就帖老师、学长学姐们在百忙之中赶来参加本次会议表示衷心的感谢，并介绍了本次会议的主要内容。随后，农航亮、孙成瑞、黄上星、金果、龚雪、吴迪、苏涛涛等10级同学分享了他们此次参加腾讯笔试面试的经历与总结，并对自身所存在的问题与不足做了反思。针对这些问题，帖老师以及09级学长学姐们积极给出自己的建议，特别是在如何实现知识与项目实践的平衡方面。交流过程中，老师同学之间积极互动，讨论氛围热烈。\n\n\n    本次经验交流会通过对10级学生应聘问题的总结，不仅对以后团队成员在应聘方面起到了指导作用，而且在平时的学习工作方面也起到了督促作用。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('308', 'NewThread团队召开首次SVN技术讲座', '2013年4月26日晚上8点30在9栋205召开NewThread内部人员的SVN技术讲座，本次讲座由中南民族大学研究生郑禄学长和武汉大学研究生郑思敏学长为主讲人，实验室全体人员一同聆听了此次精彩的讲座。\n\n\n    郑禄学长讲述了SVN的基本的操作方法，认为SVN简单实用，但是操作不当就会导致资料的丢失，所以每个人都要细心的使用SVN，不要给团队中的其他人带来不必要的损失。郑思敏学长随后对SVN进行了一些补充，讲述了SVN的另外3个功能：版本功能、信息统计功能、协作平台功能。向大家展示了一个不一样的SVN。\n\n\n    在讲座最后，帖军老师提出了SVN的主要是用来体现集体协作，团体迸发友情的协作平台，在以后的工作岗位中SVN就是一个体现自己团队协作能力的平台，所以新思路团队中的人都要会使用SVN，并且把它使用好。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('311', '2013届新生首次动员大会', '2013年4月26日（周六）晚7点，NewThread团队在9栋205召开首次2013届团队新生动员大会。团队领导人帖军老师、团队总负责人谢玉锋、各小组执行组长、新加入NewThread团队的新生参加了大会，会议由行政组长曲佳齐主持。\n\n\n    NewThread团队的定位是走精英路线，能够加入到新思路团队中来的人必须要确定自己的目标，坚持自己的道路。帖军老师对实验室的新生的发展提出了3个要求：大学之道，解决之道，执行之道。大学之道在于发现大学的问题，解决之道在于怎样从自身的角度去解决现在大学存在的问题，执行之道在于坚持不懈的去把问题解决。除此之外，在NewThread团队中会有淘汰制度，只有压力才能给予大家动力，要培养新生自己的主动性，从而把NewThread打造成精英的团队。\n\n\n    大会中各小组负责人刘江、谢枫、牛赞、苏顺、郭龙缘在会上讲解了自己组内对新生的培养方案。团队负责人谢玉锋和行政组长曲佳齐也分别为新生讲述了自己对newthread团队的一些认识和理解，让新生们理解自己在团队中的定位，要对团队有一种责任感，遵守团队中的规章制度。既然选择了NewThread，就要坚持不懈地证明自己的选择。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('315', 'New-thread团队2013春季招新宣讲会成功举办', '2013年4月19日，New-thread团队2013春季招新宣讲会在我校计算机科学学院9#211顺利举行。出席本次大会的有New-thread团队总负责人谢玉锋、赛事负责人郑禄、设备负责人黄智超、技术主管杨苏文、行政主管曲佳齐以及各技术组组长。\n\n\n    本次招新宣讲会旨在向以大一学生为主体的民大学子展示New-thread团队的技术方向、行为规范和精神风貌，指引报名者选择正确的方向。\n\n\n    招新宣讲会于晚上7:00正式开始，行政主管曲佳齐首先代表New-thread团队对大家的到来表示衷心的感谢与热烈的欢迎，拉开了宣讲会的序幕。运维组负责人沙恒、网酷组负责人牛赞、C#组负责人刘江、移动终端组负责人李原、C++组负责人谢枫、搜索引擎组负责人金明、数据库组负责人曲佳齐、JavaEE组负责人杨苏文依次对该组方向、团队、成果、招新需求做了详细介绍。其中，各组组长均表示，有想法、有恒心、认真负责、团队协作能力强是他们本次招新的要求。随后，New-thread团队总负责人谢玉锋对本次招新做了总结。他表示，加入New-thread团队虽然会遇到很多困难和挑战，但同时也会获得更多的机遇和帮助。最后，谢玉锋学长对即将加入New-thread团队的新成员们提出了一些希冀，他希望新成员在行使权力的同时，能够履行自己的义务。\n\n\n    宣讲会上同学们对New-thread团队的招新计划表现出强烈的加入意愿，会后扔抓紧机会与各组组长进行交流，久久不愿离去。此次，New-thread团队招新宣讲会现场收到了大量简历。目前，面试等后续工作正在紧张而有序地进行。这次招新宣讲活动不但为新东方的后续发展储备了新的生力军，也在宣传New-thread团队方面发挥出相当大的作用，有着深远的影响。今后，我们将看到更多朝气蓬勃的面孔和新东方同成长，共进步。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('319', '2012.9.26前端小组进行第三次考核', '2012.9.26前端组执行组长牛赞、农航亮对第二次考核未通过人员组织进行了第三次考核。本次考核中，负责人检查了每位参加考核人员的项目，对其进行点评和指正。通过交流讨论，使彼此看到了作品中的优点，也了解到自身存在不足的地方。\n\n\n    最终董聪、柯生鸿、孙荣苑全部通过考核，通过率高达百分之百，这也充分展示了前端组不断进取、追求进步的精神风貌。希望他们在今后的工作中再接再厉。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('321', '2012.9.25Java小组小组进行第二次考核', '2012.9.25Java组长金果、马骥及杨苏文组织了对第一次考核未通过人员进行了第二次考核。13人参加考核，组长给每个人都一一的检查了项目，大家进行交流和讨论，从中看到了别人的优缺点，也了解到自己不足的地方。\n\n\n    虽然最终只有朱旋一人幸运的通过考核，正式加入Newthread团队，但是其他未通过人员也做的不错，希望再接再厉。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('326', '他山之石，用以攻玉——观微软“创新杯”中国区总决赛', '14年4月30日，微软“创新杯”中国区总决赛在南京结束，New Thread团队荣幸获得到现场参观学习的机会。以下是他们的部分感言：\n\n\n    吴文果：\n\n\n    看到的第一个作品就是来自武汉大学开发的一款windows phone情侣手机应用，里面的在线涂鸦，拇指亲吻的小游戏给人很大的创意感，同时这 款情侣应用给人的视觉和触觉有很大的冲击感，界面让人感到舒适，这个作品最终也获得了创意赛特等奖。其次记得就是有一个组就一个人，去年他就带着自己的作 品参加比赛，最后折戟全国总决赛，今年他又带着用4个月的时间开发出的新作品参加比赛，最终获得特等奖。\n\n\n    通过这次微软创新之旅，我觉得我们团队在技术不一定差，但是在创意，思想以及行动确实落后于他人，如果我们团队每个人都可以主动去完成自己的事情， 不是被动的去完成任务，或许我们团队可以比现在更好。和武大团队进行交流时，他们说的一句话让我记忆深刻，他们说一个真正好的团队是集合了各方面的优秀人 才，同时团队里面容不得任何渣渣！对比下我们团队，可能大家都比较安于现状，觉得自己努力点，有点小成绩就满足了，如果我们可以稍微再认真点，努力点，或 许很多结果就又不一样了！不过说着容易，做起来难，新思路团队还有很长的路要走，我们也会为让新思路站上更大的舞台而去努力！\n\n\n    翁晏伊黎：\n\n\n    当看到武大的蜜蜜这个应用，我们发现和我们团队做的微情侣应用惊人的相似，但是我们实验室的应用只是个初成品，其他学校却深入开发，增加了有趣性， 更像是一个成熟的产品。比赛当天还有很多类似的开发，都让我感觉到我们团队只要努力，是一定可以去总决赛的，我们也不乏很多很有商业价值的应用，类似于 C#组的文字进化论、CPP组的人脸识别，我们缺少的只是态度，我希望下届的创新杯，大家可以好好对待它。福州大学的至诚学院让我印象深刻，这所学校的办学历史还不足我们学校的五分之一，却有三支队伍，其中还有获得大奖的队伍，这更加坚定了我的想法：新思路团队一定可以的，我们一定可以做出成绩的，这届不行，我们还有下届，总有一天这个比赛会有我们的一席之地。\n\n\n    还有一句话我印象深刻，就是微软的员工说:“很开心大家把自己做出来的东西不再叫做项目，而是产品。”我希望我们要加强产品理念，给大家灌输一种思想：我们做的事，以后都会有商业价值，而不只是为了应付帖老师的要求。\n\n\n    总的来说，这次的南京之行收获很多。以后在实验室的日常管理中，大家要更加注重细节，对于实验室的事情要更加的上心。对于搞技术的成员，我们应该加强思想教育，强调认真以及多叙述产品的潜在发展力。\n\n\n    \n\n\n    （“文字进化论”的团队合照）\n\n\n    \n\n\n    （科技创新荟现场）\n\n\n    这里汇集的是创新的种子，激情的火苗，这次外出学习，开阔我们的视野，New Thread到了一个更大的舞台，看到佳作荟萃，我们要取长补短，借他山之石，用以攻己之玉！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('333', '湖工研讨会总结', '2014年4月24日下午，New Thread的胡传业和邓李维同学代表实验室去参加了湖北工业大学的数字媒体及慕可、ios移动应用开发应用教学的研讨会。以下是他们的体会：\n\n\n    胡传业：\n\n\n    昨天下午，我去湖北工业大学参加了数字媒体及慕课、IOS移动应用开发应用教学的这次研讨会。去之前就有点小期待了。开完会后，收获颇丰，感觉确实没有白跑一趟 。我希望通过这篇小总结，和大家分享下会议中的收获与心得。\n\n\n    最开始进行讲说的，是刚从腾讯离职并且准备自己开公司的 Tom， 进行移动开发的资历很深，有十多年的经验了。一看就是搞技术的，没有华丽的开场 白，没有炫酷的演示文稿，从他说话的内容和风格就可以看出，是个实在的人。他分享的一些信息和经验也很受用。好吧，我直接切入正题，下面就是他分享的内 容：\n\n\n    1.对IOS 开发和安卓开发进行在学习上进行了比较：安卓入门简单，精通难，IOS 入门不易，精通易（由于是非开源，所以只要付出足量的时间+精力，就有可能精通 IOS 编程）；\n\n\n    2.Tom 认为，在中国能够做出非常优化的 APP 的人，就几千人左右（会场的众多老师都投以怀疑的目光）；\n\n\n    3.对IOS 开发和安卓开发进行盈利方面的对比：IOS 的销售环境更加纯净，获取的利润更高，相对来说，开发成本更低（Android 的屏幕尺寸不一，一个APP至少要在几百个不同尺寸的安卓机上进行测试）；\n\n\n    4.市场上对移动开发人员的需求量逐步攀升，供低于求，在大家手机流量普遍都不够用的时候，也是移动开发人员缺口最大的时候。如果你对移动开发有兴趣，可以坚定的选择 一个方向，深入下去，不用担忧毕业的工作问题。\n\n\n    听完 Tom 的分享后，我有点小激动，更加坚定自己的想法，会在APP开发上深入下去，伴随着浓厚兴趣的同时，去努力掘金。\n\n\n    下面的内容就更加精彩了，关于 Unity 开发的创新硬件 &#8211;  Noitom （名字很厉害啊，把motion逆过来起名，这个公司想颠覆这个行业 ）公司的自主研发的动作捕捉硬件（惯性捕捉），和 慕课开放学习平台，都是非常不错的新技术与新资源。\n\n\n    我以前都不是很喜欢参加这些活动，但是，这次的活动貌似对我惯有的想法有所改变。自己在做什么很重要，了解别人在做什么也很重要，且行且望，努力进取，开拓视野， great !\n\n\n    邓李维：\n\n\n    这是我所写的第一篇博文，是关于我的专业的，我感到有点小兴奋，我感叹自己总算开始迈入计算机这个行业的大门了。前面依然是个广阔的未知的世界，但是我会尽可能让自己知道的更多，更多的了解这个社会，stay hungry，stay foolish。\n\n\n    此次研讨会，虽然简单，但是仔细的去体会，里面还是有很多东西值得我去学习和引起共鸣的。好了，废话少说，直接切入主题：\n\n\n    唐辰，是本次研讨会第一个发言的人，虽然他话很直接，很犀利，但是从中发现的一个技术人员那种纯粹的品质是一览无余的。简单的演示文档，清楚的逻辑，简练的话语，程序员的一切特质显露无疑。他通过自己10多年的移动开发经验为我们介绍了Android和ios的开发优势与劣势，并预测了移动开发市场的前景与未来的趋势，虽然他个人比较推崇ios开发，但是他给出的论据让我们看到了ios开发的巨大空间以及它本身无可替代的优势。我还记得他说过的一句特别经典的话，我不能为你们解决钱的问题，但是我能为你们解决对于技术的恐惧问题，我相信，只要你选择一个方面努力，一定能变成一个大牛，贵在坚持。他还补充道，作为一个程序员，一定要学会思考，只有思考才能不断的进步。\n\n\n    他说的都是很直接的话，却令人思考很多。接下来的东西也是直接跟我自己的项目相关的，确实使我获益良多，是关于Unity虚拟现实的演示与讲解。\n\n\n    他们公司采取运动学原理来捕获人体工作，而不是采取传统的光学理论，这样使他们的技术水平位居世界一流，使人物工作捕捉的效率更高。他还现场让人演示了它的控制流程，Unity引擎中完全可以捕捉人体的动作，包括通过人体的动作来摧毁虚拟现实中的物体。这项技术的革新将会大大地改变人类的工作方式，生活方式和学习方式，我相信在不久的将来全虚拟时代必定会实现。\n\n\n    我们可以想象，将来只要穿戴相关设备，我们就可以在一片空地中完全任凭自己的想法在虚拟世界中进行遍历和探险，那将是多么有趣的一件事情。不仅如此，将3D技术运用到其他行业，也必将能推动其他行业的向前发展。比如，运用于军事演练，必将能大大降低军队花销，同时使得士兵的安全更有保障，还能够达到演练的目的。何乐而不为？\n\n\n    此次研讨会，改变了我以前的一些比较单纯的想法。我以前总以为这些 所谓的宣讲会充满着商业目的，没有什么东西可以学到。但是经过此次的宣讲，我知道我还是能够或多或少的得到一些东西，让自己对这个行业有着更加深刻的理 解。通过这次研讨会，我对自己的国创项目有了更加浓厚的兴趣，也坚定我从事3D行业的决心，我要花更多的时间和精力去研究这方面的一些技术。\n\n\n    最后，我想说，科技使这个世界更美好更有趣。作为一个工科生，我将选择以自己能做到的方式来回报这个祖国。我相信，技术人才是推动一个国家和民族发展的不可或缺的力量。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('407', '安卓应用体验', '人在民大：', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('620', 'Imagine Cup 2015微软“创新杯”全球学生科技大赛中国区总决赛', 'Imagine Cup 2015微软“创新杯”全球学生科技大赛中国区总决赛2015年4月2０日－2015年4月2２日在北京微软亚太研发集团总部举办。在经过校区赛和激烈的中国区半决赛后，“游戏”、“世界公民”、“最佳创新”三个比赛项中最终入围Imagine Cup 2015中国区总决赛共 18 支团队。今年特别设了“Kinect for Windows 技术专项奖”和“触笔交互技术专项奖”等奖项，入围的共有５支团队。\n\n\n    比赛由来自全国各地的24名MSP将作为记者采访参赛队伍，进行现场比赛的直播，微博的策划，视频的制作。新思路团队ＤｏｔＮｅｔ组的怀智博和朱永波作为MSP被选为记者全程参与了这次比赛。\n\n\n    \n\n\n    4月20日下午，在所有人员到达微软亚太研发集团1号楼之后，首先进行了一个MSP工作说明会，介绍了MSP未来几天的工作 ，来自全国各地的24名MSP将作为记者采访参赛队伍，各个小分队交流了自己的图片视频策划方案。然后根据自己对参赛队伍的作品的了解为各个参赛队伍绘制海报，集思广益。 然后开始了2015微软“创新杯”全球学生科技大赛中国区总决赛赛前说明会，微软（中国）有限公司 平台开发合作部教育顾问杨涛老师，开发体验与平台合作事业部技术顾问总监夏鹏先后进行了发言。然后MSP的妹子展示MSP精心设计的参赛队伍的海报。然后杨滔老师细心讲解参赛队员的注意事项及比赛规则，接下来是参赛队伍抽签进行决定明天的比赛顺序的环节。各参赛队伍对自己的both进行搭建。\n\n\n    4月2１日上午，参赛队伍进行展台的搭建，媒体和微软的员工等前去展台去参观作品，参赛队员精心介绍自己的作品。\n\n\n    \n\n\n    随后2015微软青年科技创新荟——“创新杯”全国学生科技大赛中国区总决赛 开幕式正式开始，微软全球副总裁兼中国区销售副总裁 Philippe Rogge 发表了讲话。\n\n\n    \n\n\n    随着开幕式的结束，所有的比赛都陆续开始了，答辩环节更是精彩摆出。当结束了一天的答辩及工作之后，晚上进行了盛大的晚宴，在晚宴上MSP奉献了很好的节目，北京大学的参赛学生拄着双拐上台分享了他自己的故事。晚宴游戏环节十分有趣，抽奖环节激动人心。晚宴结束后（众多MSP还奋斗在视频制作的第一线）当晚一点没睡，彻夜在做视频。\n\n\n    \n\n\n    4月2２日上午，2015微软青年科技创新荟“创新杯”全球学生科技大赛中国区总决赛闭幕式暨颁奖式，“无所不在”的杨滔老师又客串了一次主持人。颁奖环节十分激动人心，现在回想起来还是很激动。颁奖礼结束后，全体进行合照。\n\n\n    \n\n\n    2015微软“创新杯”全球学生科技大赛中国区总决赛闭幕式已经落下帷幕，恭喜获奖团队取得好成绩，希望下一次还能再看到他们的身影。至此，2015微软“创新杯”全球学生科技大赛中国区总决赛结束。\n\n\n    下面是前去2015微软“创新杯”全球学生科技大赛中国区总决赛现场的新思路团队ＤｏｔＮｅｔ组的怀智博和朱永波的参加此次比赛的心得体会。\n\n\n    怀智博：此次去了2015微软“创新杯”全球学生科技大赛中国区总决赛的比赛现场，收获良多，虽然很遗憾没能以参赛选手参加Imagine　Cup中国区总决赛，但能以MSP身份来到IC现场，也是一番极好的体验。深入接触了参赛团队，并了他们的作品之后，并对他们的作品的创意感到非常的佩服，并且对他们的实现过程和中间所历经的各种辛苦感同身受。因为今年我也参加了此次比赛，所以对其中的辛苦深有了解。\n\n\n    另外，今年有四支高中生团队也积极地参与了比赛并最终完成了自己的团队作品。对于他们的创意和实现程度，当时就觉得我们老了，现场的各种作品都很厉害，其中还有 Kinect 扫描和3D打印，还有天文望远镜。让我最印象深刻的就是游戏组，一位学长参加了恨多次创新杯，并多次获得奖项，始终坚持做自己的游戏，做好玩的游戏，在今年成立了自己的工作室后以游戏组评委的身份参加了此次比赛，北京大学的学长在做完手术后独自做完了作品拄着拐杖参加了此次的比赛。这些都让我很佩服，其中的MSP的团队合作也让我一生难忘，忘不了共同采访的乐趣，彻夜做视频辛苦。所以回来后我想加深实验室我们组的团队协作，共同进步。\n\n\n    通过这次比赛，收获良多，我会在日常生活中多多积累，多多努力，下一次争取以以参赛选手参加Imagine　Cup中国区总决赛。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('625', '说不出再见&#8212;&#8212;2011级大四学长学姐欢送会', '2015年5月13日，对于新思路团队而言是个让人值得铭记的日子。2011级的大四欢送会在9栋411隆重召开。\n开头的PPT，回忆了大学四年生活的点点滴滴，酸甜苦辣。\n学长学姐们依次做了介绍，有的羞射，有的开朗，有的附上嘱托，有的细细回忆。前辈们的回忆，也是新思路的成长史，团队在大家的共同努力下步步走来，个中滋味，值得细细品味。\n随后的视频短片展示了校园的风景和学长学姐的一张张笑颜，熟悉的风景，熟悉的人，然而今日即是分别时，让我们共珍重。\n因为实习缘故，很多新思路家庭成员无缘现场，但是他们依旧送上了自己的祝愿！曹红兵学长为欢送会献唱一曲，生动有趣的3D模拟动画和动人的嗓音让在场观众都耳目一新！前负责人吴文果学长也送上了自己的赠言~\n传瓶子的游戏环节充分调动了现场各位的热情和积极性！类似击鼓传花的规则和真心话大冒险的惩罚措施也是让人难以拒绝！曲佳齐学姐的热情拥抱，苏顺学长的深情一吻，蒋恩涛的动人告白，许许多多，都是值得回忆的片段~\n中途老板进入！鼓励大家多多与学长学姐交流，并嘱咐学长学姐留下个人信息编为二维码留存，同时邀请大家晚上共赴盛宴！\n大四学姐学长的代表，前端组的…学姐和J2EE组的郭龙源学长相继作了即兴发言。回忆了从刚进实验室到如今与实验室息息相关的经历，肯定了实验室给他们带来的成长，并勉励各位后生~\n新思路家庭聚会在热烈的气氛中结束了。也让人不由感慨时光的易逝，学长学姐们毕业了，但是不代表他们离开了新思路，他们永远是我们新思路大家庭不可缺少的一份子。虽然毕业季的离愁让人伤感，但是我们之间的这份情谊不会消失。学长学姐们，祝福你们的未来更加美好灿烂，希望你们能够永远记得新思路，记得我们这些还未完全长大的学弟学妹们。时光不老，我们不散，未来，还很长！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('632', '国家民委舆情中心领导来新思路实验室指导工作', '9月21日上午，国家民委舆情中心领导深入计算机科学学院新思路团队（NewThread Team）实验室进行实地考察。考察团队由国家民委舆情中心主任赵志敏及相关工作人员组成，考察团队在我院王江晴院长以及相关职能部门和学院负责人的陪同下，对新思路团队的各项工作进行了指导。\n\n\n    新思路团队负责人杨宝卉引领国家舆情中心各位领导对新思路团队的学习和项目情况进行介绍。前后共有三个项目小组的负责人进行详细的解说，前端组负责人蒋恩涛向国家民委舆情中心的领导讲解了新思路团队网站和信息化建设的相关信息，CPP组负责人陈磊向国家民委舆情中心的领导讲解了Unix 3D变电站项目实践情况，.NET组负责人怀智博向国家民委舆情中心的领导讲解了风力发电场监控项目。\n\n\n    国家民委舆情中心领导在深入考察完之后对新思路团队的学习和项目进行了详细的指导，我们在听后觉得受益良多，在知识层面得到了很大的提升。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('665', 'JavaEE第八周例会', '时间：10月23日（本周五）七点开始\n地点：9#504\n老师：徐胜舟\n内容：1.检查组内成员的学习进度。\n\n\n    2.技术分享，讲解关于过滤器方面的知识。\n\n\n    3.项目的检查与展示。\n\n\n    4.安排招新培训的相关事宜。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('668', '研究生第八周例会', '时间:10月22日（本周四）18：40\n\n\n    地点：9#507\n\n\n    老师：帖军\n\n\n    内容：\n~ 熊剑分享认识虚拟化\n1. 什么是虚拟机\n2. 什么是虚拟化技术\n3. 虚拟化有什么优点\n4. 虚拟化技术有什么用\n~\n王扬分享WCF基础\n1. WCF介绍\n2. WCF寄宿\n3. 终结点', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('670', 'DotNet第八周例会', '时间：10月24日（周六）晚上七点\n地点：9#507\n老师：尹帆\n内容：音乐播放器的注册登录功能的完善\n大三学长的分享\n比赛的提议', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('672', 'Android组第八周例会', '时间：10月23日（本周五）晚上7点（预计30分钟）\n地点：9#411\n\n\n    主讲人：王子恒\n指导老师:帖军\n\n\n    一、linux系统的简单操作\n\n\n    预计时间：10分钟\n\n\n    主要内容：\n1.在个人电脑上配置使用教室公用linux服务器的方法\n2.关于各种命令的使用\n3.vi文档的编辑\n\n\n    二、 python的基本使用\n\n\n    预计时间：10分钟\n\n\n    主要内容：\n1Python语法的主要特点\n2Python的简单例子两个\n\n\n    3人在民大2.0\n\n\n    预计时间：10分钟\n\n\n    主要内容：\n1关于前一阶段项目的总结\n2对于下一阶段目标进行讨论', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('674', 'FeWeb第八周例会', '时间：10月23日（本周五）19:00\n地点：9#507\n指导老师：尹帆\n内容：CSS3的幻灯片效果，\nnode.js的问题交流，\n新生见面会', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('676', 'DB组第九周例会', '时间：10月29日星期四中午一点\n主讲人：刘叶青、李欣\n主讲内容：JDBC数据库连接。\n具体内容：被连接的数据库至少建有两张表格，连接上数据库后，可以进行查询、更新、删除、添加操作，并且能够调用存储过程和触发器，以及多表事物怎么封', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('678', 'iOS第九周例会', '时间：2015.10.31\n地点：9＃507b\n指导老师：孙翀\n内容： 猜图代码讲解和本周总结，新生学习路线和配置环境的情况', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('680', '.Net第九周例会', '时间：10月31（周六）19:00\n地点：9#507\n指导老师：尹帆\n内容： 1.微软创新杯\n2.创新秀\n3.ImageCup项目的具体化，人员分配等。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('682', '研究生第九周例会', '时间:10月29日（本周四）18：40\n地点：9#507\n指导老师：帖军\n内容：\n胡一然分享认识NoSQL、\n1. 产生背景\n2. NOSQL优势\n3. NoSQL数据库的分类\n4. NoSQL的应用', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('684', 'Android 第九周例会', '时间：2015年10月30日19:00\n地点：9#411\n指导老师：帖军\n内容：一、实现图片的轮播\n预计时间：15分钟\n主要内容：\n1.布局文件（3分钟）\n1.1左右滑动界面布局（android.support.v4.view.ViewPager）\n1.2 图片索引布局（显示圆点点）\n2. 在Activity 中实现（10分钟）\n2.1 导入图片资源\n2.2 设置变量\n2.3 载入图片资源\n2.4 将点点加入到ViewPager 中\n2.5 将图片装载的数组中\n2.6 设置Adapter\n2.7 设置监听，主要是设置点点的背景\n3. 学习资源（2分钟）\n3.1 百度搜 ViewPager\n3.2 推荐博客网址 http://blog.csdn.net/xiaanming/article/details/8966621', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('686', 'cpp第九周例会', '时间：周六中午两点\n地点：9#504\n主讲人：周云杰\n指导老师：徐胜舟\n内容：介绍HTML基本语法以及介绍里面的标签等内容。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('688', 'JavaEE第九周例会', '时间：周五晚上7:00\n地点：9#504\n指导老师：徐胜舟\n内容：\n1.询问组内成员学习进度。\n\n\n    2.组内成员讲解关于servlet方面的知识。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('690', 'Feweb第九周例会', '时间：10月30（本周五）19:00\n地点：9#507\n指导老师：尹帆\n内容：\n\n\n网页设计的美观之平面构图\n新成员汇报学习情况\n葛豪分享css3', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('692', '设计部第九周例会', '时间：周六18:00，\n地点: 9#508。\n内容形式:\n一、技术分享：各成员分享自己每周学到的东西，既可以互相学习，又督促自己平时的学习。\n二、任务讨论:讨论各自的logo创作。\n三、解疑答惑：师者，所以传道受业解惑也。各组员互相学习，各为师父，共同进步。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('694', 'DB组第十周例会', '时间：（11月5日）中午一点\n主讲人：程恒、柳真\n地点：9#507\n指导老师：孙翀\n内容：C#连接数据库界面和Java连接数据库界面', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('696', '设计部第十周例会', '时间地点:周六14:00，9#508。\n内容形式:\n一、技术分享：各成员分享自己每周学到的东西，既可以互相学习，又督促自己平时的学习。\n二、新生指导: 给新生指导他们上次的宣传单制作。\n三、任务讨论: 讨论各自的logo创作。\n四、解疑答惑：师者，所以传道受业解惑也。各组员互相学习，各为师父，共同进步', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('699', '研究生第十周例会', '时间:11月5日（本周四）18：40\n地点：9#507\n指导老师：帖军\n内容：\n~ 陈雯颖分享机器学习——k-近邻算法\n1.简单介绍何谓机器学习\n2.涉及的关键术语\n3.开发机器学习的主要步骤\n4.k-近邻算法的原理\n5.使用Python实现k-近邻算法\n~ 洛庆分享同步、异步在web中的应用\n1、同步、异步的定义与区别\n2、同步传输与异步传输\n3、异步在web交互中的应用&#8212;ajax\n4、使用ajax的几个例子', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('701', 'Feweb第十周例会', '时间：11月7日（本周六）19:00\n地点：9#507\n指导老师：尹帆\n内容：\n\n\n    网页自适应的讲解', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('703', 'Android第十周例会', '时间：11月6日晚7点\n例会地点：9栋411\n主讲人:贺培元\n指导老师:帖军\n例会内容：\n一、activity的生命周期（10分钟）\n1、概述\n2、详细解读\n（1）表格\n（2）流程图\n3、参考资料', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('705', '.Net	第十周例会', '时间：11月7日（周六）晚上七点\n地点：9#507\n老师：尹帆\n内容：组织大家参与Imageshow', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('707', 'ios第十周例会', '时间：2015.11.7\n地点：9＃507b\n指导老师：孙翀\n内容：函数调用和新老生学习情况，项目分配计划', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('709', 'cpp第十周例会', '时间：周六中午两点                                                                                                                                                                                                             地点：9#504                                                                                                                                                                                                                                    主讲人：魏云鹏                                                                                                                                                                                                                                   指导老师：徐胜舟                                                                                                                                                                                                                     内容：C++顺序容器的基本概念及使用', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('712', '微软创新show来袭！！！', 'Microsoft Imagine Show 是由微软主办的创新科技秀，计科院的新思路团队代表中南民族大学与微软中国合作承接的一场献给中南民大学子的科技盛宴。\n\n\n    在Imagine Show中，微软公司全球资深副总裁、大中华区董事长兼首席执行官贺乐赋先生将为大家开启这次活动的序幕，届时还与杨滔、刘颖、周闻均等微软技术大咖一起带领走进微软，展现微软科技给青少年学子的无限可能性！微软资深专家还将围绕Kinect和Cortana等激动人心的黑科技，以往届国内外Imagine Cup优秀作品为例，介绍在More Personal Computing（更加个性化的计算）,  IoT(物联网) 的应用场景中如何通过这些技术进行创新。同时，强大的开发工具Visual Studio以及云计算平台Azure, DreamSpark和MSP等丰富的学生项目资源等给大家介绍并使用。\n\n\n    时间是11月8号下午3点！首场微软创新秀将于Channel9直播平台上震撼首秀！新思路团队将对此事进行详细的跟踪报道。\n\n\n    下面是我们提供的直播链接地址：\n\n\n    https://channel9.msdn.com/Events/Imagine-Cup/Microsoft-Imagine-Show\n\n\n    11月8号下午计算机科学学院新思路团队还将在9栋教学楼提供直播交流区，如果你有想法，就不会缺少伙伴！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('725', '设计部第11周例会', '时间:周六14:00\n地点：9#508\n一、技术分享：各成员分享自己每周学到的东西，既可以互相学习，又督促自己平时的学习。\n二、作业点评：大家互相评价这次的展板设计，优缺点兼得。然后可以分享logo制作的心得体会。\n三、解疑答惑：师者，所以传道受业解惑也。各组员互相学习，各为师父，共同进步', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('727', 'cpp第11周例会', '时间：周六中午两点\n主讲人：薛彬\n地点：9#504\n指导老师：徐胜舟\n内容：Kinect概述与基本知识', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('729', 'Android第11周例会', '时间：2015年11月13日19:00\n地点：9#411\n指导老师：帖军\n内容：git的使用', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('731', 'Feweb第11周例会', '时间：11月13（本周五）19:00\n地点：9#507\n指导老师：尹帆\n内容：\nps基础功能讲解', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('733', 'JavaEE第11周例会', '时间：十一月十三号(周五)晚上七点到十二点\n地点： 九栋504\n指导老师： 徐胜舟老师\n内容\n1询问组内成员学习进度\n2有陶宏曜讲解自定义JSP标签的知识', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('750', '微软创新杯宣讲会！！！', 'Imagine Cup 微软“创新杯”全球学生大赛是目前全球规模最大、影响最广的学生科技大赛。2003 年创办以来，已有 190 多个国家和地区，超过 165 万名学生参与了“创新杯”比赛。而中南民族大学新思路团队有幸能够和微软一起承办本校区的比赛，带给同学们一场激动人心的科技创新风暴。\n参赛学生可以在这个平台上释放他们的创意和技术才能，在最新的技术平台上创建一流的科技解决方案，将创意变为商业现实。Imagine Cup 也着力于培养学生的创新精神和社会责任感。Imagine Cup 汇集了全球顶尖青年智慧，为不同背景的学生提供了合作、创新的机会，用科技解决全球最棘手问题，将创意变为商业现实。\nImagine Cup 2016 比赛已经启动。全球总决赛将于 2016 年 7 月在美国西雅图举行。Imagine Cup 2016 设有世界公民（World Citizenship）、游戏（Games）和最佳创新（Innovation）三个比赛项目（Competitions）以及在线挑战赛项目（Challenges）。\n\n\n    此次微软创新之旅的宣讲会，将会带你了解创新杯的魅力与激情。我们将会于11月18日19:00，与你相约在大活多功能二厅。期待你的到来~', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('758', '微软创新之旅圆满结束', '微软“创新之旅”中南民族大学站宣讲圆满结束\n\n\n             2015年11月18日晚7点，微软“创新之旅” ”——中南民族大学站技术巡讲在大学生活动中心多功能2厅举行。此次活动由计算机科学学院主办，特邀微软讲师刘颖老师来我校讲学。新思路团队指导老师帖军老师，尹帆老师 ，徐科老师，徐胜州老师以及来自全校的一百多名学生参与了此次讲座。\n\n\n    距离本次讲座开讲前三十分钟，教室早已座无虚席，不少对微软创新之旅感兴趣的同学慕名而来。面对同学们的巨大热情，刘颖老师首先对微软的前沿技术进行了仔细讲解，向广大同学介绍了Windows10在用户交互，应用通信，媒体等方面的新特性。此外，刘颖老师还在互动展示环节中，让现场观众体验到了“Kinect”体感周边外设设备是如何轻松实现人机互联，以及“Contana”助手技术对智能连接起到的重大作用，炫目的技术演示引发了一阵阵兴奋的惊叹。最后，刘颖老师向我们详细介绍了微软“Imagine Cup”全球学生大赛，往届参赛者的视频，照片彻底点燃了同学们的热情，激发了对比赛的向往。\n\n\n    随后便是同学们的提问时间，许多同学跃跃欲试，将自己的疑惑告知老师，而刘颖老师也就同学们的疑惑做出了详尽的解答及衷心指导，赢得了广大学生的广泛好评。而在此之后的微博互动抽奖环节，更是将此次活动推向一个小高潮。在同学们的阵阵掌声中，本次宣讲会圆满结束。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('762', 'Imagine cup！！Look here！！', '一.报名须知\n\n    注意啦！Imagine cup民大站已经开启！我们需要更多的人才来展现你的才华！报名参加的同学请加群：390628517，咨询更多问题，一起讨论有关细节,特别注意截止报名时间为2015年12月31日。\n\n二.创新杯项目须知\n\n    Imagine Cup 2016比赛已经启动。全球总决赛将于2016年7月在美国西 雅图举行。Imagine Cup 2016 设有\n\n      三个比赛项目（Competitions）\n\n世界公民（World Citizenship）\n游戏开发 （Games）\n最佳创新(Innovation)\n\n     三个挑战赛项目(Challenges)\n\nDesign Challenge\nPitch Challenge\nPlan Challenge\n\n三.作品要求\n\n    三个比赛项目的作品要求如下： 参与此项比赛的作品必须使用到微软的工具和技术。作品必须使用到 Visual Studio家族中至少一个产品进行开发。作品或作品的一部分必须运行 在下面至少一个平台之上：\n\n\nWindows · Windows Phone · Windows Azure\n\n\n    参赛作品还可以使用微软平台的Kinect SDK，.Net ,XNA, Bing map API 等，参赛作品也可以使用第三方游戏引擎、中间件、开源软件或代码库，但 必须遵循正确的授权。    参赛的学生可以通过DreamSpark项目获取微软平台的免费工具和软 件。www.dreamspark.com\n\n\n    更多信息请访问:\n\n\nImagine Cup 官方规则\nWorld Citizenship（世界公民）\nGames（游戏）\nInnovation（最佳创新）\n\n\n    Imagine Cup 2016全球挑战赛项目（Challenges）\n\n\n    Imagine Cup 2016 设有一些全球性挑战赛项目，参赛团队的作品在参\n\n\n    与中国区三项比赛的同时，也可以直接参与全球的挑战赛，目前主要包括以\n\n\n    下几项挑战赛(Challenges) :\n\n\n IC16 Big Idea: Pitch Challenge\nIC16 Big Idea: Plan Challenge\nIC16 Big Idea: Design Challenge\nIC16 Hello Cloud Challenge\nIC16 Imagine Cup Earth Challenge\n\n\n    参赛选手请访问 www.imaginecup.com 根据相关比赛规定和要求直接参与全球比赛。\n\n\n    更多信息请访问:\n\n\nIC16 Big Idea: Pitch Challenge\nIC16 Big Idea: Plan Challenge\nIC16 Big Idea: Design Challenge\nIC16 Hello Cloud Challenge\nIC16 Imagine Cup Earth Challenge\n\n 四.比赛开始和结束日期  \n\n    世界公民、游戏和最佳创新三个比赛项目独立评分评选，中国区比赛轮次和 作品提交时间一致，如下表所示。\n\n\n    \n\n\n    所有参赛作品都必须在每个轮次的截止日期前提交，以保证其作品拥有比赛 资格。每个轮次具有特定的参赛要求。\n\n\n    【注】：中国区半决赛，决赛的比赛时间地点将在2016年4月初另行公布，全球 总决赛将在美国西雅图进行，具体开始和结束时间将在2016年6月公布。\n\n\n     \n\n\n    参赛选手  \n\n\n    参赛选手应满足 Imagine Cup官方规则 的“Can I Enter?”及“TEAMS AND MENTORS”章节中规定的资格要求。\n\n\n一个团队可以包含最多四名在校学生。团队成员可以来自不同国家/地区， 或来自不同学校，一个团队只能代表一所中国大陆地区的学校。\n参赛选手必须在2015年8月31日前满16周岁，中国大陆的学生应当为 2015年1月1日到2016年5月31日在中国大陆地区学校注册的在校学生。\n参赛 选手必须遵守所在学校关于学生参加相关活动的规定。\n要成为有效的团队成员，每位参赛选手必须在报名结束之前注册并组建一 个团队或加入一个团队。除了四名团队成员外，团队还可以有一名指导教师。\n\n\n    比赛轮次 \n\n\n    第一轮：报名及中国区初赛\n\n\n    2015年9月 2015年12月31日23:59\n\n\n    第二轮：中国区复赛 收到复赛通知后  2016年3月31日23:59\n\n\n    第三轮：中国区半决赛 2016年4中上旬 2016年4月中上旬\n\n\n    第四轮：中国区决赛  2016年4月下旬 2016年4月下旬\n\n\n    全球半决赛 2016年4月23日 2016年5月1日\n\n\n    全球总决赛 2016年7月 2016年7月\n\n\n     \n\n\n    所有比赛规则以 www.imaginecup.com 为准。 联系我们：mschsp@microsoft.com\n\n五.参赛方式  \n\n              参赛选手必须在比赛报名期间登录 www.imaginecup.com 根据相关说 明，选择相应比赛进行报名。比赛报名截止日期为北京时间2015年12月31日 23:59。有关与报名参赛相关的更多重要信息，请参阅 Imagine Cup 官方规 则 的相关要求。\n\n六.Imagine Cup大赛简介 \n\n    Imagine Cup微软“创新杯”全球学生大赛是目前全球规模最大、影响最广 的学生科技大赛。2003 年创办以来，至今已有来自 190 多个国家和地区，超过 165万名学生参与了“创新杯”比赛和相关活动。\n\n\n    Imagine Cup 是一个平台，参赛学生可以在这个平台上释放他们的创意和 技术才能，在最新的技术平台上创建一流的科技解决方案，将创意变为商业现实， 帮助学生提升就业和创业所需的技能，也着力于培养学生的创新精神和社会责任 感。\n\n\n     \n\n\n    在中国区比赛阶段中，参加三个比赛项目的作品按照各自的评分标准分别评 分。各个阶段的结果，均根据作品在三个比赛项目的独立排名而定。\n\n\n    如果你选择参与此比赛，则表明你同意接受以下条款：\n\n\n1.Imagine Cup 官方规则 。\n2.Imagine Cup 2016 中国区比赛规则 。\n\n\n     \n\n\n    Imagine Cup 2016 比赛项目（Competitions） \n\n\n    Imagine Cup 2016 中国区比赛规则针对世界公民、游戏和最佳创新三个比赛项目而设立。参加三个比赛项目的作品按照各自的评分标准分别评分。各个阶段的结果，均根据作品在三个比赛项目的独立排名而定。\n\n\n    中国区比赛阶段  \n\n\n    第一轮：中国区初赛 要拥有第一轮的参赛资格，团队必须在第一轮比赛结束（2015年12月31 日23:59）之前提交以下参赛材料：\n\n\n    1. 《项目计划书》\n\n\n    《项目计划书》必须按照中国区《项目计划书模板》完成并提交，初赛作 品不进行评分和排名。提交完成二周内，评审组会通知参赛团队提交是否合格。 提交合格后，该团队即进入第二轮比赛。如果提交不合格，该团队可以在第一 轮比赛截止日期前修改并再次提交。\n\n\n    注：第一轮《项目计划书模板》可通过Imagine Cup中文站点aka.ms/icchina 在线下载。团队进入第二轮比赛后，参赛团队允许对项目计划书中描述的解决 方案进行修改。   \n\n\n     \n\n\n     \n\n\n    中国区奖项设置\n\n\n    世界公民、游戏和最佳创新三个比赛项目独立评分评选，中国区比赛将评出下列奖项：\n\n\n    1. 特等奖（三支团队）：每个比赛项目特等奖一名，每支团队获得奖金 10,000元人民币，中国区获胜团队将参加全球在线半决赛，全球半决 赛获胜团队将代表中国大陆参加在美国西雅图举行的Imagine Cup 2016全球总决赛。 2. 一等奖（六支团队）：每个比赛项目一等奖二名，每支团队获得奖金 5,000元人民币 3. 二等奖（九支团队）：每个比赛项目二等奖三名 4. 三等奖：所有进入中国区半决赛但未能晋级中国区决赛的团队将获得 三等奖  5. 参与奖：所有在第二轮比赛中提交了合格作品但未能晋级中国区半决 赛的团队将获得参与奖\n\n\n    二等奖及二等奖以上获奖团队将获得比赛颁发的奖杯。三等奖及三等奖以上 获奖团队的所有参赛队员和指导教师将获得比赛颁发的获奖证书。参与奖获奖团 队的所有参赛队员和指导教师将获得比赛颁发的参与证书。\n\n\n    所有奖励金额为税前金额，参赛选手需要根据相关规定缴纳个人所得税。指 导教师将不会获得上面列出的任何现金奖励。\n\n\n     评分标准\n\n\n    三个比赛项目的评分标准如下：\n\n\n    世界公民：\n\n\n    概念 15%：项目是否有清晰的市场和用户？项目是否清晰的阐述需求， 问题和商业机会？项目目标和基本功能是否容易理解？\n影响力 50%： 项目是否具有现实意义？项目所具有的影响力有多大（影 响的地域范围，影响的人口数量）？项目试图解决问题是否有难度和现实 意义？和现有方案相比，项目是否以一种新的或是更好的方式解决了问 题？针对现有解决方案是否有创新或者改进？项目或者团队是否引起人 们希望，好奇和热情，从而赢得有效的合作和广泛关注。 ·\n执行力 20%：项目是否容易使用？用户交互、视觉设计、音效设计是否 专业？项目性能如何？对输入的响应是否实时？项目是否选用了合适的 平台，并充分使用了所选平台的主要功能和特性？ ·\n可行性 15%：商业模式是否有可实施的计划？是否有外部市场调查，焦 点小组测试和beta测试？如何使用团队计划在市场中竞争中获胜？\n最佳创新：\n\n\n    概念 15%：项目是否有清晰的市场和用户？项目是否清晰的阐述需求， 问题和商业机会？项目目标和基本功能是否容易理解？ ·\n创新性 50%：项目是否创造了一种新的产品或服务？现有市场是否有类 似的产品或者服务，参赛项目是否超越了现有产品和服务？项目是否具有 创新性和突破性？项目是否包括用户体验的创新？项目是否有技术设计 的创新? ·\n执行力 20%：项目是否容易使用？用户交互、视觉设计、音效设计是否 专业？项目性能如何？对输入的响应是否实时？项目是否选用了合适的 平台，并充分使用了所选平台的主要功能和特性？ · 可行性 15%：商业模式是否有可实施的计划？是否有外部市场调查，焦 点小组测试和beta测试？如何使用团队计划在市场中竞争中获胜？\n\n\n    游戏开发：\n· 概念 15%：游戏是否有清晰的市场和用户？游戏是否清晰定义了游戏的 角色、角色的任务以及游戏的背景？游戏核心设定是否容易理解并引人入 胜？\n· 娱乐性 50%：游戏是否激动人心？游戏反馈如何？游戏的难度设置是否 合理？用户是否有兴趣不断和持续进行游戏？ 游戏设置，脚本，艺术方 向和其他领域是否有引人入胜的创新？\n· 执行力 20%：游戏是否容易学习和使用？是否有玩家帮助，引导和暂 停？用户交互，艺术设计，音乐和音效是否专业？游戏性能如何？对输入 的响应如何？游戏是否选用了合适的平台，并充分使用了所选平台的主要 功能和特性？ · 可行性 15%：商业模式是否有可实施的计划？是否有外部市场调查，焦 点小组测试和beta测试？如何使用团队计划在市场中竞争中获胜？\n\n\n    新思路官微二维码\n\n\n    \n\n\n     \n\n\n    民大交流群二维码', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('780', '新思路2015新成员见面会圆满召开', '寒风瑟瑟又是一年，新思路团队于2015年12月20日在中南民族大学9栋教学楼204教室成功召开了新思路2015新成员见面会。会前主持人介绍了我们的团队，新思路团队（NewThread）是在2009年成立的，成立之初是由三个技术小白学长在帖老师的指导下， 自我学习、自我摸索。在之后的数年时间内，团队成员们自我发掘兴趣志向，坚持自主钻研，相互协作，逐步完善成现有的八个技术小组， 包括CPP，J2EE，iOS，DB，.NET，Feweb，Android，搜索引擎在内的八个小组，为了团队更好的运作，之后逐步建立了企划、宣传、财务、设计四个行政小组， 前后有六位导师全力指导，导师力量有：帖军老师（指导Android组、研究生组，导师队长）、徐科老师（指导搜索引擎组）、吴经龙老师（指导实验室日常）、孙翀老师（指导iOS组、DB组）、 徐胜舟老师（指导CPP组、J2EE组）、尹帆老师（指导FeWeb组、.NET组），至此新思路团队架构大致构成，并以公司化的模式经营。新思路团队更是在2014年夏受邀请到北京人民大会堂授勋“小平科技团队”的荣称。\n\n\n    之后便是老师及学生代表讲话，吴经龙老师发表了关于学生未来与职业规划的演讲，并向在座的几位同学进行了提问，让同学们对自己在实验室的意义有了明确的定位。之后帖军老师对实验室的架构及方向进行了详细的阐述，让同学们对新思路这个团队有了深层的认识。学生代表技术组长陈明通谈及了自己在新思路的成长，新思路负责人杨宝卉对实验室的规章制度进行了总结。之后是学生的答疑时间，学生积极问题，两位老师耐心的回答。\n\n\n    新思路团队正在慢慢的走向成熟，正在经过一年又一年的积累变得更像一个team。相信有新鲜血液的填充，新思路会永远保持着最初的激情与梦想！', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('784', 'Imagine Cup 微软“创新杯”报名抓紧啦', 'Imagine Cup 微软“创新杯”全球学生大赛是目前全球规模最大、影响最广的学生科技大赛。2003 年创办以来，已有 190 多个国家和地区，超过 165 万名学生参与了“创新杯”比赛。而中南民族大学新思路团队有幸能够和微软一起承办本校区的比赛，带给同学们一场激动人心的科技创新风暴。\n参赛学生可以在这个平台上释放他们的创意和技术才能，在最新的技术平台上创建一流的科技解决方案，将创意变为商业现实。Imagine Cup 也着力于培养学生的创新精神和社会责任感。Imagine Cup 汇集了全球顶尖青年智慧，为不同背景的学生提供了合作、创新的机会，用科技解决全球最棘手问题，将创意变为商业现实。\nImagine Cup 2016 比赛已经启动。全球总决赛将于 2016 年 7 月在美国西雅图举行。Imagine Cup 2016 设有世界公民（World Citizenship）、游戏（Games）和最佳创新（Innovation）三个比赛项目（Competitions）以及在线挑战赛项目（Challenges）。\n\n\n    我校计科院新思路团队多年与微软方面合作举办中南民族大学站微软创新杯比赛，为怀揣着创意与梦想的你提供一个广阔的舞台，让你拥有翱翔的天空。民大微软创新杯报名已经开启，报名网址是：www.imaginecup.com           ，截止报名日期为12月31日，如果你有意愿请加入我们的交流群中来：390628517，一起探讨属于科技的奥秘！关注新思路官博和创新杯官博获取最新资讯。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('791', '鹤峰领导参观新思路实验室', '2015年12月30日，计科院院长在新思路团队吴经龙老师的陪同下带领由鹤峰县长带领的检查团队对新思路团队的实验室进行了参观，各个教室的小组成员向老师们展示了实验室的项目与风采。来自前端组的喻希里展示了我们实验室官网和一些完成的网站，在507教室由吴经龙老师向检查团队展示了预警系统，几位研究生展示了猪场污水排放系统，之后参观了小车制作实验室，最后参观了cpp组的教室，由陈磊向老师展示体感技术。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('820', '新思路春季招新开始咯！', '新思路团队（Newthread）成立于2009年。自我学习、自我摸索是新思路团队的一个核心理念。之后的数年时间内，团队成员们自我发掘兴趣志向，坚持自主钻研，相互协作，逐步完善成现有的九个技术小组，包括CPP，J2EE，iOS，DB，.NET，Android，Feweb，搜索引擎,设计部在内的八个小组，为了团队更好的运作，之后逐步建立了企划、宣传、财务三个行政小组。\n\n\n    导师力量有：帖军老师（指导Android组、研究生组，导师队长）、徐科老师（指导搜索引擎组）、吴经龙老师（指导实验室日常）、孙翀老师（指导iOS组、DB组）、徐胜州老师（指导CPP组、JavaEE组）、尹帆老师（指导FeWeb组、.NET组），至此新思路团队架构大致构成，并以公司化的模式经营。新思路团队更是在2014年夏受邀请到北京人民大会堂授勋“小平科技团队”的荣称。\n\n\n    部门职能：\n\n\n    1.cpp组：有较好的c/c++编程能力，自主学习能力，对游戏与服务器开发有兴趣。\n\n\n    2.J2EE组：有一定Java基础，对技术有浓厚的兴趣，认真负责且有一定自学能力。\n\n\n    3.iOS组：了解iPhone产品，对苹果应用开发有强烈喜好，并擅长将其运用到Objective-C语言上。\n\n\n    4.DB组：热爱数据库，对技术疯狂，有数据库经验者优先。\n\n\n    5..NET组：会用C#语言开发简单的winform应用，对win8和Windows phone开发有一定的了解及兴趣。\n\n\n    6.Android组：会用Java语言开发简单的安卓应用，有良好的ps基础。\n\n\n    7.Feweb组：具备基础的HTML和CSS能力，能根据网页图片制作网页。\n\n\n    8.搜索引擎（SE）组：了解JAVASE或C++的基本语法，对编程有浓厚的兴趣，积极认真，勤奋好学。\n\n\n    9.设计部：掌握一定的绘画基础与良好的审美观，能够掌握ps（美院优先考虑），如果有制作视频意向的能够掌握pr或者vegas或者会声会影。\n\n\n    报名时间：2016.3.14-2016.3.18\n\n\n    报名页面：NewThread成员招新报名网站https://www.new-thread.com/NewMember/competitionSignUp.aspx\n\n\n    NewThread招新QQ群：115914058\n\n\n    关注新思路官博获取最新动态：', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('836', '微软创新杯校区选拔赛开启', 'Imagine Cup 微软“创新杯”全球学生大赛是目前全球规模最大、影响最广的学生科技大赛。2003 年创办以来，已有 190 多个国家和地区，超过 165 万名学生参与了“创新杯”比赛。而中南民族大学新思路团队有幸能够和微软一起承办本校区的比赛，带给同学们一场激动人心的科技创新风暴。\n\n\n    上学期令人紧张的初试已经落下帷幕，到来的是更为紧张的校区选拔赛，将由通过初试的几个优秀的小组带给我们精彩的讲说，涵盖世界公民、游戏和最佳创新三个方面，带着他们的创意与灵魂，我们团队将在3月27日下午2点在9#507开启校区选拔赛。并于当天晚上6点半在大活多功能二厅举行本次校区赛的颁奖仪式。关注新思路官博获取最新动态。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('838', '中南民大校区赛微软“创新杯”颁奖典礼', '2016年3月27日晚六点半，由新思路团队主持的颁奖典礼在大活多功能二厅举办。\n\n\n    本次典礼邀请了帖军老师、尹帆老师等四位指导老师。典礼伊始，帖军老师在致辞中提出了大赛的目的主要是技术创意，增强学生的创新意识，促进就业和发展。老师肯定了学生的付出，表示每次的比赛都是为了积累经验。最后老师又重申了一遍新思路，新想法，新创意的理念。之后主持人张璐请获奖的五支队伍分别展示作品。首先是Simple-code团队的智能刷脸购物项目，采用先进的智能人脸识别技术，方便人们购物选择适合的产品；其次是ID-梦之队展示的中国功夫旨在帮助人们锻炼身体；接下来是DB2016的逆投影项目简单明了；Closer And Closer团队与现场观众进行互动将气氛推至高潮，他们的近距离项目目的是增强人们之间距离不再做“低头族”；最后展示的是Feweb2014带来的减压心理网项目，旨在有效解决人们的心理问题。作品风格迥异但都是与时代发展相符，为现代的人们所服务，作品都具有时代性，人性化。\n\n\n    最后进行的是微软校区赛颁奖环节，获得一等奖的是Simple-code 团队，二等奖是ID-梦之队和Closer And Closer 团队；三等奖是DB2016;最具潜力奖是Feweb2014团队。至此，本次颁奖典礼在热烈的掌声中圆满落幕。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('843', '鹤峰领导来视察新思路实验室', '2016年3月29日，鹤峰县人大余昆刚副主任、鹤峰县副县长钱文彬、鹤峰茶叶局田智仁局长、张新华副局长一行6人由计算机科学学院王江晴院长、宋中山副院长的陪同下对计算机学院新思路实验室进行了考察参观，在新思路企划部张璐同学的带领下各位领导考察了各项目小组展示的实验室的项目与风采。来自前端组的本科生喻希里展示了新思路实验室前端开发的多项项目和团队近几年学生就业情况。在507实验室由研究生蓝良贵介绍了生态污水处理项目。最后参观了新思路cpp组的教室，由本科生陈磊向各位领导展示体感购物项目。各位领导对学院新思路的团队的各项工作表示高度赞赏同时也给出很多宝贵意见。\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n新思路宣传部赵伟豪摄', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('862', '我校学生团队在第三届“发现杯”全国大学生互联网软件设计大奖赛上获得佳绩', '4月9日，2016年全国大学生“互联网+”创新大赛总决赛暨第三届“发现杯”全国大学生互联网软件设计大奖赛（以下简称“发现杯”大赛，www.dajiangsai.org）总决赛在杭州电子科技大学隆重举行。由我校计算机科学学院帖军、单一鸣老师指导的New Thread（新思路）团队的张浩、陶宏曜、程恒小组取得了优异成绩，作品“用药盒子”荣获本科App开发与设计组全国三等奖。\n\n\n    据悉，第三届“发现杯”全国大学生互联网软件设计大奖赛自去年8月份启动，历时7个月，吸引了全国22个省份637所高校参赛，经过初赛86位评选团的在线评审，最终共有来自全国的68所高校的100个参赛队伍进入决赛奖项的角逐，包括App本科组40个团队，网络营销本科40个团队，App高职组10个团队，网络营销本科10个团队。大赛组委会特别邀请创业孵化器机构对进入决赛100个团队的作品进行初步查看评阅，并会从中筛选获胜团队进行最终投资项目的角逐。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('897', '智游天下，慧赢未来-观2016微软创新荟', '本文撰写：杨宝卉\n\n\n    微软“创新杯”全球学生科技大赛是目前全球规模最大、影响最广的学生科技大赛。2003年创办以来，已连续举办13届，至今已有来自190多个国家和地区，超过165万名学生参与了“创新杯”比赛和相关活动。2016微软创新荟包含了微软“创新杯”中国赛区总决赛、面向青少年的“创新·未来”论坛（Microsoft YouthSpark Live）以及面向青年创业者的微软创新企业扶植计划（Bizspark）专场分享会，四百多位来自全国各地青年科技精英、学者、创业家和业内专家齐聚一堂，共同探讨新科技创意，探讨如何利用科技实现青年人的梦想。\n\n\n    \n\n\n    2016微软”创新杯”中国区比赛共有来自全国163所高校的近5000名学生报名参加了今年“创新杯”中国区比赛，其中1379个作品成功晋级复赛。本届比赛设游戏、最佳创新和世界公民三个比赛项目。经过初赛、复赛和全国半决赛的激烈竞争和层层筛选，共有全国各地的21支队伍进入全国总决赛的角逐。\n\n\n     \n\n\n    \n\n\n    \n\n\n     \n\n\n    来自中南民族大学计算机科学学院新思路团队2012级计算机科学与技术专业朱永波、2013级计算机科学与技术专业怀智博、2013级软件工程杨宝卉以及来自中南民族大学计算机科学学院新思路团队2013级管理学院财务管理专业冯诗宇四人，通过MSP ImagineCup 小记者层层考核（MSP，即微软公司针对高校大学生在全球范围内所设立的项目。旨在鼓励那些在校园里积极倡导、推动创新实践，乐于积极帮助他人的优秀学生，给他们提供微软最前沿的技术资源，以及更广泛的交流、展示自我的平台。），最终作为中南民族大学的代表前往海南省三亚市进行2016微软创新荟的全程报道。\n\n\n     \n\n\n    这里是来自前往三亚的中南民族大学计算机学院新思路团队四人组（朱永波、怀智博、杨宝卉、冯诗宇）的前方报道：\n\n\n    2016年04月26日\n\n\n    我们来到了美丽的海棠湾9号酒店，满怀着对科技的期望我们步入了IT殿堂。呈现在我们面前的是工作人员忙碌的场面，想着接下来的两天我们会在这个地方接受微软科技的洗礼，浑身的细胞仿佛沸腾了一般，这一刻澎湃不已。\n\n\n    \n\n\n    2016年04月27日\n\n\n    随着微软全球副总裁、微软(中国)有限公司首席运营官菲利普·罗格先生为大会开幕致辞，“此次“创新杯”上，我们很高兴看到学生们利用微软云Azure、人工智能、物联网等当下领先科技将一个个天马行空的想法变为了现实，中国青年学生的创新活力给我留下了非常深刻的印象。”来自全国各地的24二十四支团队（含海南省3支体验答辩团队）开启了激烈的角逐之旅，我们作为MSP小记者深入比赛现场，观摩了今年微软创新杯“最佳创新”、“世界公民”、“游戏”类比赛的答辩过程，比如对Unity3D的应用、坚持原创的理念（从BGM到作品的故事背景）、对社会生活的关注（从减少含磷洗衣粉的使用、对聋哑人士便利的关怀、虚拟化学实验室减少人身伤害、到截图即刻生成备忘录的便利）我们从中受益良多，体会到的不仅仅是他们使用技术开发的艰辛，更是他们巧妙与评委周璇的沟通技巧。\n\n\n    \n\n\n    2016年04月28日\n\n\n    最令人激动人心的时刻来临了！一天绞尽脑汁激烈的中英答辩，图上的哪个奖杯属于昨天奋力拼搏的你们？\n\n\n    \n\n\n    总结：\n\n\n    当ImagineCup与Microsoft两词的投影再次在墙上亮起时，我们才幡然醒悟，这似梦非梦的科技饕餮盛宴已经临近尾声。一种莫名难掩的情绪在胸膛中扩散，讲不出再见，这几天里我们同吃同住，我们畅想着未来，我们畅想着科技，希望我们来年能成为这24支团队中的一员，作为中南民族大学新思路团队的参赛代表队走向微软，走向全国，走向世界！\n\n\n    【以下是各种爆料图~', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('926', '新思路2012级毕业生欢送会', '当春风吹走馥郁的花香，当夏花着上斑斓的盛装，在这栀子花开的季节，我们不得不再次面对离别，曾经与我们朝夕相处，并肩作战于知识海洋的学长学姐们将离开温馨的战营，走向社会。\n\n\n    为了欢送12级的学长学姐们，2016年5月22日下午3点在9#411室我们将举办一场盛大的毕业生欢送会，届时，欢迎大家积极参加，与学长学姐们共诉惜别之情，共同吹响启航号角，最后，祝愿他们前程似锦，一路顺风。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('929', '新思路2012级毕业生欢送会圆满结束', '江山代有人才出，各领风骚数百年。新思路实验室秉承着尊重学生，培养学生的理念，不断的向社会输送拥有各种技术的IT人才，我们于5月22日在9栋楼411教室对今年的新思路毕业生举办了一场欢送会，我们向毕业生播放精心准备的PPT和暖心视频，之后由各个组的学长向我们分享了自己青春的感悟，以及对实验室的祝福。然后指导老师吴经龙老师发表讲话，为学长学姐们践行。最后各个小组进行合照。祝福我们今年的毕业生们，青春没有回头，既然选择了远方，便只顾风雨兼程。\n\n\n    \n\n\n    摄像：设计部李江', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('940', 'IBM亚太区培训总监到访我校实验室', '为了探讨IBM在我校的合作模式，倾听我校在IBM培训方面的意向及需求，推动IBM培训业务的高校合作，6月2日上午9点，IBM亚太区培训总监Joseph Wei先生一行对我校实验室进行了合作访问。\n\n\n    9#214举行的一场隆重而简短的合作商谈会为本次到访拉开帷幕，此后，在我校计科院代表老师的热情接待下，由企划部张璐等同学引导Joseph Wei先生一行先后对508、507、505、411实验室教室进行了访问参观。首先，新思路前端组向Joseph Wei先生一行展示了他们的技术风采，接着研究生学长学姐阐述了实验室的几个项目，ios组长就ios的发展历程进行了详细的阐释，cpp组陈磊同学呈现的“智能广告”和“虚拟线性”3D拆装技术让Joseph Wei先生一行眼前一亮，最后，设计部王思雨同学向Joseph Wei先生一行展示的设计组近来设计、制作成果为本次到访画上圆满的句号。\n\n\n    此次访问中，Joseph Wei先生一行高度赞扬了实验室的各技术项目并提出了宝贵的意见。祝愿我校与IBM的合作成功。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('950', '新思路团队2016暑期培训正式开始', '伴随着武汉烈日的炎炎和一直预报不下的暴雨，中南民族大学新思路团队2016年度暑期培训在今天正式拉开帷幕。上午九点，各个技术小组的成员已经开始进入到各自的任务学习中去。\n\n\n    暑期是一个增长自己知识，查缺补漏的好时机，希望留下参与培训的各位成员能够严格遵守实验室暑期培训纪律，努力完成小组布置任务，争取在培训结束后给自己一个满意的答卷。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('964', '常德市石门县县长一行来我校计科学院考察交流', '2016年9月8日，常德市石门县县委常委、副县长赵正兵率领该县职能部门负责人一行来我校计算机科学学院考察交流。\n\n\n    考察团先后来到计科学院实验室、湖北省制造企业智能管理工程中心、新思路团队进行了考察交流，详细了解了计科学院的发展历史、办学条件、师资力量、办学特色等多方面的内容，对计科学院先进的办学理念，一流的师资力量和办学条件表示了高度赞赏。\n\n\n    考察团在新思路团队考察过程中，各项目小组学生负责人展示了的团队的项目与风采，在得知计科学院新思路团队是全国首批大学生“小平科技创新团队”时，对该院在学生的创新创业培养工作走在了全国的前列表示了赞扬。在参观湖北省制造企业智能管理工程中心时，对工程中心的智慧农业项目已达到国际先进水平高度关注。赵县长表示，该项目利用最新的科学技术发展农业信息化，让农民真正得到了实惠，希望能够尽快的进行校地共建合作，把该项目尽快引进推广到石门县。考察团一行还对计科学院实验室进行了实地考察交流。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('984', '构想农林科技总经理熊亚文一行到访我校实验室', '为促进校企合作， 2016年9月18日，常德市石门县县委常委、副县长赵正兵，县政府办副主任胡金华特邀湖南构想农林科技有限公司产业总设计师汪金小，副总经理熊亚文一行来我校计科实验室考察交流。\n\n\n    在我校计科院代表老师的热情接待引导下，构想农林科技总经理熊亚文一行对我院新思路团队进行了考察交流，实验室各技术小组纷纷向熊亚文总经理展示了自己的技术风采。设计组的鹤峰宣传视频、安卓组的平板设计成功吸引了熊总经理一行的注意，前端设计的网站页面、cpp的刷脸购物及3D项目让熊总经理颇感兴趣，研究生学长学姐关于产品溯源系统的科研成果得到大家的高度赞赏。\n\n\n    此次到访，熊亚文总经理一行目睹了各技术小组的风采，并表示希望能与我校实验室团队合作，共创新型科技产品技术，为社会发展提供更好的技术保障。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('988', '鹤峰骑龙茶业有限公司一行参观实验室', '临近国庆，鹤峰骑龙茶业有限公司郭国总经理一行前来参观新思路团队实验室。天下小雨也未能影响参观的热情。郭经理在吴经龙老师的带领下由实验室负责人田曌华的解说，先后参观了411教室设计部展示了所做的项目，508教室前端组技术组长展示了前端组优秀学长学姐的个人网站，505教室郭经理对cpp组的人脸识别技术特别感兴趣并亲自尝试，最后在507教室研究生关于产品溯源系统的科研成果得到了高度赞赏，此次到访加深了骑龙公司对实验室的了解，相信未来我们能够更好地合作。', null, null, null, null, null, null, null);
INSERT INTO `teamnews` VALUES ('1059', '石门县一行参观新思路实验室', '2016年10月13日下午，石门县县委常委、副县长赵正兵，县政府办副主任胡金华携湖南构想农林科技有限公司、白云山林场、大同山林场代表一行人来到计算机科学学院，先后参观了计算机实验室、新思路团队实验室、湖北省制造企业智能管理工程技术研究中心。参观团观看了团队的茶叶质量追溯平台，并提出了该平台实施到自己企业的想法，希望我们关于构树全株发酵试验和茶叶追溯平台建设达成一致，开展良好的合作', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for teampartner
-- ----------------------------
DROP TABLE IF EXISTS `teampartner`;
CREATE TABLE `teampartner` (
  `partner_sid` int(11) NOT NULL AUTO_INCREMENT,
  `partner_valid` tinyint(4) DEFAULT '0',
  `partner_introduce` text,
  `partner_picture` varchar(100) DEFAULT NULL,
  `partner_link` varchar(100) DEFAULT NULL,
  `partner_timesstamp` int(11) DEFAULT NULL,
  `partner_note` text,
  PRIMARY KEY (`partner_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teampartner
-- ----------------------------
INSERT INTO `teampartner` VALUES ('5', '1', '这是一个很牛逼的公司', null, 'http://www.google.com.hk', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_sid` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_account`),
  KEY `user_sid` (`user_sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '管理员', 'admin');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_account` varchar(50) NOT NULL,
  `role_number` varchar(50) NOT NULL,
  PRIMARY KEY (`user_account`,`role_number`),
  KEY `FK_Own2` (`role_number`),
  CONSTRAINT `FK_Own` FOREIGN KEY (`user_account`) REFERENCES `user` (`user_account`),
  CONSTRAINT `FK_Own2` FOREIGN KEY (`role_number`) REFERENCES `role` (`role_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('admin', '1');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `v_sid` int(11) NOT NULL AUTO_INCREMENT,
  `v_type` int(11) NOT NULL,
  `v_origin_name` varchar(255) DEFAULT NULL,
  `v_name` varchar(255) DEFAULT NULL,
  `v_path` varchar(255) NOT NULL,
  `v_comment` varchar(255) DEFAULT NULL,
  `v_upload_time` datetime DEFAULT NULL,
  `v_timestamp` bigint(20) NOT NULL,
  `v_note` text,
  `user_account` varchar(50) NOT NULL,
  PRIMARY KEY (`v_sid`),
  KEY `user_account` (`user_account`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`user_account`) REFERENCES `user` (`user_account`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='视频总表';

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', '1', '新思路介绍', 'new-thread', '/videos/eee.mp4', null, '2017-05-07 12:15:31', '123123123', '2', 'admin');
SET FOREIGN_KEY_CHECKS=1;
