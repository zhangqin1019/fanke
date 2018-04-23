/**
 * Created by Administrator on 2016/9/18.
 */
$(function(){
    $(":radio").click(function(){
       $(this).val($(this).next("label").text());
    });
    
    $(".border").click(function(){
    	$(this).css("border","1px solid red");
    });
});
window.onload=function(){
    var $=function(Id){
        return document.getElementById(Id);
    };
    var myCanvas=$("myCanvas");
    var lgCanvas=$("lgCanvas");
    var myContext=myCanvas.getContext("2d");
    var lgContext=lgCanvas.getContext("2d");
    var img=new Image();
    var hidden=$("hidden");
    var url=hidden.value;
    img.src=url;
    img.onload=function(){
        myContext.drawImage(img,0,0,myCanvas.width ,myCanvas.height);
    };
    var mr=30;
    var ismouseDown=false;
    var show=function(){
        var bbox=myCanvas.getBoundingClientRect();
        var minX=event.clientX-bbox.left;
        var minY=event.clientY-bbox.top ;
        var lgX=minX*2;
        var lgY=minY*2;
        clear();
        myContext.save();
        myContext.fillStyle="rgba(232,232,232,0.5)";
        myContext.fillRect(minX-mr/2,minY-mr/2,mr,mr);
        myContext.beginPath();
        myContext.stroke();
        myContext.clip();
        lgContext.drawImage(img,lgX-mr,lgY-mr,2*mr,2*mr,0,0,300,300);
        myContext.restore();
    };
    var clear=function(){
        /*ismouseDown=false;*/
        myContext.clearRect(0,0,myCanvas.width,myCanvas.height);
        myContext.drawImage(img,0,0,myCanvas.width ,myCanvas.height);
        lgContext.clearRect(0,0,lgCanvas.width,lgCanvas.height);
    };
    myCanvas.onmousedown=function(event){
        ismouseDown=true;
        show();
    };
    myCanvas.onmousemove=function(){
        if(ismouseDown==true)
        {
            show();
        }
    };
    myCanvas.onmouseup =function(){
        clear();
    };
    myCanvas.onmouseout=function(){
        clear();
    };
};
$(function(){
   $("#myCanvas").hover(
       function(){
           $("#lgCanvas").css("display","block");
       },
       function(){
           $("#lgCanvas").css("display","none");
       }
   )
});
