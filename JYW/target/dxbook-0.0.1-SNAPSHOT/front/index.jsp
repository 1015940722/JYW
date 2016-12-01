<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="core" prefix="c"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>DX Market</title>
	<link rel="stylesheet" type="text/css" href="front/Css/index.css">
	<script type="text/javascript" src="front/JS/koala.min.1.5.js"></script>
	<script type="text/javascript" src="front/JS/jquery.min.js"></script>
	<script type="text/javascript" src="front/JS/jquery.js"></script>
	<script type="text/javascript" src="front/JS/scrollto.js"></script>
</head>
<body>
	<div class="Mak-Container">
		
		<div class="Mak-Wrap-1">
			<div class="Mak-Top-S1">
				<div class="Mak-Title-area">
					<div class="Mak-Logo">
						<a href="#" class="logo">DX</a>
						<span>
							<a href="#" class="txt">交易网</a><br>
							<a href="#" class="engtxt">DX Markets</a>
						</span>
					</div>

					<div class="Mak-Txt">
						<a href="#">水院最专业交易</a>
					</div>
					 <c:if test="${not empty username}">
						<div class="Mak-Login">
							${username}欢迎登陆|
							<a href="l/exit.htm">退出</a>
				    	</div>
					</c:if>
					
					<c:if test="${empty username}">
						<div class="Mak-Login">
							<a href="l/Login.htm#register">登录</a> |
							<a href="l/Login.htm">注册</a>
				   		 </div>
					</c:if>
					
				</div>
			</div>
			<div class="Mak-Nav-S1">
				<nav>
					<a href="#" class="active" id="home-go">首页</a>
					<a href="#" class="current">
						热门分类
						<ul>
							<li>书籍/音像制品</li>
							<li>男装/户外运动</li>
							<li>手机/数码/电脑</li>
							<li>化妆品/个人护理</li>
							<li>女装/内衣</li>
						</ul>
					</a>
					<a id="hot-go">热门销售</a>
					<a href="#">个人中心</a>
					<a id="Contact-go">联系我们</a>
					<a href="#" class="current">
						友情链接
						<ul>
							<li>水院官网</li>
							<li>信艺学院</li>
							<li>东旭工作室</li>
							<li>数媒大帝国</li>
						</ul>
					</a>
				</nav>
			</div>
			
			<div class="Mak-Banner-S1">
				<div id="decoroll2" class="imgfocus">

					<div id="decoimg_a2" class="imgbox">
						<div class="decoimg_b2"><a href="index.html"><img src="front/images/1.jpg"></a></div>
						<div class="decoimg_b2"><a href="index.html"><img src="front/images/2.jpg"></a></div>
						<div class="decoimg_b2"><a href="index.html"><img src="front/images/3.jpg"></a></div>
						<div class="decoimg_b2"><a href="index.html"><img src="front/images/4.jpg"></a></div>
					</div>
					
					<ul id="deconum2" class="num_a2">
						<li><a href="javascript:void(0)" hidefocus="true" target="_self">陪安东尼度过漫长岁月&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						<li><a href="javascript:void(0)" hidefocus="true" target="_self">男装/户外运动&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						<li><a href="javascript:void(0)" hidefocus="true" target="_self">手机/数码产品&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
						<li><a href="javascript:void(0)" hidefocus="true" target="_self">个人护理/化妆品&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
					
				</div>
				<div class="Mak-Trade-Now">
					<a href="#" class="Now-icon">r</a>
					<div class="Trade-scroll">
						<marquee>
							<li><a href="buy.html">正版授权 复仇者联盟2 钢铁侠美国队长 UnderArmour安德玛美国队长蝙蝠侠</a></li>
							<li><a href="buy.html">Adidas 阿迪达斯 皇家马德里 皇马 夹克风衣 Real Madrid G71799 249裸</a></li>
							<li><a href="buy.html">专柜正品 CONVERSE 建筑物印花 纯棉休闲款长袖T恤 89裸 05982C-035</a></li>
						</marquee>
					</div>
					
				</div>
				<div class="Mak-Btn-S1">
						<a href="#" class="btn-go" id="hot-btn">查看热门商品</a>
				</div>
				
			</div>
		   
		</div>
		<div class="Mak-Wrap-2" id="Mak-Wrap-2">
			
			<div class="hr-icon">
				<span><hr></span>
				<a href="index">DX Markets</a>
				<span><hr></span>
			</div>
			<div class="hot-sale">
				<section class="tabs">
		            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
			        <label for="tab-1" class="tab-label-1">男装/户外运动</label>
			
		            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
			        <label for="tab-2" class="tab-label-2">手机/数码/电脑</label>
			
		            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
			        <label for="tab-3" class="tab-label-3">化妆品/个人护理</label>
				
		            <input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
			        <label for="tab-4" class="tab-label-4">女装/内衣</label>

			        <input id="tab-5" type="radio" name="radio-set" class="tab-selector-5" />
			        <label for="tab-5" class="tab-label-5">书籍/音像制品</label>
            
				
		        <div class="content">
			        <div class="content-1">
			        	<p class="hot-more"><a href="#">更多&nbsp;>></a></p>
                        <section class="hot-product">
			    			<img src="front/images/product1-1.jpg">
			    			<span>
			    				<a href="buy.html">UnderArmour安德玛美国队长蝙蝠侠 </a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-2.jpg">
			    			<span>
			    				<a href="#">UnderArmour Curry库里SC30 T恤 短袖 </a>
			    				<a class="Price">￥169.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-3.jpg">
			    			<span>
			    				<a href="#">海澜之家2015夏季男士 polo衫短袖</a>
			    				<a class="Price">￥158.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-4.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Air Force 1 AF1全白经典</a>
			    				<a class="Price">￥698.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-5.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Hyperdunk 2014 HD 大黄蜂乔治</a>
			    				<a href="#" class="Price">￥768.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-6.jpg">
			    			<span>
			    				<a href="#">日本代购专柜万斯vans of the wall chop shop </a>
			    				<a href="#" class="Price">￥318.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-7.jpg">
			    			<span>
			    				<a href="#">BURBERRY BLUE LABEL春季新款风衣 巴宝莉</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-8.jpg">
			    			<span>
			    				<a href="#">AMH男装韩版2015夏装新款</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
				    </div>
			        <div class="content-2">
						<p class="hot-more"><a href="#">更多&nbsp;>></a></p>
                        <section class="hot-product">
			    			<img src="front/images/product2-1.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 6 PlusA8处理器 IOS8</a>
			    				<a class="Price">￥5118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product2-2.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 5s64位苹果A7处理器,指纹识别</a>
			    				<a class="Price">￥3800.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-6.jpg">
			    			<span>
			    				<a href="#">A原封正品★MIUI/小米,小米手机4</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-4.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 4iPhone中的经典A4处理器</a>
			    				<a class="Price">￥2500.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-5.jpg">
			    			<span>
			    				<a href="#">Meizu/魅族魅族MX4移动版八核智能双4G手机</a>
			    				<a class="Price">￥1599.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-6.jpg">
			    			<span>
			    				<a href="#">A原封正品★MIUI/小米,小米手机4</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-2.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 5s64位苹果A7处理器,指纹识别</a>
			    				<a class="Price">￥3800.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-3.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 6,4.7英寸,iOS8操作系统</a>
			    				<a class="Price">￥5080.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
				    </div>
			        <div class="content-3">
						<p class="hot-more"><a href="#">更多&nbsp;>></a></p>
                        <section class="hot-product">
			    			<img src="front/images/product1-1.jpg">
			    			<span>
			    				<a href="#">UnderArmour安德玛美国队长蝙蝠侠 </a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-2.jpg">
			    			<span>
			    				<a href="#">UnderArmour Curry库里SC30 T恤 短袖 </a>
			    				<a class="Price">￥169.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-3.jpg">
			    			<span>
			    				<a href="#">海澜之家2015夏季男士 polo衫短袖</a>
			    				<a class="Price">￥158.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-4.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Air Force 1 AF1全白经典</a>
			    				<a class="Price">￥698.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-5.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Hyperdunk 2014 HD 大黄蜂乔治</a>
			    				<a href="#" class="Price">￥768.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-6.jpg">
			    			<span>
			    				<a href="#">日本代购专柜万斯vans of the wall chop shop </a>
			    				<a href="#" class="Price">￥318.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-7.jpg">
			    			<span>
			    				<a href="#">BURBERRY BLUE LABEL春季新款风衣 巴宝莉</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-8.jpg">
			    			<span>
			    				<a href="#">AMH男装韩版2015夏装新款</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
				    </div>
				    <div class="content-4">
						<p class="hot-more"><a href="#">更多&nbsp;>></a></p>
                        <section class="hot-product">
			    			<img src="front/images/product2-1.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 6 PlusA8处理器 IOS8</a>
			    				<a class="Price">￥5118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product2-2.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 5s64位苹果A7处理器,指纹识别</a>
			    				<a class="Price">￥3800.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-6.jpg">
			    			<span>
			    				<a href="#">A原封正品★MIUI/小米,小米手机4</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-4.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 4iPhone中的经典A4处理器</a>
			    				<a class="Price">￥2500.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-5.jpg">
			    			<span>
			    				<a href="#">Meizu/魅族魅族MX4移动版八核智能双4G手机</a>
			    				<a class="Price">￥1599.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-6.jpg">
			    			<span>
			    				<a href="#">A原封正品★MIUI/小米,小米手机4</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-2.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 5s64位苹果A7处理器,指纹识别</a>
			    				<a class="Price">￥3800.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product2-3.jpg">
			    			<span>
			    				<a href="#">苹果 iPhone 6,4.7英寸,iOS8操作系统</a>
			    				<a class="Price">￥5080.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
				    </div>
				    <div class="content-5">
			        	<p class="hot-more"><a href="#">更多&nbsp;>></a></p>
                        <section class="hot-product">
			    			<img src="front/images/product1-1.jpg">
			    			<span>
			    				<a href="#">UnderArmour安德玛美国队长蝙蝠侠 </a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-2.jpg">
			    			<span>
			    				<a href="#">UnderArmour Curry库里SC30 T恤 短袖 </a>
			    				<a class="Price">￥169.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-3.jpg">
			    			<span>
			    				<a href="#">海澜之家2015夏季男士 polo衫短袖</a>
			    				<a class="Price">￥158.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-4.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Air Force 1 AF1全白经典</a>
			    				<a class="Price">￥698.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-5.jpg">
			    			<span>
			    				<a href="#">耐克 Nike Hyperdunk 2014 HD 大黄蜂乔治</a>
			    				<a href="#" class="Price">￥768.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
					    <section class="hot-product">
			    			<img src="front/images/product1-6.jpg">
			    			<span>
			    				<a href="#">日本代购专柜万斯vans of the wall chop shop </a>
			    				<a href="#" class="Price">￥318.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-7.jpg">
			    			<span>
			    				<a href="#">BURBERRY BLUE LABEL春季新款风衣 巴宝莉</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
						<section class="hot-product">
			    			<img src="front/images/product1-8.jpg">
			    			<span>
			    				<a href="#">AMH男装韩版2015夏装新款</a>
			    				<a class="Price">￥118.00</a>
			    				<a href="#" class="saleman">xielida1029</a>
			    			</span>
					    </section>
				    </div>
		        </div>
			</section>

			</div>
		</div>
		<div class="Contact-wrap">
			<div class="hr-icon">
				<span><hr></span>
				<a href="index">DX Markets</a>
				<span><hr></span>
			</div>
			<div class="Contact-us">
				<div class="Contact-info">
				   	<div class="Contact-1">
				  		<a href="#" class="Contact-icon">o</a><br>
				  		<a class="con-title">杭州市下沙学林街583号<br>浙江水利水电学院</a>
				  	</div>
				  	<div class="Contact-1">
				  		<a href="#" class="Contact-icon">M</a><br>
				  		<a class="con-title">dxstudio@yeah.net</a>
				  	</div>
				  	<div class="Contact-1 spe-ser">
				  		<a href="#" class="Contact-icon">L</a><br>
				  		<a class="con-title">17826892943</a>
				  	</div>
				  	<div class="Contact-Wri">
						<form class="form-inline">
						  <div class="form-group">
						    <input type="text" class="form-control" id="exampleInputName2" placeholder="You Name">
						  </div>
						  <div class="form-group">
						    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Your Email">
						  </div>
						  <div class="form-group">
						    <input type="email" class="form-control E-subject" id="exampleInputEmail2" placeholder="Subject">
						  </div>
						  <div class="form-group">
						    <textarea class="form-control" rows="3" placeholder="Your Message..."></textarea>
						  </div>
						  <div class="Mak-Btn-S2">
								<a href="#" class="btn-send">确认发送邮件</a>
						  </div>
						</form>
				  	</div>
				</div>
			</div>
		</div>
		<div class="service">
		   	<div class="service1">
		  		<img src="front/images/service1.png">
		  		<span>
		  			<p><a class="ser-title"><b>诚信交易</b></a></p>
		  			<p><a>诚信护航 购物无忧</a></p>
		  		</span>
		  	</div>
		  	<div class="service1">
		  		<img src="front/images/service2.png">
		  		<span>
		  			<p><a class="ser-title"><b>诚信交易</b></a></p>
		  			<p><a>诚信护航 购物无忧</a></p>
		  		</span>
		  	</div>
		  	<div class="service1">
		  		<img src="front/images/service3.png">
		  		<span>
		  			<p><a class="ser-title"><b>诚信交易</b></a></p>
		  			<p><a>诚信护航 购物无忧</a></p>
		  		</span>
		  	</div>
		  	<div class="service1 spe-ser">
		  		<img src="front/images/service4.png">
		  		<span>
		  			<p><a class="ser-title"><b>诚信交易</b></a></p>
		  			<p><a>诚信护航 购物无忧</a></p>
		  		</span>
		  	</div>
		  	<div class="copyright">
	  			<p class="text-center"><a>Copyright © 2014 zjweu.edu.cn All rights reserved. 浙江水利水电学院 版权所有 浙ICP备05014524</a></p>
	  		</div>
		</div>
	</div>

	
	
	
  	
