<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/13
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css"/>
    <script src="<%=path%>/js/jquery.min.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <title>头部</title>

    <style>
        .navbar-nav > li >a{
            font-size: 15px;
            line-height: 30px;
        }

        .navbar-header a{
            margin-left: 50px;
        }

        #nav{
            margin-left: 30px;
        }

        #nav li{
            margin-left: 10px;
        }

        #jumbotron{
            margin-top: -18px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-default"><!--  导航条 -->
    <div class="container-fluid">
        <!--            写header-->
        <div class="navbar-header navbar-btn">
            <a href="#" id="main">
                <img src="<%=path%>/images/img_main.png" style="height: auto;width: 50px">
            </a>
        </div>

        <ul class="nav navbar-nav" id="nav">
            <li><a href="#">公司管理</a></li>
            <li><a href="#">人力资源部</a></li>
            <li><a href="#">请假申请</a></li>
            <li><a href="#">报销申请</a></li>
            <li><a href="#">账单管理</a></li>
            <li><a href="#">出勤记录</a></li>
        </ul>


        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">账号管理
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href=""><span class="glyphicon glyphicon-user"></span>
                            登录</a>
                    </li>
                    <li><a href="">
                        <span class="glyphicon glyphicon-info-sign"></span>
                        头像更换</a></li>
                    <li>
                        <a href="">
                            <span class="glyphicon glyphicon-pencil"></span>修改信息</a>
                    </li>
                    <li>
                        <a href="javascript:" id="login_out">
                            <span class="glyphicon glyphicon-off"></span>账号退出</a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>
</nav>

    <script>
        $("#login_out").click(function () {
            window.location.href = "<%=path%>/login/out";
        });

        $("#main").click(function () {
            $(this).prop("href","<%=path%>/login/main");
        });
    </script>

</body>
</html>
