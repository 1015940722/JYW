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
	<title>东旭交易网</title>
	<link rel="stylesheet" type="text/css" href="front/Css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="front/Css/sale.css">
	<script src="front/JS/jquery.min.js"></script>
	<script type="text/javascript" src="front/JS/bootstrap.js"></script>
	<script type="text/javascript">
	  
	</script> 
</head>
<body>
	<div class="top">
		<div class="Mak-Top-S1">
			<div class="Mak-Title-area">
				<div class="Mak-Logo">
					<a href="index.html" class="logo">DX</a>
					<span>
						<a href="#" class="txt">交易网</a><br>
						<a href="#" class="engtxt">DX Markets</a>
					</span>
				</div>

				<!-- <div class="Mak-Txt">
					<a href="#">水院最专业交易</a>
				</div>
				<div class="Mak-Login">
					<a href="Login.html#register">登录</a> |
					<a href="Login.html">注册</a>
			    </div> -->
			</div>
		</div>
	</div>
	<div class="container main">
		  <div class="main">
			<ol class="breadcrumb route-color">
			  <li><a href="index.html">首页</a></li>
			  <li class="active">交易区</li>
			</ol>

		  	<div class="sort-nav">
		  		<div  class="sort-info">
		  			<p>类别：<a href="#">全部</a>　<a href="sale-man.html">男装/运动户外</a>　<a href="#">女装/内衣</a>　<a href="#">化妆品/个人护理</a>　<a href="#">手机/数码/电脑办公</a>　<a href="#">图书音像</a></p>
		  			<p>价格：<a href="#">全部</a>　<a href="#">50元以下</a>　<a href="#">50-100</a>　<a href="#">100-150</a>　<a href="#">150-200</a></p>
		  			<p>新旧：<a href="#">全部</a>　<a href="#">全新</a>　<a href="#">九五成新</a>　<a href="#">九成新</a>　<a href="#">八成新</a>　<a href="#">七成新及以下</a></p>
		  		</div>
		  		<div class="input-group search-bar">
		  		<form action="t/searcha.html" method="post">
			      <input type="text" class="form-control searchbox" name="tname"placeholder="输入你要搜索的商品...">
			      <span class="input-group-btn">
			        <button class="btn btn-default searchbtn" type="submit">搜索</button>
			      </span>
			      </form>
			    </div><!-- /input-group -->
		  	</div>
		  	<div class="trade-content">
		  		<div class="trade-top">
		  			<nav>
		  				<a class="active">综合排序</a>
		  				<a>销量</a>
		  				<a>最近</a>
		  				<a>价格</a>
		  				<span><input type="text">-<input type="text"> 元</span>
		  			</nav>
		  		</div>
		  		<div class="trade-item">
		  			<c:forEach items="${se}" var="se">
		  				<div class="item1">
		  				<span><img src=fileupload/${se.tPic}></span>
		  				<span>
		  					<p ><a href="t/tcontent.html?id=${se.tId}"><b>${se.tName}</b></a></p>
		  					<p class="title">《美国队长》是漫威漫画公司旗下的超级英雄，由乔·西蒙和杰克·科比所创作、首次登场于1941年3月出版的《美国队长》漫画第一期（Captain America Comics #1）、他被视为是美国精神的象征，本名史蒂夫·罗杰斯，原本是一个身体瘦弱的新兵，在接受美国政府的实验改造后变成了“超级士兵”，这使其力量、速度、耐力等各项体能都远超出于常人，且还被美国政府赋予了由高强度吸震金属合金制成的盾牌、从此史蒂夫以美国队长的身份，为美国及世界在二战中立下显赫战功，后来在二战尾声的一次行动中，美国队长与宿敌红骷髅的战斗，并掉入大海之中被冰封近70年，直到被神盾局发现并解冻后才加入了复仇者联盟，此后在美国队长的领导下，复仇者联盟出生入死，赢得一次又一次近乎不可能的胜利。截至2007年，美国队长系列漫画销量超过两亿一千万册，遍及全球七十五个国家。</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">${se.tPrice }</a> 元</p>
		  					<p><a href="#">${se.tUName}</a></p>
		  				</span>
		  			</div>
		  			</c:forEach>
		  			
		  			<!-- <div class="item1">
		  				<span><img src="front/images/product1-1.jpg"></span>
		  				<span>
		  					<p ><a href="buy.html"><b>UnderArmour安德玛美国队长蝙蝠侠 </b></a></p>
		  					<p class="title">《美国队长》是漫威漫画公司旗下的超级英雄，由乔·西蒙和杰克·科比所创作、首次登场于1941年3月出版的《美国队长》漫画第一期（Captain America Comics #1）、他被视为是美国精神的象征，本名史蒂夫·罗杰斯，原本是一个身体瘦弱的新兵，在接受美国政府的实验改造后变成了“超级士兵”，这使其力量、速度、耐力等各项体能都远超出于常人，且还被美国政府赋予了由高强度吸震金属合金制成的盾牌、从此史蒂夫以美国队长的身份，为美国及世界在二战中立下显赫战功，后来在二战尾声的一次行动中，美国队长与宿敌红骷髅的战斗，并掉入大海之中被冰封近70年，直到被神盾局发现并解冻后才加入了复仇者联盟，此后在美国队长的领导下，复仇者联盟出生入死，赢得一次又一次近乎不可能的胜利。截至2007年，美国队长系列漫画销量超过两亿一千万册，遍及全球七十五个国家。</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div>
		  			<div class="item1">
		  				<span><img src="front/images/item1.jpg"></span>
		  				<span>
		  					<p><a href="#"><b>苹果iPhone5S_原装正品港版三网通用4G</b></a></p>
		  					<p><a href="#">本店承若本店承若本店出售原装正版苹果，带正规联保发票保修卡</a></p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div>
		  			<div class="item1">
		  				<span><img src="front/images/item1.jpg"></span>
		  				<span>
		  					<p><a href="#"><b>苹果iPhone5S_原装正品港版三网通用4G</b></a></p>
		  					<p>本店承若本店承若本店出售原装正版苹果，带正规联保发票保修卡</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div>
		  			<div class="item1">
		  				<span><img src="front/images/item1.jpg"></span>
		  				<span>
		  					<p><a href="#"><b>苹果iPhone5S_原装正品港版三网通用4G</b></a></p>
		  					<p>本店承若本店承若本店出售原装正版苹果，带正规联保发票保修卡</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div>
		  			<div class="item1">
		  				<span><img src="front/images/item1.jpg"></span>
		  				<span>
		  					<p><a href="#"><b>苹果iPhone5S_原装正品港版三网通用4G</b></a></p>
		  					<p>本店承若本店承若本店出售原装正版苹果，带正规联保发票保修卡</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div>
		  			<div class="item1">
		  				<span><img src="front/images/item1.jpg"></span>
		  				<span>
		  					<p><a href="#"><b>苹果iPhone5S_原装正品港版三网通用4G</b></a></p>
		  					<p>本店承若本店承若本店出售原装正版苹果，带正规联保发票保修卡</p>
		  				</span>
		  				<span class="pull-right item-price">
		  					<p><a class="price-text">2000</a> 元</p>
		  					<p><a href="#">xielida1029</a></p>
		  				</span>
		  			</div> -->
		  			<div class="page-content">
			  			<nav class="page-nav">
		                  <ul class="pagination">
		                  <form action="t/thingslist.html" method="get">
		                   <c:if test="${page!=0}">
									<c:if test="${page>1}">
										<a href="t/thingslist.html?startpage=${page-1}">上一页</a>
									</c:if>
									<span>第${page}/${pagecount}页</span>
								          <c:if test="${page<pagecount}">
								           <span><a href="t/thingslist.html?startpage=${page+1}">下一页</a></span>
								        
								         </c:if>
								         
								         	<input type="text" maxLength="5" id="goto" name="startpage" placeholder="跳转页面，最大数为${pagecount}"/>
								         	<button type="submit">Go</button>
								         </form>
							         </c:if>    
		                  </ul>
		            	</nav>
                	</div>

		  		</div>
		  	</div>









		  </div>



		  <div class="footer">
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
		   </div>
		  	<div class="copyright">
		  		<p class="text-center"><a>Copyright © 2014 zjweu.edu.cn All rights reserved. 浙江水利水电学院 版权所有 浙ICP备05014524</a></p>
		  	</div>
		  </div>
	</div>
</body>
</html>