<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	<link rel="stylesheet" type="text/css" href="front/Css/Login.css">
	<script type="text/javascript" src="front/JS/koala.min.1.5.js"></script>
	<script type="text/javascript" src="front/JS/jquery.min.js"></script>
	<script type="text/javascript" src="front/JS/bootstrap.min.js"></script>
</head>
<body>
<div class="Mak-Banner-S1">
	<div id="decoroll2" class="imgfocus">

		<div id="decoimg_a2" class="imgbox">
			<div class="decoimg_b2"><a><img src="front/images/l-b1.jpg" class="Log-Bg"></a></div>
			<div class="decoimg_b2"><a><img src="front/images/l-b2.jpg" class="Log-Bg"></a></div>
			<div class="decoimg_b2"><a><img src="front/images/l-b3.jpg" class="Log-Bg"></a></div>
		</div>

		
	</div>
</div>
	<div class="container">
		<div role="tabpanel" class="Login-Page">
		  <!-- Nav tabs -->
		  <ul class="nav nav-tabs login-nav" role="tablist">
		    <li role="presentation" class="hot-active"><a href="#login" aria-controls="login" role="tab" data-toggle="tab">登录</a></li>
		    <li role="presentation"><a href="#register" aria-controls="register" role="tab" data-toggle="tab">注册</a></li>
		  </ul>
		  <!-- Tab panes -->
		  <div class="tab-content">
		    <div role="tabpanel" class="tab-pane active" id="login">
				<div class="dialog-area">
					<form class="form-horizontal" action="l/loginit.htm" method=post>
					  <div class="form-group">
					    <div class="col-sm-5 login-input">
					      <input type="username" name="username" class="form-control" placeholder="用户名">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-5 login-input">
					      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="密码">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-5">
					      <div class="checkbox login-checkbox">
					        <label>
					          <input type="checkbox"> 记住密码
					        </label>
					        &nbsp;&nbsp;
					        <label>
					          <input type="checkbox"> 自动登录
					        </label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-10 login-input">
					      <button type="submit" class="btn btn-default btn-submit">登录</button>
					    </div>
					  </div>
					</form>
				</div>
		    </div>
		    <div role="tabpanel" class="tab-pane" id="register">
		    	<div class="dialog-area">
					<form class="form-horizontal" action="l/register.htm"method="post">
					  <div class="form-group">
					    <div class="col-sm-5 login-input">
					      <input type="username" name="username" class="form-control" placeholder="用户名">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-5 login-input">
					      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="密码">
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-5">
					      <div class="checkbox login-checkbox">
					        <label>
					          <input type="checkbox"> 我已经阅读并同意用户的协议
					        </label>
					      </div>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-10 login-input">
					      <button type="submit" class="btn btn-default btn-submit">提交注册</button>
					    </div>
					  </div>
					</form>
				</div>
		    </div>
		  </div>
		</div>
	</div>
</body>

<script type="text/javascript">
    var a = window.screen.availHeight;
    $(".imgfocus").css("height",a+"");

    var a = document.body.clientWidth;
    $(".imgfocus").css("width",a+"");

    var a = document.body.clientHeight;
    $(".Log-Bg").css("height",a+"");

    var a = document.body.clientWidth;
    $(".Log-Bg").css("width",a+"");

Qfast.add('widgets', { path: "front/JS/terminator2.2.min.js", type: "js", requires: ['fx'] });  
Qfast(false, 'widgets', function () {
	K.tabs({
		id: 'decoroll2',//焦点图包裹id  
		conId: "decoimg_a2",//大图域包裹id  
		tabTn:"a",
		conCn: '.decoimg_b2',//大图域配置class       
		auto: 1,//自动播放 1或0
		effect: 'fade',//效果配置                          
		interval: 3000// 停顿时间  
	}) 
}) 
</script>
</html>