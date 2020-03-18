<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/13
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body id="bb">
    <%@include file="common/head.jsp"%>

    <div class="container-fluid" style="height: 600px">
        <%@include file="common/left.jsp"%>
        <div class="col-sm-10">

            <div class="container-fluid">
                <ul class="breadcrumb">
                    <li class="active"><a href="#">首页</a></li>
                    <li class="active"><a href="#">员工管理</a></li>
                    <li class="active">员工信息</li>
                </ul>
            </div>

            <div class="container-fluid panel">
                <table class="table table-hover table-bordered" id="table_em">
                    <thead>
                    <tr>
                        <th>员工编号</th>
                        <th>员工姓名</th>
                        <th>邮箱</th>
                        <th>性别</th>
                        <th>部门</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody id="tb">

                    </tbody>
                </table>

                <div class="panel-body" style="text-align: center">
                    <ul class="pagination" id="AllPage">
                        <li><a>&laquo;</a></li>
                        <li class="active"><a href="javascript:">1</a></li>
                        <li><a href="javascript:">2</a></li>
                        <li><a href="javascript:">3</a></li>
                        <li><a href="javascript:">4</a></li>
                        <li><a href="javascript:">5</a></li>
                        <li><a>&raquo;</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <%@include file="common/footer.jsp"%>
    <%@include file="common/em_edit.jsp"%>
</body>
<script>

    function page(){
        var page = $("#AllPage .active a").text();
        $.ajax({
            url:"${pageContext.request.contextPath}/Emplpyee/get2",
            type:"POST",
            dataType:"json",
            async:false,
            data:{"pageNo" : page},
            success:function (data) {
                $("#tb").html("");
                $.each(data,function (i,n) {
                    $("#tb").append("<tr><td id='td_id'>"+n.emp_id+"</td>"+
                        "<td>"+n.emp_name+"</td>"+
                        "<td>"+n.emp_email+"</td>"+
                        "<td>"+n.gender+"</td>"+
                        "<td>"+n.dept_name+"</td>"+
                        "<td>"+
                        '<button class="btn btn-primary" id="edit" data-target="myModal_2">编辑</button>'+
                        '<button class="btn btn-primary" id="delete" style="background-color: #761c19">删除</button>'+
                        "</td></tr>"
                    );
                });

            }
        });
    }

    $(function () {
        page();

        $("#AllPage a").click(function () {
            $(this).parent().addClass('active').siblings().removeClass('active');
            page();
        });

        $(document).on("click","#delete",function () {
            var id = $(this).parent().parent().find("#td_id").text();
            if(confirm("是否确认删除")){
                $.ajax({
                    url:"${pageContext.request.contextPath}/Emplpyee/del",
                    data:{"uid":id},
                    type:"POST",
                    success:function (data) {
                        if(data === "200")
                        {
                            alert("删除成功");
                            page($("#AllPage .active"));
                        }

                    }
                });
            }

        });

    });
</script>
</html>
