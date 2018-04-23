window.onload=function(){
    var $=function(id){
        return document.getElementById(id);
    };
    var pt=$("ptBtn");
    var ks=$("ksBtn");
    var ptContent=$("pt");
    var ksContent=$("ks");
    pt.onclick=function(){
        pt.style.backgroundColor="#B42025";
        pt.style.color="white";
        ptContent.style.display="block";
        ks.style.backgroundColor=" #F5F5F5";
        ks.style.color="black";
        ksContent.style.display="none";
    };
    ks.onclick=function(){
        ks.style.backgroundColor="#B42025";
        ks.style.color="white";
        ksContent.style.display="block";
        pt.style.backgroundColor=" #F5F5F5";
        pt.style.color="black";
        ptContent.style.display="none";
    };
};