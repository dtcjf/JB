<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录JB</title>
<meta name="renderer" content="webkit">
<!-- 对移动设备友好 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet" />
<script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
<script>
	
	$(function (){
		$("#confirm").click(function login(){
			var username=$("#username").val();
			var password=$("#password").val();
			if(username==""){
				alert("用户名不能为空");
				return ;
			}
			if(password==""){
				alert("密码不能为空");
				return ;
			}
			var params={};
			params.username=username;
			params.password=password;
			$.ajax({
				url:"login",
				data:params,
				type:"POST",
				dataType:"text",
				async:true,
				success:function(data){
					if(data=="success"){
						window.location.href="/blog/index";
					}
					if(data=="error"){
						alert("用户名或密码错误");
					}
				}
				});
		});
	});
</script>
</head>
<body style="margin: 50px">
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
				<li class="active"><a href="/blog/tologin"><span class="glyphicon  glyphicon-user"></span> 登录</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
				<% if((request.getSession().getAttribute("jf"))!=null){ %>
				<li><a href="/blog/edit"><span class="glyphicon glyphicon-pencil"></span> 编辑</a></li>
				<%} %>
			</ul>	
		</div>
	</div>
</nav>
<div class="clearfix"></div>
<div class="container">
	<form id="" class="form-horizontal">
	<div class="row"  style="margin-top:50px">
		<div class="input-group col-sm-12">
			<label class="col-sm-2 control-label">用户名</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="username" id="username" placeholder="请输入您的用户名">
			</div>
		</div>
	</div>
	<div class="row"  style="margin-top:50px">
		<div class="input-group  col-sm-12">
			<label class="col-sm-2 control-label">密码</label>
			<div class="col-sm-10">
				<input type="password" class="form-control" name="password" id="password" placeholder="请输入您的密码">
			</div>
		</div>
		</div>
		<div class="row" style="margin-top:50px" >
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<input type="button" id="confirm" class="btn btn-info btn-block col-sm-8" value="确认" />
			</div>
			<div class="col-sm-2"></div>
		</div>
	</form>
</div>
</body>
</html>