</body>
<script type="text/javascript">

	$(function(){
		$("#hot-btn").click(function(){
		$.scrollTo('.Mak-Wrap-2',1200);
		});
		$("#hot-go").click(function(){
		$.scrollTo('.Mak-Wrap-2',1200);
		});
		$("#home-go").click(function(){
		$.scrollTo('.Mak-Wrap-1',1200);
		});
		$("#Contact-go").click(function(){
		$.scrollTo('.Contact-wrap',1200);
		});
	});

    var a = window.screen.height;
    $(".Mak-Wrap-1").css("height",a+"");
    var a = window.screen.height;
    $(".Mak-Wrap-2").css("height",a+"");


	Qfast.add('widgets', { path: "front/JS/terminator2.2.min.js", type: "js", requires: ['fx'] });  
	Qfast(false, 'widgets', function () {
	K.tabs({
		id: 'decoroll2',//焦点图包裹id  
		conId: "decoimg_a2",//大图域包裹id  
		tabId:"deconum2",//小圆点数字提示id
		tabTn:"a",
		conCn: '.decoimg_b2',//大图域配置class       
		auto: 1,//自动播放 1或0
		effect: 'fade',//效果配置
		eType: 'mouseover',// 鼠标事件
		pageBt:true,//是否有按钮切换页码
		bns: ['.prev', '.next'],//前后按钮配置class                          
		interval: 3000// 停顿时间  
	}) 


});

</script>
</html>