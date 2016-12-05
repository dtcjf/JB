<%@page import="jdk.nashorn.internal.scripts.JS"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap大法好</title>
<!-- 对移动设备友好 -->
<meta name="renderer" content="webkit">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet">
<script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
<script>
	$(document).ready(
			function init() {
				
			});
</script>
</head>
<body>
	<div class="table-responsive">
		<table class="table">
			<caption><%=request.getAttribute("uName") %></caption>
			<thead>
				<tr>
					<th>文章名</th>
					<th>日期</th>
					<th>浏览次数</th>
				</tr>
			</thead>
			<tbody id="arttbody">
				<%JSONArray ja= JSONArray.fromObject(request.getAttribute("article")) ;
				for(int i=0;i<ja.size();i++){%>
				<tr>
					<td><%= ((Map)ja.get(i)).get("article_title") %></td>
					<td><%= ((Map)ja.get(i)).get("updateTime") %></td>
					<td><%= ((Map)ja.get(i)).get("visitTime") %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
	</div>
</body>
</html>