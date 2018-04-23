<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/register.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div id="main">
    <div id="main-content">
        <header>
            <img src="images/login-title.jpg"/>
        </header>
        <section>
            <div id="left">
                <img src="images/login-ad.jpg"/>
            </div>
            <div id="right">
               <form action="RegisterServlet" method="post">
                   <p style="position: relative;border-bottom: 2px solid #B42025;">注册新用户<span style="position: absolute;right: 0px;bottom: 0px;">我已经注册，现在就<a href="login.jsp">登录</a></span></p>
                   <p>
                       <input type="text" name="uesrId" placeholder="请输入手机号"/>
                   </p>
                   <p>
                       <input type="text" name="userName" placeholder="填写用户名"/>
                   </p>
                   <p>
                       <input type="text" name="pwd" placeholder="设定登录密码"/>
                   </p>
                   <span style="font-size: 12px;color: #a5a5a5;">安全强度:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高</span>
                   <p>
                       <input type="text" name="rePwd" placeholder="再次输入密码"/>
                   </p>
                   <p>
                       <input type="text" name="test" placeholder="验证码"/>
                   </p>
                   <p style="font-size: 14px;">
                       <input type="checkbox" name="server" value="checkbox"/>请阅读<a href="#" id="server">&lt;&lt;VANCL凡客诚品服务条款&gt;&gt;</a>
                   </p>
                   <p>
                       <input type="submit" value="立即注册"/>
                   </p>
               </form>
            </div>
        </section>
        <footer>
            <p>Copyright 2007 - 2016 vancl.com All Rights Reserved 京ICP证100557号 京公网安备11010102000579号 出版物经营许可证新出发京批字第直110138号</p>
        </footer>
    </div>
</div>
  </body>
</html>
