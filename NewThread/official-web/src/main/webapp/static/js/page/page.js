//轮播end

//var list = [{
//            imgUrl: 'img/1.jpg',
//            href: '#'
//            }, {
//            imgUrl: 'img/2.jpg',
//            href: '#'
//            }, {
//            imgUrl: 'img/3.jpg',
//            href: '#'
//            }, {
//            imgUrl: 'img/4.jpg',
//            href: '#'
//            }, {
//            imgUrl: 'img/5.jpg',
//            href: '#'
//            }, {
//            imgUrl: 'img/6.jpg',
//            href: '#'
//            }]
//        
//        $('#box').scroll({
//            url: list,
//            boxWid:1000,
//            boxHei:400
//        }).css({
//            margin:'0 auto'
//        })

;
(function($) {
  $.fn.extend({
    fade: function(opt) {
      //设置默认值
      var settings = {
        url: null,
        boxWid: 1000,
        boxHei: 500,
        times: 2000
      };
      //合并参数
      var o = $.extend(settings, opt);
      //缓存容器对象
      var $box = this;
      var $oUl = $('<ul></ul>');
      var $prev = $('<h3>&lt;</h3>');
      var $next = $('<h3>&gt;</h3>');
      //创建图片元素
      $.each(o.url, function(index, items) {
        $box.append('<div><a href=' + items.href + '><img src=' + items.imgUrl + ' /></a></div>');
        $oUl.append('<li></li>');
      });
      $box.append($oUl, $prev, $next);
      /*****设置样式*****/
      //容器及图片样式
      $box.css({
        width: o.boxWid,
        height: o.boxHei,
        position: 'relative'
      }).children('div').css({
        width: o.boxWid,
        height: o.boxHei,
        position: 'absolute',
        left: '0',
        top: '0',
        display: 'none'
      }).eq(0).show().end().find('a,img').css({
        display: 'block',
        width: '100%',
        height: '100%'
      });
      //焦点及左右按钮样式
      $oUl.css({
        position: 'absolute',
        bottom: o.boxHei / 20,
        right: (settings.boxWid - 255) / 2,
        overflow: 'hidden',
        zIndex: 5,
        listStyle: 'none'
      }).children('li').css({
        float: 'left',
        width: 80,
        height: 10,
        borderRadius: '0%',
        background: '#33ccff',
        opacity: 0.3,
        marginRight: 5
      }).eq(0).css('opacity', 0.9);
      $box.children('h3').css({
        position: 'absolute',
        top: (o.boxHei - 70) / 2,
        padding: '20px 10px',
        fontSize: 30,
        fontFamily: '黑体',
        color: '#fff',
        background: '#33ccff',
        cursor: 'pointer'
      }).hide().eq(1).css('right', '0');
      //自动轮播
      var $timer = setTimeout(move, o.times);
      var $flag = true;
      var $index = 0;

      function move() {
        $index++;
        if ($index == o.url.length) {
          $index = 0;
        }
        //图片切换
        $box.children('div').eq($index).stop().fadeIn(300, function() {
          if ($flag) {
            clearTimeout($timer);
            $timer = setTimeout(move, o.times);
          }
        }).siblings('div').stop().fadeOut(300);
        //焦点切换
        $oUl.children('li').eq($index).stop().fadeTo(300, 0.9).siblings('li').stop().fadeTo(300, 0.3);
      }
      //焦点切换
      $oUl.children('li').click(function() {
        $index = $(this).index();
        $box.children('div').eq($index).stop().fadeIn(300).siblings('div').stop().fadeOut(300);
        $(this).stop().fadeTo(300, 0.9).siblings('li').stop().fadeTo(300, 0.3);
      });
      //左右点击切换
      $box.hover(function() {
        $flag = false;
        clearTimeout($timer);
        $(this).children('h3').stop().fadeIn(300);
        $prev.off('click').click(function() {
          $index--;
          if ($index == -1) {
            $index = o.url.length - 1;
          }
          $box.children('div').eq($index).stop().fadeIn(300).siblings('div').stop().fadeOut(300);
          $oUl.children('li').eq($index).stop().fadeTo(300, 0.9).siblings('li').stop().fadeTo(300, 0.3);
        }).next('h3').off('click').click(function() {
          $index++;
          if ($index == o.url.length) {
            $index = 0;
          }
          $box.children('div').eq($index).stop().fadeIn(300).siblings('div').stop().fadeOut(300);
          $oUl.children('li').eq($index).stop().fadeTo(300, 0.9).siblings('li').stop().fadeTo(300, 0.3);
        })
      }, function() {
        $flag = true;
        $timer = setTimeout(move, o.times);
        $(this).children('h3').stop().fadeOut(300)
      });
      //阻止文本被选中
      $box.children('h3').each(function(index, items) {
        items.onselectstart = items.onmousedown = items.onmouseup = function() {
          return false;
        }
      });
      //返回容器对象
      return this;
    }
  })
}(jQuery))

