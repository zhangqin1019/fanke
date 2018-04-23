<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" href="css/login.css" rel="stylesheet">
    <script type="text/javascript" src="js/login.js"></script>
  </head>
  
  <body>
    <div id="main">
    <div id="main-content">
        <header>
            <img src="images/login-title.jpg"/>
            <a href="#">帮助</a>
        </header>
        <section>
            <div id="left">
                <img src="images/login-ad.jpg"/>
            </div>
            <div id="right">
               <p>没有账户免费<a href="register.jsp">注册</a></p>
               <form action="LoginServlet" method="post">
                   <a href="#" style="background-color: #B42025;color: white;" id="ptBtn">普通登录</a><a href="#" style="background-color: #F5F5F5;color: black;" id="ksBtn">快速登录</a>
                   <div id="pt">
                       <p>
                           <input type="text" name="userName" placeholder="请输入用户名"/>
                       </p>
                       <p>
                           <input type="text" name="userPwd" placeholder="请输入密码"/>
                       </p>
                       <a href="#" style="color: #B42025;">找回密码</a>
                   </div>
                   <div id="ks" style="display: none;">
                       <p>
                           <input type="text" name="phone" placeholder="输入手机号"/>
                       </p>
                       <p>
                           <input type="text" name="test" placeholder="请输入手机验证码"/>
                       </p>
                   </div>
                   <p>
                       <input type="submit" value="登录"/>
                   </p>
                   <hr/>
                   <div id="tu">
                       <p>使用合作网站账号登录凡客</p>
                       <p>
                           <img src="images/weixin.jpg"/>
                           <img src="images/mi.jpg"/>
                           <img src="images/zfb.jpg"/>
                           <img src="images/qq.jpg"/>
                           <img src="images/360.jpg"/>
                           <img src="images/weibo.jpg"/>
                       </p>
                   </div>
               </form>
            </div>
        </section>
        <hr/>
        <footer>
            <p>Copyright 2007 - 2016 vancl.com All Rights Reserved 京ICP证100557号 京公网安备11010102000579号 出版物经营许可证新出发京批字第直110138号</p>
            <p>
                <a href="#"><img src="images/foot-1.jpg"/></a>
                <a href="#"><img src="images/foot-2.jpg"/></a>
                <a href="#"><img src="images/foot-3.jpg"/></a>
                <a href="#"><img src="images/foot-4.jpg"/></a>
            </p>
        </footer>
    </div>
</div>
  </body>
</html>
