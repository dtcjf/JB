<%@page import="jdk.nashorn.internal.scripts.JS"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>文章列表</title>
<meta name="renderer" content="webkit">
<!-- 对移动设备友好 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet" />
<script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
<script>
	function up(){
		var pagenum=<%=request.getAttribute("pageNo")%>;
		var address=new String("/index?pagenum=");
		if(pagenum>1){
			window.location.href=new String("/blog"+ address + (pagenum-1));
		}else{
			alert("没有上一页");
		}
	}
	function down(){
		var pagenum=<%=request.getAttribute("pageNo")%>;
		var totalpage=<%=request.getAttribute("total")%>;
		var address=new String("/index?pagenum=");
		if(pagenum<totalpage){
			window.location.href=new String("/blog"+ address + (pagenum+1));
		}else{
			alert("没有下一页");
		}
	}
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
				<li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span> 日志</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-fire"></span> 留言</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
			</ul>	
		</div>
	</div>
</nav>
		<table class="table table-striped table-hover">
			<caption><%=request.getAttribute("uName") %>的JB</caption>
			<thead>
				<tr>
					<th style="width: 50%">文章名</th>
					<th style="width: 30%">日期</th>
					<th style="width: 20%">浏览</th>
				</tr>
			</thead>
			<tbody id="arttbody">
				<%JSONArray ja= JSONArray.fromObject(request.getAttribute("article")) ;
				for(int i=0;i<ja.size();i++){%>
				<tr>
					<td><a href=/blog/article/<%=((Map)(ja.get(i))).get("article_id") %> ><%= ((Map)ja.get(i)).get("article_title") %></a></td>
					<td><%= ((Map)ja.get(i)).get("updateTime") %></td>
					<td><%= ((Map)ja.get(i)).get("visitTime") %></td>
				</tr>
				<%} %>
			</tbody>
			<tfoot>  
				<tr>
					<th><button class="btn upbtn" onclick="up()">上页</button></th>
					<th>第<%=request.getAttribute("pageNo") %>页，共<%=request.getAttribute("total") %>页</th>
					<th ><button class="btn downbtn" onclick="down()" >下页</button></th>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>