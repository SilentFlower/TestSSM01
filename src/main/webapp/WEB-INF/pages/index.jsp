<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/13
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
</head>
<body>
<%@include file="common/head.jsp"%>

<div class="container-fluid" style="height: 600px">
    <%@include file="common/left.jsp"%>
    <div class="col-sm-10">
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="active"><a href="#">首页</a></li>
            </ul>
        </div>

        <div class="container-fluid">
            <div class="jumbotron" id="jumbotron">
                <h1>欢迎使用后台管理系统</h1>
                <p>这是一个管理人员、部门的系统</p>
                <p><a class="btn btn-primary btn-lg" role="button">
                    使用规则</a>
                </p>
            </div>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp"%>

</body>
</html>