<%@page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@page import="org.springframework.context.ApplicationContext" %>
<%@page import="com.apachegoo.service.UserService" %>
<%@page import="com.apachegoo.model.User" %>
<%@page import="com.apachegoo.model.Comment" %>
<%@page import="java.util.List" %>
<%@page import="com.apachegoo.model.Article" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>博文：<%=((Article) request.getAttribute("article")).getArticleTitle() %>
    </title>
    <meta name="renderer" content="webkit">
    <!-- 对移动设备友好 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet"/>
    <script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
    <script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
    <script>
        $(function () {
            $("#submit").click(function () {
                var username = $("#nickname").val();
                var email = $("#email").val();
                var content = $("#content").val();
                if (username == "") {
                    alert("请输入昵称");
                    return;
                }
                if (email == "请输入Email") {
                    alert();
                    return;
                }
                if (content == "请输入评论") {
                    alert();
                    return;
                }
                var params = {};
                params.username = username;
                params.email = email;
                params.content = content;
                params.articleid =<%=((Article)request.getAttribute("article")).getArticleId() %>;
                $.ajax({
                    url: "<%= request.getContextPath()%>/comment",
                    type: "post",
                    data: params,
                    dataType: "text",
                    async: true,
                    success: function (data) {
                        if (data == "success") {
                            alert("评论成功");
                            window.location.reload();
                        } else {
                            alert("评论失败");
                            window.location.reload();
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
                <li><a href="<%= request.getContextPath()%>/index"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-list"></span> 相册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-fire"></span> 留言</a></li>
                <li><a href="<%= request.getContextPath()%>/tologin"><span class="glyphicon  glyphicon-user"></span> 登录</a></li>
                <li><a href="<%= request.getContextPath()%>/about"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
                <% if ((request.getSession().getAttribute("jf")) != null) { %>
                <li><a href="<%= request.getContextPath()%>/edit"><span class="glyphicon glyphicon-pencil"></span> 编辑</a></li>
                <%} %>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                <%=((Article) request.getAttribute("article")).getArticleTitle() %>
            </h3>
            <hr>
            <p>
                <%=((Article) request.getAttribute("article")).getArticleContent() %>
            </p>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h4>评论（<%=((List<Comment>) request.getAttribute("comment")).size() %>）</h4>
            <hr>
        </div>
    </div>
    <% List<Comment> comments = (List<Comment>) request.getAttribute("comment");
        if (comments.size() != 0) {
            ServletContext sc = this.getServletContext();
            for (Comment c : comments) {
                ApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(sc);
                // 获得应用上下文的userService实体
                UserService userService = (UserService) ac.getBean("userService");
                User user = userService.queryUserByUserId(c.getCommentUserId());
    %>
    <div class="row">
        <div class="col-md-4">
            <p><%=user.getUserName() %>
            </p>
        </div>
        <div class="col-md-4">
            <p><%=user.getUserEmail() %>
            </p>
        </div>
        <div class="col-md-4">
            <p><%=c.getCommentTime() %>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h5><%=c.getCommentContent() %>
            </h5>
            <hr>
        </div>
    </div>
    <%
        }
    } else {
    %>
    <div class="row">
        <div class="col-md-12">
            <h5>暂无评论</h5>
            <hr>
        </div>
    </div>
    <%} %>
    <div class="row">
        <div class="col-md-12">
            <form role="form" onsubmit="comment()">
                <div class="form-group">
                    <label for="name">昵称</label>
                    <input type="text" class="form-control" id="nickname" placeholder="请输入您的昵称"/>
                </div>
                <div class="form-group">
                    <label for="name">邮箱</label>
                    <input type="email" class="form-control" id="email" placeholder="请输入您的邮箱"/>
                </div>
                <div class="form-group">
                    <label for="name">文本框</label>
                    <textarea class="form-control" rows="5" id="content" placeholder="请输入"></textarea>
                </div>
                <div class="form-group">
                    <input type="button" class="form-control btn btn-info" value="提交" id="submit"></input>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>