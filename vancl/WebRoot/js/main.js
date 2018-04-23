window.onload=function(){
    var $=function(id){
        return document.getElementById(id);
    };
    /*头部隐藏显示效果*/
    var weixin=$("weixin");
    var hide=$("hide");
    weixin.onmouseover=function(){
        hide.style.display="block";
    };
    weixin.onmouseout=function(){
        hide.style.display="none";
    };
    var side=$("side");
    /*右侧回到顶部效果*/
    side.onclick=function(){
        function goTop(){
            if(document.body.scrollTop!=0)
            {
                document.body.scrollTop-=50;
            }
            else
            {
                clearInterval(stop);
            }
        };
        var stop=setInterval(goTop,10);
    };
};
$(function(){
    /*图片轮播效果*/
    var imgs=document.getElementsByName("img");
    var btns=document.getElementsByName("btn");
    var index=0;
    var show=function(){
        for(var i=0;i<imgs.length;i++)
        {
            if(index==i)
            {
                imgs[index].style.display="block";
                btns[index].style.backgroundColor="#B42025";
            }
            else
            {
                imgs[i].style.display="none";
                btns[i].style.backgroundColor="#E0E0E0";
            }
        }
        if(index<imgs.length-1)
        {
            index++;
        }
        else
        {
            index=0;
        }
    };
    var stopTime=setInterval(show,2000);
    for(var i=0;i<imgs.length;i++)
    {
        imgs[i].onmouseover=function(){
            clearInterval(stopTime);
        };
        imgs[i].onmouseout=function(){
            stopTime=setInterval(show,2000);
        };
    }
    for(var i=0;i<btns.length;i++)
    {
        btns[i].onmouseover=function(){
            this.style.backgroundColor="#B42025";
            index=this.value;
            show();
        };
    }
    $("#forward").click(
        function(){
            $("#banner img").each(
                function(){
                    if(this.style.display=="block")
                    {
                        index=$(this).next("span").text()-1;
                    }
                }
            );
            show();
        }
    );
    $("#back").click(
        function(){
            $("#banner img").each(
                function(){
                    if(this.style.display=="block")
                    {
                        var count=$(this).next("span").text();
                        if(count<$("#banner img").length-1)
                        {
                            count++;
                        }
                        else
                        {
                            count=0;
                        }
                        index=count;
                    }
                }
            );
            show();
        }
    );
});
