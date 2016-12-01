<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<base href=<%=basePath %>>
	<meta charset="UTF-8">
	<title>DX Markets</title>
	<link rel="stylesheet" type="text/css" href="front/Css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="front/Css/release.css">
	<script src="front/JS/jquery.min.js"></script>
	<script type="text/javascript" src="front/JS/bootstrap.js"></script>
</head>

<body>
	<div class="top">
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
	</div>
	<div class="container main">
		  <div class="main">
		  	<div class="content">
		  		<form action="r/up.html" method=post enctype="multipart/form-data"/>
		  			<div class="sort-info">
		  				<p><b>物品信息：</b><br></p>
			  			<p>
			  				
			  				新　　旧：<select>
										  <option>全新</option>
										  <option>九成新</option>
										  <option>八成新</option>
										  <option>七成新及以下</option>
									  </select>
			  			</p>
			  			<p>
			  				类　　别：<select name="type">
										  <option>男装/运动户外</option>
										  <option>女装/内衣</option>
										  <option>化妆品/个人护理</option>
										  <option>手机/数码/电脑办公</option>
										  <option>图书音像</option>
									 </select>
			  			</p>
			  			<p>
			  				转让价格：<input type="text" name="price"> 元
			  			</p><br>

		  				<p><b>所在地址：</b><br></p>
	  				  	<p>院　　系：<select name="yuanxi">
									  <option>水利与环境工程学院</option>
									  <option>建筑工程学院</option>
									  <option>测绘与市政工程学院</option>
									  <option>机械与汽车工程学院</option>
									  <option>经济与管理学院</option>
									  <option>信息工程与艺术设计学院</option>
									  <option>国际教育交流学院</option>
							      </select>
					  	</p>
			  		  	<p>
			  				班　　级：<input type="text" name="tclass">
			  		  	</p>
			  		 	 <p>
			  				联系方式：<input type="text" name="tel">
			  		 	 </p>	      

		  				<p>
		  					地 　　址: <input type="text" name="addr" class="release-title">
		  				</p>
		  			</div>
		  			<div class="detail">
		  				<p><b></b>详细说明：</p>
		  				<p>
		  					标　　题：<input type="text" name="name" class="release-title">
		  				</p>
			  			<div id="normalUploadDiv">

						<!-- <form id="normalUploadFormcar"  class="normalUploadFormcar" method="post" action="ajax.php?mod=uploadify&code=image&type=normal" enctype="multipart/form-data" target="imageUploadifyIframe" onsubmit="return normalUploadFormSubmitcar()"> -->

						<a href="javascript:;" class="btn_addPic" style="background:none;border:none;height:auto;text-align:left;margin:0 0;padding:0 0;">
						<input type="file" name="file1" title="支持jpg、jpeg、gif、png格式，文件小于2M">
						</a> 
						<!-- </form>-->
					</div>
						<div class="sendStatus" id="sendStatuscar" style="position:static;">
		  					<textarea name="release-text" class="intro-release"></textarea>
 
		  				</div>

					</div> 
					
					<iframe id="imageUploadifyIframecar" name="imageUploadifyIframe" width="0" height="0" marginwidth="0" frameborder="0" src="about:blank" style="display:none;"></iframe>

 				</div>

		  			<p class="btn-release"><input type="submit" name="submit" value="发布"></p>

		  		</form>
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
		  		<img src="front/
		  		images/service4.png">
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