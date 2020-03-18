<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/13
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%String path =request.getContextPath(); %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css"/>
    <script src="<%=path%>/js/jquery.min.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <title>登录</title>

</head>
<body style="background-color: #56baed;height: 100%">
<div class="container" data-toggle="modal" style="background: #ffffff;border-radius: 10px;text-align: center;
width: 450px;margin-top: 13%;box-shadow: 0 30px 60px 0 rgba(0,0,0,.3);animation-name: fadeInDown;animation-duration: 1s;
animation-fill-mode: both;">
    <div>
        <h2>欢迎登录公司后台管理平台</h2>
    </div>

    <div style="margin-top: 40px">
        <span class="glyphicon glyphicon-education" style="font-size: 50px"></span>
    </div>

    <form class="form-horizontal" style="margin-top: 50px" id="form" method="post" action="javascript:">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputEmail3" placeholder="Email" name="username">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password">
            </div>
        </div>
        <div class="form-group">
            <div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">记住密码
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class>
                <button type="submit" class="btn btn-lg btn-primary" id="login_btn">登录</button>
            </div>
        </div>
    </form>


</div>

<script type="text/javascript">
    $(function () {

        $("#login_btn").click(function () {
            $.ajax({
                url:"login/in",
                type:"POST",
                data:$("#form").serialize(),
                dataType:'json',
                success:function (result) {
                    if (result.code === 100){
                        window.location.href="${pageContext.request.contextPath}/login/main";
                    }else{
                        alert(result.msg);
                    }
                }

            });
        });
    });
</script>

</body>

</html>


