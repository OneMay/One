$(function(){
	//自动生成图片容器宽度
	var imgNum=$(".banner img").size();
	$imgWidth=parseInt($(".banner img").css("width"));
	//可将600替换为$imgWidth
	//alert($imgWidth);
	$(".banner").css({"width":imgNum*600+"px"});
    //自动生成圆点
	var sp = "<span></span>";
	for(var i=0;i<imgNum;i++){
		oldHtml = $(".circle_btn").html();
		oldHtml += sp;
		$(".circle_btn").html(oldHtml);
	}

	//圆形按钮控制
	$("span").eq(0).css("background","red");
	//sT();
	function showIndex(idx){
		for(var j=0;j<imgNum;j++){
           if(idx==j){
           	$("span").eq(idx).css("background","red");
           }else {
           	$("span").eq(j).css("background","#0ff");
           }
		}
	}
	//左按钮控制图片轮播
    $(".left_btn").click(function(){
    	var lx=parseInt($(".banner").css("left"));
    	//alert(lx);
    	if(lx<=-3000){
    		lx=600;
    	}
    	$(".banner").animate({"left":lx-600+"px"});
    	var l = (lx-600)/(-600);
    	showIndex(l);
    	num=l;
    	return num;
    });

    //右按钮控制图片轮播
    $(".right_btn").click(function(){
    	var lx = parseInt($(".banner").css("left"));
    	if(lx>=0){
    		lx=-6*600
    	}
    	$(".banner").animate({"left":lx+600+"px"});
    	var y=(lx+600)/(-600);
    	showIndex(y);
    	num = y;
    	return num;
    });

    //圆形按钮控制轮播
    var n;
    var num=0;
    $(".circle_btn span").click(function(){
    	$index=$(this).index();
    	n=$(this).index();
    	$(".banner").animate({"left":$index*(-600)+"px"});
    	//$(".banner").animate({"left":num*(-600)+"px"});
    	//showIndex($index);
    	//n=$index;
    	showIndex(n);
    	num=n;
    	return num;
    });

    function b(){
    	if(num==5){
    		num = 0;
    	}
    	else{
    		num +=1;
    	}
    	$(".banner").animate({"left":num*(-600)+"px"});
    	showIndex(num);
    }
    var t = setInterval(b,2000);
    var img=document.getElementById("pic");
    img.onmouseover=function(){
    	clearInterval(t);
    }
    img.onmouseout=function(){
    	t=setInterval(b,2000);
    }

});
