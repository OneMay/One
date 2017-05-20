$(document).ready(function() {
    page();

    function page() {
        asyncGetData(1);

        function asyncGetData(index) {
            var URL = 'http://123.206.110.123/api';
            var imgurl = './static/image/Introduction.jpg';

            /*获取新闻中心数据*/
            if ($('.positionl a')[1].textContent == "新闻中心") {
                var typeObj = {
                    'Team News': 0,
                    'Regular meeting': 1,
                    'Cultural Activities': 2,
                    'Project Express': 3,
                    'Exchange and cooperation': 4
                }
                var typeName = $('.title>h2').text();
                $.ajax({
                    type: 'get',
                    url: URL + '/news/g.do',
                    data: {
                        s: 5,
                        n: index,
                        type: typeObj[typeName]
                    },
                    success: function(data) {
                        // console.log(data);
                        var html = "";
                        if (data.list) {
                            for (var i = 0; i < data.list.length; i++) {
                                var textNum = data.list[i].newsContend;
                                /*var news = /.{100}/;
                                var newsContend = null;
                                if (textNum.length > 60) {
                                    var text = textNum.match(news);
                                    newsContend = text[0];
                                } else {
                                    newsContend = textNum;
                                }*/
                                var picurl = data.list[i].newsPicture || imgurl;
                                html += '<div class="news_content"><a href="./newscontent.html#n=' + index + '&p=' + data.list[i].newsSid + '&t=' + typeObj[typeName] + '"' + 'target="_blank"' + '"><img src="' + picurl + '" alt=""><article><h1>' + data.list[i].newsTitle + '</h1><h3>发表于' + data.list[i].timeDate + '</h3><p>' + textNum + '......</p></article></a></div>';
                            }
                        } else {
                            html += '<img id="find_img" src="./static/image/null.jpg"><p class="not_find">哦豁，暂时还没有此类新闻哦！</p>';
                        }
                        $(".news_middle").html(html);
                        $("#change_btn").createPage({
                            pageCount: data.totalPage || 0,
                            current: data.curPage || 0,
                            backFn: function(p) {
                                var html = "";
                                if (data.list) {
                                    for (var i = 0; i < data.list.length; i++) {
                                        var picurl = data.list[i].newsPicture || imgurl;
                                        html += '<div class="news_content"><a href="./newscontent.html#n=' + index + '&p=' + data.list[i].newsSid + '&t=' + typeObj[typeName] + '"' + 'target="_blank"' + '"><img src="' + picurl + '" alt=""><article><h1>' + data.list[i].newsTitle + '</h1><h3>发表于' + data.list[i].timeDate + '</h3><p>' + data.list[i].newsContend + '</p></article></a></div>';
                                    }
                                } else {
                                    html += '<img id="find_img" src="./static/image/null.jpg"><p class="not_find">哦豁，暂时还没有此类新闻哦！</p>';
                                }
                                $(".news_middle").html(html);
                                asyncGetData(p);
                            },
                        })
                        if (data.list) {
                            for (var i = 0; i < data.list.length; i++) {
                                if (data.list[i].timeDate) {
                                    $(".news_middle h3")[i].style.display = 'block';
                                } else {
                                    $(".news_middle h3")[i].style.display = 'none';
                                }
                            }
                        }
                        // for(var i = 0;i<10;i++){
                        //     $('.news_middle').append('<div class="news_content"><img src="data[i].newsPicture" alt=""><article><h1>"data[i].newsTitle"</h1><h3>data[i].timeDate</h3><p>"data[i].newsContend"</p></article></div>');
                        // }
                    },
                    error: function(data) {
                        alert("点个毛啊，没有了");
                    }
                });
            }

            /*获取荣誉成果数据*/
            if ($('.positionl a')[1].textContent == "荣誉成果") {
                $.ajax({
                    type: 'get',
                    url: URL + '/honor/g.do',
                    data: {
                        s: 5,
                        n: index
                    },
                    success: function(data) {
                        // console.log(data);
                        var html = "";
                        if (data.list) {
                            for (var i = 0; i < data.list.length; i++) {
                                var textNum = data.list[i].honorIntroduce;
                                /*var news = /.{100}/;
                                var text = textNum.match(news);
                                var newsContend = null;
                                if (textNum.length > 100) {
                                    var text = textNum.match(news);
                                    newsContend = text[0];
                                } else {
                                    newsContend = textNum;
                                }*/
                                var picurl = data.list[i].honorPicture || imgurl;
                                html += '<div class="news_content"><a href="./honorcontent.html#n=' + index + '&p=' + data.list[i].honorSid + '"' + 'target="_blank"' + '>' + '<img src="' + picurl + '" alt=""><article><h1>' + data.list[i].hornorTitle + '</h1><h3>发表于' + data.list[i].honerTime + '</h3><p>' + textNum + '......</p></article></a></div>';
                            }
                        } else {
                            html += '<img id="find_img" src="./static/image/null.jpg"><p class="not_find">哦豁，暂时还没有此类新闻哦！</p>';
                        }

                        $(".news_middle").html(html);
                        $("#change_btn").createPage({
                            pageCount: data.totalPage,
                            current: data.curPage,
                            backFn: function(p) {
                                var html = "";
                                if (data.list) {
                                    for (var i = 0; i < data.list.length; i++) {
                                        var picurl = data.list[i].honorPicture || imgurl;
                                        html += '<div class="news_content"><a href="./honorcontent.html#n=' + index + '&p=' + data.list[i].honorSid + '"' + 'target="_blank"' + '>' + '<img src="' + picurl + '" alt=""><article><h1>' + data.list[i].hornorTitle + '</h1><h3>发表于' + data.list[i].honerTime + '</h3><p>' + data.list[i].honorIntroduce + '</p></article></a></div>';
                                    }
                                } else {
                                    html += '<img id="find_img" src="./static/image/null.jpg"><p class="not_find">哦豁，暂时还没有此类新闻哦！</p>';
                                }

                                $(".news_middle").html(html);
                                asyncGetData(p);
                            },
                        })
                        for (var i = 0; i < data.list.length; i++) {
                            if (data.list[i].honerTime) {
                                $(".news_middle h3")[i].style.display = 'block';
                            } else {
                                $(".news_middle h3")[i].style.display = 'none';
                            }
                        }
                        // for(var i = 0;i<10;i++){
                        //     $('.news_middle').append('<div class="news_content"><img src="data[i].newsPicture" alt=""><article><h1>"data[i].newsTitle"</h1><h3>data[i].timeDate</h3><p>"data[i].newsContend"</p></article></div>');
                        // }
                    },
                    error: function(data) {
                        alert("点个毛啊，没有了");
                    }
                });
            }

            /*获取团队风采数据*/
            if ($('.positionl a')[1].textContent == "团队风采") {
                var URL1 = '/mien/lp.do';
                var URL2 = '/mien/videos.do';
                var lastUrl = '';
                if ($('.font_color').text() == "Team Photos") {
                    lastUrl = URL + URL1;
                } else {
                    lastUrl = URL + URL2;
                }

                if ($('.font_color').text() == "Team Photos") {
                    $.ajax({
                        type: 'get',
                        url: lastUrl,
                        data: {
                            s: 9,
                            n: index
                        },
                        success: function(data) {
                            // console.log(data);
                            var html = "";

                            for (var i = 0; i < data.length; i++) {
                                var time = data[i].mienTime;
                                var s = /(\d{4})-(\d{2})-(\d{2})(.\d{2}:\d{2}:\d{2})/g;
                                var ret = s.exec(time);
                                var month = '';
                                var day = '';
                                var picurl = data[i].thumb || imgurl;
                                //var picurl = "";
                                if (/^0/g.test(ret[2])) {
                                    month += ret[2].split(/0/g)[1];
                                } else {
                                    month += ret[2];
                                }
                                if (/^0/g.test(ret[3])) {
                                    day += ret[3].split(/0/g)[1];
                                } else {
                                    day += ret[3];
                                }
                                /*if (data.list[i].thumb) {
                                    picurl += data.list[i].thumb;
                                } else {
                                    picurl += imgurl;
                                }*/
                                html += '<div class="pic_w">' +
                                    '<div class="team_bg"></div>' +
                                    '<div class="team_photo">' +
                                    '<img src="' + picurl + '">' +
                                    '<div class="photo_text">' +
                                    '<h2>' + data[i].mienIntroduce + '</h2>' +
                                    '<p>' + ret[1] + '年' + month + '月' + day + '号' + '</p>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>';
                            }
                            $(".team_pic").html(html);
                            $("#change_btn").createPage({
                                    pageCount: data.totalPage,
                                    current: data.curPage,
                                    backFn: function(p) {
                                        var html = "";
                                        for (var i = 0; i < data.length; i++) {
                                            var time = data[i].mienTime;
                                            var s = /(\d{4})-(\d{2})-(\d{2})(.\d{2}:\d{2}:\d{2})/g;
                                            var ret = s.exec(time);
                                            var month = '';
                                            var day = '';
                                            var picurl = data[i].thumb || imgurl;
                                            //var picurl = "";
                                            if (/^0/g.test(ret[2])) {
                                                month += ret[2].split(/0/g)[1];
                                            } else {
                                                month += ret[2];
                                            }
                                            if (/^0/g.test(ret[3])) {
                                                day += ret[3].split(/0/g)[1];
                                            } else {
                                                day += ret[3];
                                            }
                                            /*if (data.list[i].thumb) {
                                                picurl += data.list[i].thumb;
                                            } else {
                                                picurl += imgurl;
                                            }*/
                                            html += '<div class="pic_w">' +
                                                '<div class="team_bg"></div>' +
                                                '<div class="team_photo">' +
                                                '<img src="' + picurl + '">' +
                                                '<div class="photo_text">' +
                                                '<h2>' + data[i].mienIntroduce + '</h2>' +
                                                '<p>' + ret[1] + '年' + month + '月' + day + '号' + '</p>' +
                                                '</div>' +
                                                '</div>' +
                                                '</div>';
                                        }
                                        $(".team_pic").html(html);
                                        asyncGetData(p);
                                    },
                                })
                                // for(var i = 0;i<10;i++){
                                //     $('.news_middle').append('<div class="news_content"><img src="data[i].newsPicture" alt=""><article><h1>"data[i].newsTitle"</h1><h3>data[i].timeDate</h3><p>"data[i].newsContend"</p></article></div>');
                                // }
                        },
                        error: function(data) {
                            alert("点个毛啊，没有了");
                        }
                    });
                }


                if ($('.font_color').text() == "Team Video") {
                    $.ajax({
                        type: 'get',
                        url: lastUrl,
                        data: {
                            s: 9,
                            n: index
                        },
                        success: function(data) {
                            // console.log(data);
                            var html = "";
                            for (var i = 0; i < data.length; i++) {
                                var time = data[i].vUploadTime;
                                var s = /(\d{4})-(\d{2})-(\d{2})(.\d{2}:\d{2}:\d{2})/g;
                                var ret = s.exec(time);
                                var month = '';
                                var day = '';
                                //var picurl = "";
                                if (/^0/g.test(ret[2])) {
                                    month += ret[2].split(/0/g)[1];
                                } else {
                                    month += ret[2];
                                }
                                if (/^0/g.test(ret[3])) {
                                    day += ret[3].split(/0/g)[1];
                                } else {
                                    day += ret[3];
                                }
                                var picurl = data[i].vPicture || imgurl;
                                html += '<div class="team_video">' +
                                    '<img src="' + picurl + '"' + 'data="' + data[i].vPath + '"' + '>' +
                                    '<a href="#" data-reveal-id="myModal"><img  src="./static/image/play.png" class="play img1"></a>' +
                                    '<div id="myModal" class="reveal-modal">' +
                                    '<a class="close-reveal-modal">&#215;</a>' +
                                    '</div>' +
                                    '<div class="video_text">' +
                                    '<h2>' + data[i].vOriginName + '</h2>' +
                                    '<p>' + ret[1] + '年' + month + '月' + day + '日' + '</p>' +
                                    '</div>' +
                                    '</div>';
                            }

                            $(".team_videos").html(html);
                            $("#change_btn").createPage({
                                pageCount: data.totalPage,
                                current: data.curPage,
                                backFn: function(p) {
                                    var html = "";
                                    for (var i = 0; i < data.length; i++) {
                                        var time = data[i].vUploadTime;
                                        var s = /(\d{4})-(\d{2})-(\d{2})(.\d{2}:\d{2}:\d{2})/g;
                                        var ret = s.exec(time);
                                        var month = '';
                                        var day = '';
                                        //var picurl = "";
                                        if (/^0/g.test(ret[2])) {
                                            month += ret[2].split(/0/g)[1];
                                        } else {
                                            month += ret[2];
                                        }
                                        if (/^0/g.test(ret[3])) {
                                            day += ret[3].split(/0/g)[1];
                                        } else {
                                            day += ret[3];
                                        }
                                        var picurl = data[i].vPicture || imgurl;
                                        html += '<div class="team_video">' +
                                            '<img src="' + picurl + '">' +
                                            '<a href="#" data-reveal-id="myModal"><img  src="./static/image/play.png" class="play img1"></a>' +
                                            '<div id="myModal" class="reveal-modal">' +
                                            '<a class="close-reveal-modal">&#215;</a>' +
                                            '</div>' +
                                            '<div class="video_text">' +
                                            '<h2>' + data[i].vOriginName + '</h2>' +
                                            '<p>' + ret[1] + '年' + month + '月' + day + '日' + '</p>' +
                                            '</div>' +
                                            '</div>';
                                    }
                                    $(".team_videos").html(html);
                                    asyncGetData(p);
                                },
                            })
                        },
                        complete: function() {
                            var path;
                            var media1;
                            //alert(11);
                            $('.team_video').mouseover(function() {
                                var pathObj = $(this).find('img')[0];
                                //alert(pathObj);
                                var pathText = $(pathObj).context.outerHTML;
                                var reg = /(.+)(data=\")(.+)(\".+)/g;
                                var pathArr = reg.exec(pathText);
                                path = pathArr[3];
                                //alert(path);
                                media1 = '<a class="media" href=' + path + '></a>';

                            })

                            $('.img1').bind("click", function() {

                                $('#myModal').prepend(media1);
                                $('.media').media({
                                    width: 600,
                                    height: 450
                                });
                            });
                        },
                        error: function(data) {
                            alert("点个毛啊，没有了");
                        }
                    });

                }

            }

        }
        // $("#change_btn").createPage({
        //     pageCount: 0,
        //     current: 1,
        //     backFn: function(p){
        //         $.ajax({
        //             type: 'get',
        //             url: 'http://localhost:8080/NT_Official_Website_Update_v1.0/news/gp.do',
        //             data:{
        //                 s: 2,
        //                 n: 2
        //             },
        //             success: function (data) {
        //                 console.log(data);
        //                 for(var i = 0;i<10;i++){
        //                     $('.news_middle').append();
        //                 }
        //             },
        //             error: function (data) {
        //                 alert("数据库获取错误");
        //             }
        //         })
        //     }


        // });
    }
})