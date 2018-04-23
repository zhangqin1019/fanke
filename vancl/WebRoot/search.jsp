<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/search.css"/>
  </head>
  
  <body>
    <div id="main">
    <div id="title">
        <div id="title-content">
            <p>您好，欢迎光临凡客诚品!<a href="login.jsp">登录</a><span>|</span><a href="register.jsp">注册</a><a href="#" id="order">我的订单</a><img src="images/title-1.jpg" id="weixin"/><img src="images/title-2.jpg"/></p>
            <div id="hide">
                <img src="images/logo3.jpg"/>
            </div>
        </div>
    </div>
    <div id="main-content">
        <header>
            <img src="images/logo.jpg" style="padding-top:40px ;padding-left: 25px;"/>
            <div id="search">
                <p>
                <form action="commodityServlet" method="post">
                    <input type="text" name="search"/><input type="submit" value="搜索" style="outline: none;background-color: #B42025;border: 1px solid #B42025;color: white;width: 50px;height: 30px;"/><a><img src="images/shop.jpg" style="padding-left: 20px;vertical-align: middle;"/></a>
                </form>
                </p>
                <p style="text-indent: 1em;">热门搜索:<a href="#">T恤</a><a href="#">雨声潺潺</a><a href="#">穆旦</a><a href="#">只有上帝</a><a href="#">帆布鞋</a><a href="#">衬衫</a></p>
            </div>
        </header>
        <nav>
            <a href="#">首页</a><span>|</span>
            <a href="#">抢购</a><span>|</span>
            <a href="searchServlet?search=衬衫">衬衫</a><span>|</span>
            <a href="searchServlet?search=T恤">T恤</a><span>|</span>
            <a href="searchServlet?search=外套">外套</a><span>|</span>
            <a href="searchServlet?search=麻">麻</a><span>|</span>
            <a href="searchServlet?search=裤装">裤装</a><span>|</span>
            <a href="searchServlet?search=鞋">鞋</a><span>|</span>
            <a href="searchServlet?search=袜品">袜品</a><span>|</span>
            <a href="#">Nautilus</a>
        </nav>
        <div id="list">
            <div id="list-top">
                <p style="border: none;">当前位置：所有分类</p>
                <p><span>服装</span><span style="border: none;">男装</span><span style="border: none;">女装</span></p>
            </div>
            <div id="list-bottom">
                <p style="border: none;"><a href="#">全部商品</a></p>
                <p><span>默认</span><span>销量</span><span>好评</span><span>最新</span><span>价格</span><span>合并同款</span></p>
            </div>
        </div>
        <div id="search-content">
        	<c:forEach items="${commodityList}" var="commodity" >
        		<dl>
                	<dt><a href="commodityServlet?commodityId=${commodity.commodityId }"><img src="${commodity.commodityImageUrl }"/></a></dt>
                	<dd>
                    	<a href="#">${commodity.commodityName }</a><br/>
                    	<a href="#">${commodity.commoditySize }&nbsp;${commodity.commodityColor }</a><br/>
                    	<span>售价:￥${commodity.commodityPrice }</span>
                	</dd>
              </dl>
        	</c:forEach>
        </div>
        <div id="logo">
            <div id="logo-content">
                <div id="top">
                    <a href="#"><img src="images/logo1.jpg"/></a>
                    <a href="#"><img src="images/logo2.jpg"/></a>
                    <a href="#" style="border: none;"><img src="images/logo3.jpg"/></a>
                </div>
                <div id="bottom">
                    <ul>
                        <li><a href="#">关于凡客</a><span>|</span></li>
                        <li><a href="#">新手指南</a><span>|</span></li>
                        <li><a href="#">配送范围及时间</a><span>|</span></li>
                        <li><a href="#">支付方式</a><span>|</span></li>
                        <li><a href="#">售后服务</a><span>|</span></li>
                        <li><a href="#">帮助中心</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <footer>
            <p>Copyright 2007 - 2016 vancl.com All Rights Reserved 京ICP证100557号 京公网安备11010102000579号 出版物经营许可证新出发京批字第直110138号</p>
            <p>凡客诚品(北京)有限公司</p>
            <p>
                <a href="#"><img src="images/foot-1.jpg"/></a>
                <a href="#"><img src="images/foot-2.jpg"/></a>
                <a href="#"><img src="images/foot-3.jpg"/></a>
                <a href="#"><img src="images/foot-4.jpg"/></a>
                <a href="#"><img src="images/foot-5.jpg"/></a>
                <a href="#"><img src="images/foot-6.jpg"/></a>
            </p>
        </footer>
    </div>
</div>
  </body>
</html>
