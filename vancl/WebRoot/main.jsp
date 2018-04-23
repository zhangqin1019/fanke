<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link href="css/main.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
  </head>
  
  <body>
    <div id="main">
    <div id="title">
        <div id="title-content">
        	<c:if test="${user==null}">
        		<p>您好，欢迎光临凡客诚品!<a href="login.jsp">登录</a><span>|</span><a href="register.jsp">注册</a><a href="#" id="order">我的订单</a><img src="images/title-1.jpg" id="weixin"/><img src="images/title-2.jpg"/></p>
        	</c:if>
        	<c:if test="${user!=null}">
        		<p>您好${user.userName}，欢迎光临凡客诚品!<a href="ExitServlet">退出登录</a><span>|</span><a href="ChangeServlet">更换用户</a><a href="#" id="order">我的订单</a><img src="images/title-1.jpg" id="weixin"/><img src="images/title-2.jpg"/></p>
        	</c:if>
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
        <div id="banner">
            <img src="images/banner1.jpg" name="img"/><span>0</span>
            <img src="images/banner2.jpg" name="img" hidden/><span>1</span>
            <img src="images/banner3.jpg" name="img" hidden/><span>2</span>
            <img src="images/banner4.jpg" name="img" hidden/><span>3</span>
            <img src="images/banner5.jpg" name="img" hidden/><span>4</span>
            <img src="images/banner6.jpg" name="img" hidden/><span>5</span>
            <img src="images/banner7.jpg" name="img" hidden/><span>6</span>
            <div id="btn">
                <input type="button" name="btn" value="0">
                <input type="button" name="btn" value="1">
                <input type="button" name="btn" value="2">
                <input type="button" name="btn" value="3">
                <input type="button" name="btn" value="4">
                <input type="button" name="btn" value="5">
                <input type="button" name="btn" value="6">
            </div>
            <div id="forward"></div>
            <div id="back"></div>
        </div>
        <div id="ad">
            <img src="images/ad.jpg"/>
        </div>
        <div id="ms">
            <p>1元秒杀</p>
            <div id="ms-content">
               <div style="width: 1250px;height: 600px;">
                   <dl>
                       <dt><a href="#"><img src="images/ms-1.jpg"/></a></dt>
                       <dd>T恤 Mauro Gatti 1<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-2.jpg"/></a></dt>
                       <dd>连裤袜-40D 哑光 高弹<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-3.jpg"></a></dt>
                       <dd>T恤 Anymade Studio 3<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-4.jpg"/></a></dt>
                       <dd>衬衫 府绸 短袖<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-5.jpg"/></a></dt>
                       <dd>空调衫 镂空七分袖开衫<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-6.jpg"/></a></dt>
                       <dd>麻衬衫裙<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-7.jpg"/></a></dt>
                       <dd>童装 短袖T恤 航海出行<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-8.jpg"></a></dt>
                       <dd>童装 针织短裤<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-9.jpg"/></a></dt>
                       <dd>打底背心 抽条<span>1元</span></dd>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/ms-10.jpg"/></a></dt>
                       <dd>安全裤-40D 平板<span>1元</span></dd>
                   </dl>
               </div>
            </div>
        </div>
        <div id="sz">
            <p>上装推荐</p>
            <div id="sz-content">
                <div style="width: 1300px;height: 550px;">
                    <dl>
                        <dt><a href="#"><img src="images/sz-1.jpg"/></a></dt>
                        <dd>免烫衬衫<strong>最低<span>299</span>元起</strong></dd>
                    </dl>
                    <dl style="margin-left: 10px;margin-right: 10px;">
                        <dt><a href="#"><img src="images/sz-2.jpg"/></a></dt>
                        <dd>水柔棉<strong>最低<span>149</span>元起</strong></dd>
                    </dl>
                    <dl style="position: absolute;right: 305px;top: 265px;">
                        <dt><a href="#"><img src="images/sz-4.jpg"/></a></dt>
                        <dd>休闲衬衫<strong>最低<span>99</span>元起</strong></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/sz-3.jpg"/></a></dt>
                        <dd>皮肤衣<strong>最低<span>299</span>元起</strong></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div id="xz">
            <p>下装推荐</p>
            <div id="xz-content">
                <div style="width: 1300px;height: 500px;">
                    <dl>
                        <dt><a href="#"><img src="images/xz-1.jpg"/></a></dt>
                        <dd>休闲裤<span>最低<em>99</em>元起</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/xz-2.jpg"/></a></dt>
                        <dd>牛仔裤<span>最低<em>99</em>元起</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/xz-3.jpg"/></a></dt>
                        <dd>无褶条纹羊毛西裤<span>最低<em>399</em>元起</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/xz-4.jpg"/></a></dt>
                        <dd>休闲裤 100支<span>最低<em>399</em>元起</span></dd>
                    </dl>
                </div>
            </div>
        </div>
        <div id="gd">
            <p>更多精品</p>
            <div id="gd-content">
               <div style="width: 1250px;height: 620px;">
                   <dl>
                       <dt><a href="#"><img src="images/gd-1.jpg"/></a></dt>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/gd-2.jpg"/></a></dt>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/gd-3.jpg"/></a></dt>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/gd-4.jpg"/></a></dt>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/gd-5.jpg"/></a></dt>
                   </dl>
                   <dl>
                       <dt><a href="#"><img src="images/gd-6.jpg"/></a></dt>
                   </dl>
               </div>
            </div>
        </div>
        <div id="tj">
            <p>特价专区</p>
            <div id="tj-content">
                <div style="width: 1250px;height: 950px;">
                    <dl>
                        <dt><a href="#"><img src="images/tj-1.jpg"/></a></dt>
                        <dd>VT 2件<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-2.jpg"/></a></dt>
                        <dd>VT 2件<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-3.jpg"/></a></dt>
                        <dd>VT 2件<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-4.jpg"/></a></dt>
                        <dd>VT 2件<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-5.jpg"/></a></dt>
                        <dd>VT 2件<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt style="height: 170px;"><a href="#"><img src="images/tj-6.jpg"/></a></dt>
                        <dd>帆布鞋女款 2双<span>199元</span></dd>
                    </dl>
                    <dl>
                        <dt style="height: 170px;"><a href="#"><img src="images/tj-7.jpg"/></a></dt>
                        <dd>休闲鞋系带男款 2双<span>199元</span></dd>
                    </dl>
                    <dl>
                        <dt style="height: 170px;"><a href="#"><img src="images/tj-8.jpg"/></a></dt>
                        <dd>休闲鞋系带男款 2双<span>199元</span></dd>
                    </dl>
                    <dl>
                        <dt style="height: 170px;"><a href="#"><img src="images/tj-9.jpg"/></a></dt>
                        <dd>休闲鞋一脚蹬女款 2双<span>199元</span></dd>
                    </dl>
                    <dl>
                        <dt style="height: 170px;"><a href="#"><img src="images/tj-10.jpg"/></a></dt>
                        <dd>帆布鞋KEN3 2双<span>199元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-11.jpg"/></a></dt>
                        <dd>麻衬衫裙藏蓝色<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-12.jpg"/></a></dt>
                        <dd>空调衫镂空七分袖开衫<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-13.jpg"/></a></dt>
                        <dd>空调衫女款开衫<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-14.jpg"/></a></dt>
                        <dd>空调衫女款七分袖<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-15.jpg"/></a></dt>
                        <dd>牛仔裤卷边短裤<span>99元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-16.jpg"/></a></dt>
                        <dd>T恤水柔绵短袖圆领<span>149元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-17.jpg"/></a></dt>
                        <dd>T恤水柔绵短袖圆领<span>149元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-18.jpg"/></a></dt>
                        <dd>POLO衫长绒棉男款<span>149元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-19.jpg"/></a></dt>
                        <dd>高弹紧身九分裤女款<span>149元</span></dd>
                    </dl>
                    <dl>
                        <dt><a href="#"><img src="images/tj-20.jpg"/></a></dt>
                        <dd>凡客休闲裤麻棉<span>149元</span></dd>
                    </dl>
                </div>
            </div>
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
        <div id="side">
            <img src="images/top.jpg"/>
        </div>
    </div>
</div>
  </body>
</html>
