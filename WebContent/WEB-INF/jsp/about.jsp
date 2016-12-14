<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>关于JB</title>
<meta name="renderer" content="webkit">
<!-- 对移动设备友好 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet" />
<script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
</head>
<body  style="margin: 50px">
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right" style="margin-top:0">
				<li><a href="/blog/index"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span> 相册</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-fire"></span> 留言</a></li>
				<li><a href="/blog/tologin"><span class="glyphicon  glyphicon-user"></span> 登录</a></li>
				<li  class="active"><a href="/blog/about"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
				<% if((request.getSession().getAttribute("jf"))!=null){ %>
				<li><a href="/blog/edit"><span class="glyphicon glyphicon-pencil"></span> 编辑</a></li>
				<%} %>
			</ul>	
		</div>
	</div>
</nav>
</body>
</html>