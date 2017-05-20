$(function() {
	var URL = 'http://123.206.110.123/api';
	var imgurl = 'https://www.pingcai.me/img/docker.png';
	var deAuthor = 'newthread';
	var hashId = window.location.hash;
	var reg = /(#n=)(\d+)(&p=)(\d+)/g;
	var reg2 = /(#n=)(\d+)(&p=)(\d+)/;
	var hashArr = reg.exec(hashId);
	var index = hashArr[2];
	var newsSid = hashArr[4];
	//alert(newsSid);
	/*获取新闻中心数据*/
	if ($('.positionl a')[1].textContent == "新闻中心") {
		var hashId = window.location.hash;
		var reg = /(#n=)(\d+)(&p=)(\d+)(&t=)(\d+)/g;
		var reg2 = /(#n=)(\d+)(&p=)(\d+)(&t=)(\d+)/;
		if (reg2.test(hashId)) {
			$('.find-404')[0].style.display = 'none';
		} else {

		}
		var hashArr = reg.exec(hashId);
		var index = hashArr[2];
		var newsSid = hashArr[4];
		var type = hashArr[6];
		$('.nav li')[type].className = 'on';
		$('.positionl a')[2].innerHTML = $('.on').text();
		/*var typeObj = {
			'团队新闻': 0,
			'例会动态': 1,
			'文化活动': 2,
			'项目快报': 3,
			'交流合作': 4
		}
		var typeName = $('.on').text();*/
		$.ajax({
			type: 'get',
			url: URL + '/news/' + newsSid,
			/*data: {
				id: newsSid
			},*/
			success: function(data) {
				var html = '';
				//console.log(data);
				//data.list.forEach(function(value, index) {
				//if (data.list[index].newsSid == newsSid) {
				var newsAuthor = data.newsAuthor || deAuthor;
				//console.log(data.list[index].newsContend)
				var newsPicture = '';
				html += '<div class="news_headl">' +
					'<h1>' + data.newsTitle + '</h1>' +
					'<div class="news_summary">' +
					'<p>来源：' + newsAuthor + '<span>时间：' + (data.timeDate || '未知') + '</span><span>浏览：' + (data.newsReaders || 1000) + '</span></p>' +
					'</div>' +
					'</div>' +
					'<div class="news_text">' +
					'<p>' + data.newsContend + '</p>' +
					'</div>';
				document.title = data.newsTitle;
				$(".news_middlel").html(html);
				if (data.newsPicture) {
					for (var i = 0; i < data.newsPicture.length; i++) {
						newsPicture += '<img src="' + data.newsPicture[i] + '">';
					}
					$(".news_text").append(newsPicture);
				}

				/*for (var i = 0; i < data.list.length; i++) {
					if (data.list[i].timeDate) {
						$(".news_summary h3")[i].style.display = 'block';
					} else {
				$(".news_summary h3")[i].style.display = 'none';
					}
				}*/
			},
			error: function(data) {
				alert("点个毛啊，没有了");
			}
		});
	}

	//获取荣誉成果-创新比赛数据
	if ($('.positionl a')[1].textContent == "荣誉成果") {
		if (reg2.test(hashId)) {
			$('.find')[0].style.display = 'none';
		} else {

		}
		$.ajax({
			type: 'get',
			url: URL + 'honor/gbs.do',
			data: {
				id: newsSid
			},
			success: function(data) {
				var html = '';
				//console.log(data);
				//data.list.forEach(function(value, index) {
				//if (data.list[index].honorSid == newsSid) {
				var newsAuthor = data.honorAuthor || deAuthor;
				//console.log(data.list[index].honorIntroduce)
				html += '<div class="news_headl">' +
					'<h1>' + data.hornorTitle + '</h1>' +
					'<div class="news_summary">' +
					'<p>来源：' + newsAuthor + '<span>时间：' + (data.honerTime || '未知') + '</span><span>浏览：' + (data.honorReaders || 1000) + '</span></p>' +
					'</div>' +
					'</div>' +
					'<div class="news_text">' +
					'<p>' + data.honorIntroduce + '</p>' +
					'</div>';
				document.title = data.hornorTitle;
				//}
				//});
				$(".news_middlel").html(html);
				/*for (var i = 0; i < data.list.length; i++) {
					if (data.list[i].timeDate) {
						$(".news_summary h3")[i].style.display = 'block';
					} else {
						$(".news_summary h3")[i].style.display = 'none';
					}
				}*/
			},
			error: function(data) {
				alert("点个毛啊，没有了");
			}
		});
	}
});