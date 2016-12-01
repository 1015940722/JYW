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
<base href=<%=basePath %>>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>DX Market</title>
	<link rel="stylesheet" type="text/css" href="front/Css/buy.css">
	<script type="text/javascript" src="front/JS/koala.min.1.5.js"></script>
</head>
<body>
	<div class="Mak-Container">
		<div class="Mak-Top-1">
			<div class="Mak-nav-1">
				<div class="Logo-area">
					<a href="index.html">DX</a>
					
				</div>
				<div class="title">
					东旭交易市场
				</div>
				<nav>
					<a href="index.html">首页</a>
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
					<a href="sale.html">热门销售</a>
					<a href="personal">个人中心</a>
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
		</div>
		<div class="Mak-Wrap-1">
			<div class="content-1">
				<div class="show-area">
					<img src="fileupload/${thing.tPic }">
					<div class="show-detail">
						<p><a href="#" class="show-title">正版授权 复仇者联盟2 钢铁侠美国队长 UnderArmour安德玛美国队长蝙蝠侠</a></p>
						<p>发布者：<a href="#" class="show-info">${thing.tUName }</a>
							分类：<a href="#" class="show-info">男装/户外运动</a></p>	
						<p class="price">价格：<a href="#">${thing.tPrice }</a></p>					 
					</div>
					<div class="function-area">
						<a href="#" class="buy-btn">立即购买</a>
						<p><a href="#">分享</a><a href="#">收藏</a></p>
						
					</div>
				</div>
				
			</div>
			<div class="content-2">
				<div class="detail">
					<p class="header">商品详情</p>
					<div class="detail-content">
						《美国队长》是漫威漫画公司旗下的超级英雄，由乔·西蒙和杰克·科比所创作、首次登场于1941年3月出版的《美国队长》漫画第一期（Captain America Comics #1）、他被视为是美国精神的象征，本名史蒂夫·罗杰斯，原本是一个身体瘦弱的新兵，在接受美国政府的实验改造后变成了“超级士兵”，这使其力量、速度、耐力等各项体能都远超出于常人，且还被美国政府赋予了由高强度吸震金属合金制成的盾牌、从此史蒂夫以美国队长的身份，为美国及世界在二战中立下显赫战功，后来在二战尾声的一次行动中，美国队长与宿敌红骷髅的战斗，并掉入大海之中被冰封近70年，直到被神盾局发现并解冻后才加入了复仇者联盟，此后在美国队长的领导下，复仇者联盟出生入死，赢得一次又一次近乎不可能的胜利。截至2007年，美国队长系列漫画销量超过两亿一千万册，遍及全球七十五个国家。
					</div>
				</div>
			</div>
		</div>
	
  	<div class="copyright">
  		<p class="text-center"><a>Copyright © 2014 zjweu.edu.cn All rights reserved. 浙江水利水电学院 版权所有 浙ICP备05014524</a></p>
  	</div>
  </div>
</body>
<script type="text/javascript">


</script>
</html>