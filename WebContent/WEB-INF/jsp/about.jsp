<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>关于JB</title>
    <meta name="renderer" content="webkit">
    <!-- 对移动设备友好 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href=<%=request.getContextPath() %>/css/bootstrap.min.css rel="stylesheet"/>
    <script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
    <script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
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
                <li><a href="<%= request.getContextPath()%>/index"><span class="glyphicon glyphicon-home"></span> 首页</a>
                </li>
                <li><a href="#"><span class="glyphicon glyphicon-list"></span> 相册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-fire"></span> 留言</a></li>
                <li><a href="<%= request.getContextPath()%>/tologin"><span class="glyphicon  glyphicon-user"></span> 登录</a>
                </li>
                <li class="<%= request.getContextPath()%>active"><a href="<%= request.getContextPath()%>/about"><span
                        class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
                <% if ((request.getSession().getAttribute("jf")) != null) { %>
                <li><a href="<%= request.getContextPath()%>/edit"><span class="glyphicon glyphicon-pencil"></span>
                    编辑</a></li>
                <%} %>
            </ul>
        </div>
    </div>
</nav>
<div class="container" style="margin-top: 50px">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="carousel slide" id="carousel-350270">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-350270">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-350270">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-350270">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="<%= request.getContextPath()%>/img/1.jpg" style="margin:0 auto"/>
                        <div class="carousel-caption">
                            <h4>
                            </h4>
                            <p>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="<%= request.getContextPath()%>/img/2.jpg" style="margin:0 auto"/>
                        <div class="carousel-caption">
                            <h4>
                            </h4>
                            <p>
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="<%= request.getContextPath()%>/img/3.jpg" style="margin:0 auto"/>
                        <div class="carousel-caption">
                            <h4>

                            </h4>
                            <p>
                            </p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-350270" data-slide="prev"><span
                        class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control"
                                                                                href="#carousel-350270"
                                                                                data-slide="next"><span
                    class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
    <div class="row clearfix" style="margin-top: 50px">
        <div class="col-md-4 column">
            <dl>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
            </dl>
        </div>
        <div class="col-md-4 column">
            <dl>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
            </dl>
        </div>
        <div class="col-md-4 column">
            <dl>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
                <dt>
                    我也不知道写什么
                </dt>
                <dd>
                    我也不知道写什么
                </dd>
            </dl>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column text-center">
            <address><strong>Powered By Twitter, Inc.</strong></address>
        </div>
    </div>
</div>

</body>
</html>