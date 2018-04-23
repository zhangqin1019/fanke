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
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="css/details.css">
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/question.js"></script>
  </head>
  
  <body>
  	<c:if test="${empty commodity}">
  		<script>location.href="main.jsp";</script>
  	</c:if>
   	<div id="main">
    <div id="title">
        <div id="title-content">
            <p>您好，欢迎光临凡客诚品!<a href="login.jsp">登录</a><span>|</span><a href="register.jsp">注册</a><a href="#" id="order">我的订单</a><img src="images/title-1.jpg" id="weixin"/><img src="images/title-2.jpg"/></p>
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
        <div id="introduce">
            <p>
                <a href="#">首页</a><span>&gt;</span>
                <a href="#">男装</a><span>&gt;</span>
                <a href="#">衬衫</a><span>&gt;</span>
                <a href="#">长袖衬衫</a><span>&gt;</span>
                ${commodity.commodityName }
            </p>
            <div id="introduce-content">
                <div id="left">${commodity.commodityName }</div>
                <div id="right">
                    <a href="details.jsp#gm">购买指南</a><span>|</span>
                    <a href="details.jsp#dp">模特搭配</a><span>|</span>
                    <a href="details.jsp#bx">版型工艺</a><span>|</span>
                    <a href="details.jsp#sj">设计细节</a><span>|</span>
                    <a href="details.jsp#xd">洗涤保养</a><span>|</span>
                    <a href="#">评论</a><span>|</span>
                    <a href="details.jsp#tiwen">提问</a>
                </div>
            </div>
        </div>
        <div id="goods">
            <div id="goods-left">
            	<canvas width="150px" height="150px" id="myCanvas" style=" display: block;border:1px solid #ccc;"></canvas>
                <canvas width="300px" height="300px" id="lgCanvas"></canvas>
                <input type="hidden" value="${commodity.commodityImageUrl }" id="hidden"/>
            </div>
            <div id="goods-right">
                <p style="color: red;">售价：￥<span style="font-size: 18px;">${commodity.commodityPrice }</span><a href="#" style="color: #B42025;">&nbsp;&nbsp;充912返912，充500返500，点击立即充值</a></p>
                <p>颜色:<a href="javascript:void(0);" class="border">${commodity.commodityColor }</a></p>
                <p>尺码:<a href="javascript:void(0);" class="border">${commodity.commoditySize }</a></p>
                <p>数量:
                    <select>
                        <option selected>${commodity.commoditySales}</option>
                    </select>
                </p>
                <p>已选:${commodity.commodityColor }<span style="color: #B42025;font-weight: bolder;">&nbsp;现在有货</span></p>
                <p>
                    <input type="button" value="立即购买" style="background-color: #F7ABAF;color: red;"/>
                    <input type="button" value="加入购物车" style="background-color: red;color: white;"/>
                </p>
            </div>
        </div>
        <div id="gm">
            <a name="gm"><p>购买指南</p></a>
            <img src="images/gsize-img1.jpg"/>
            <img src="images/gsize-img2.jpg"/>
            <img src="images/psize-img1.jpg"/>
            <img src="images/psize-img2.jpg"/>
            <img src="images/size-img.jpg"/>
        </div>
        <div id="dp">
            <a name="dp"><p>模特搭配</p></a>
            <img src="images/model1-img.jpg"/>
            <img src="images/model2-img.jpg"/>
            <img src="images/model3-img.jpg"/>
            <img src="images/model4-img.jpg"/>
            <img src="images/model5-img.jpg"/>
            <img src="images/model6-img.jpg"/>
            <img src="images/c-img.jpg"/>
            <img src="images/c1-img.jpg">
        </div>
        <div id="bx">
            <a name="bx"><p>版型工艺</p></a>
            <img src="images/ljk_1.jpg"/>
            <img src="images/ljk_2.jpg"/>
            <img src="images/ljk_3.jpg"/>
            <img src="images/ljk_4.jpg"/>
            <img src="images/ljk_5.jpg"/>
            <img src="images/ljk_6.jpg"/>
            <img src="images/ljk_7.jpg"/>
            <img src="images/ljk_8.jpg"/>
            <img src="images/ljk_9.jpg"/>
            <img src="images/ljk_10.jpg"/>
            <img src="images/ljk_11.jpg"/>
            <img src="images/ljk_12.jpg"/>
            <img src="images/ljk_13.jpg"/>
            <img src="images/ljk_14.jpg"/>
            <img src="images/ljk_15.jpg"/>
        </div>
        <div id="sj">
            <a name="sj"><p>设计细节</p></a>
            <img src="images/d-img1.jpg"/>
            <img src="images/d-img2.jpg"/>
        </div>
        <div id="xd">
           <a name="xd"><img src="images/title5-img.jpg"/></a>
            <img src="images/by-img1.jpg"/>
            <img src="images/by-img2.jpg"/>
            <img src="images/by-img3.jpg"/>
        </div>
        <div id="tw">
            <div id="tw-left">
                <p>推荐产品</p>
                <dl>
                    <dt><a href="#"><img src="images/tj1-img.jpg"/></a></dt>
                    <dd>
                        <a href="#">凡客休闲裤 松紧腰短裤</a><br/>
                        <a href="#">男款 深蓝色</a><br/>
                        <span>售价:￥168</span>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="#"><img src="images/tj2-img.jpg"/></a></dt>
                    <dd>
                        <a href="#">凡客T恤 kanoko yamada</a><br/>
                        <a href="#">2 男款 浅花灰色</a><br/>
                        <span>售价:￥99</span>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="#"><img src="images/tj3-img.jpg"/></a></dt>
                    <dd>
                        <a href="#">凡客T恤 kanoko yamada</a><br/>
                        <a href="#">3 男款 黑色</a><br/>
                        <span>售价:￥99</span>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="#"><img src="images/tj4-img.jpg"/></a></dt>
                    <dd>
                        <a href="#">凡客80免烫衬衫 小方领</a><br/>
                        <a href="#">白色</a><br/>
                        <span>售价:￥299</span>
                    </dd>
                </dl>
            </div>
            <a name="tiwen"></a>
            <div id="tw-right">
            	 <div>
                    <p id="hide"><a href="QuestionHideServlet" style="border:1px solid red;color:white;padding: 10px 15px;background-color: red;text-decoration: none;">我要提问</a></p>
                    <c:forEach items="${questions}" var="question">
                    	<p style="border:1px solid #ccc;line-height:30px;padding:0px;margin:0px;">&nbsp;提问内容:<span style="color:red;">${question.questionContent }</span></p>
                    </c:forEach>
                 </div>
            	 <c:if test="${!empty user&&!empty questionLogin}">
            	 	<form action="QuestionServlet" method="post" id="myForm">
            	 	<p style="font-size: 14px;font-weight: bold;">提问:${commodity.commodityName }</p>
                    <p>
                        <input type="radio" name="type" /><label>商品提问</label>
                        <input type="radio" name="type" /><label>促销活动提问</label>
                        <input type="radio" name="type" /><label>库存及物流提问</label>
                        <input type="radio" name="type" /><label>售后提问</label>
                    </p>
                    <table style="vertical-align: top;">
                        <tr>
                            <td>提交内容:</td>
                            <td><textarea cols="50" rows="5" name="questionContent"></textarea></td>
                        </tr>
                    </table>
                    <p>
                        <input type="submit" value="我要提问"/>
                    </p>
                </form>
            </c:if>
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
    </div>
</div>
  </body>
</html>