//分組轮播
function go() {
  if (document.getElementById('list')) {
    var list_style = document.getElementById('list').style;
    list_style.cssText = 'left:-1060px;';
    $(function() {
      var container = $('#group,.button');
      var list = $('#list');
      var prev = $('#team_prev');
      var next = $('#team_next');
      var index = 1;
      var len = 2;
      var interval = 3000;
      var timer;


      function animate(offset) {
        var left = parseInt(list.css('left')) + offset;
        if (offset > 0) {
          offset = '+=' + offset;
        } else {
          offset = '-=' + Math.abs(offset);
        }
        list.animate({
          'left': offset
        }, 500, function() {
          if (left > -1060) {
            list.css('left', -1060 * len - 1060);
          }
          if (left < (-1060 * len - 1060)) {
            list.css('left', -1060);
          }
        });
      }

      function play() {
        timer = setTimeout(function() {
          next.trigger('click');
          play();
        }, interval);
      }

      function stop() {
        clearTimeout(timer);
      }

      next.bind('click', function() {
        if (list.is(':animated')) {
          return;
        }
        animate(-1060);
      });

      prev.bind('click', function() {
        if (list.is(':animated')) {
          return;
        }
        animate(1060);
      });

      container.hover(stop, play);

      play();

    });
  }
}
go();
//分組轮播end

//首页数据获取
var picurl = './static/image/Introduction.jpg';
var URL = 'http://123.206.110.123/api';
$(document).ready(function() {
  //获取团队介绍
  $.ajax({
    type: 'get',
    url: URL + '/develop/info.do',
    success: function(data) {
      Team_Introduction(data);
    },
    error: function(data) {
      console.log(data);
    }
  })

  //获取团队动态
  setTimeout(function() {
    $.ajax({
      type: 'get',
      data: {
        s: 4,
        n: 1
      },
      url: URL + '/news/g.do',
      success: function(data) {
        //console.log(111);
        Team_Dynamics(data);
      },
      error: function(data) {
        console.log(data);
      }
    })
  })
}, 1000);

//团队介绍函数
function Team_Introduction(data) {
  var Introduction = "";
  var Introductionl = "";
  var content = data.developmentContent;
  var news = /.{100}/;
  var html = content.match(news);
  Introduction = Introduction + '<img src="' + data.developmentPicture + '" alt="newthread"/>' +
    '<div class="team_content">' +
    '<p>' + content + '</p>' +
    '</div>';
  Introductionl = Introductionl + '<img src="' + data.developmentPicture + '" alt="newthread"/>' +
    '<div class="juzheng"></div>' +
    '<div class="word">' +
    '<h1>中南民族大学新思路团队</h1>' +
    '<p>' + html[0] + '......' + '</p>' +
    '<a href="team_introduction.html">More></a>' +
    '</div>';
  $('.introduction_content').html($(Introduction));
  $('.Introduction').html($(Introductionl));

}
//团队动态函数
function Team_Dynamics(data) {
  //console.log(data);
  var Dynamics = "";
  for (var i = 0; i < data.list.length; i++) {
    var time = data.list[i].newsTime;
    var s = /(\d{4})-(\d{2}-\d{2})(.\d{2}:\d{2}:\d{2})/g;
    var newsPicture = data.list[i].newsPicture || picurl;
    var ret = new Array();
    if (!time) {
      ret[1] = '';
      ret[2] = '';
    } else {
      ret = s.exec(time);
    }
    Dynamics = Dynamics + '<div class="ds_content">' +
      '<img src="' + newsPicture + '" alt="dynamics"/>' +
      '<div class="substance">' +
      '<h2>' + data.list[i].newsTitle + '</h2>' +
      '<p>' + data.list[i].newsContend + '......</p>' +
      '<div class="time">' +
      '<p class="hour">' + ret[2] + '</p>' +
      '<p class="year">' + ret[1] + '</p>' +
      '<a href="./newscontent.html#n=' + 1 + '&p=' + data.list[i].newsSid + '&t=' + 0 + '"' + 'target="_blank"' + '>></a>' +
      '</div>' +
      '</div>' +
      '</div>';
  }
  $('.dynamics').html($(Dynamics));
}