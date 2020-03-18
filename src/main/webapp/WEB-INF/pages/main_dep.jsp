<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/17
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="common/head.jsp"%>

<div class="container-fluid" style="height: 600px">
    <%@include file="common/left.jsp"%>
    <div class="col-sm-10">

        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="active"><a href="#">首页</a></li>
                <li class="active"><a href="#">部门管理</a></li>
                <li class="active">部门信息</li>
            </ul>
        </div>

        <div class="container-fluid panel">
            <table class="table table-hover table-bordered" id="table_em">
                <thead>
                <tr>
                    <th>部门ID</th>
                    <th>部门名字</th>
                    <th>部门领导</th>
                    <th>操作</th>
                </thead>
                <tbody id="tb2">

                </tbody>
            </table>

            <div class="panel-body" style="text-align: center">
                <ul class="pagination" id="AllPage2">
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
<%@include file="common/dept_edit.jsp"%>
</body>
</html>

<script>
    function page(){
        var page = $("#AllPage2 .active a").text();
        $.ajax({
            url:"${pageContext.request.contextPath}/department/getpage/"+page,
            type:"GET",
            async:false,
            success:function (data) {
                $("#tb2").html("");
                $.each(data,function (i,n) {
                    $("#tb2").append(
                        "<tr>" +
                        "<td id='td_id_2'>" + n.dept_id + "</td>" +
                        "<td>" + n.dept_name + "</td>" +
                        "<td>" + n.dept_leader + "</td>" +
                        "<td>" +
                        '<button class="btn btn-primary" id="edit2" data-target="myModal_edit">编辑</button>' +
                        '<button class="btn btn-primary" id="delete2" style="background-color: #761c19">删除</button>' +
                        "</td>" +
                        "</tr>"
                    );
                });
            }
        });
    }

    $(function () {
        page();
        $("#AllPage2 a").click(function () {
            $(this).parent().addClass("active").siblings().removeClass("active");
            page();
        })
    });

    $(document).on("click","#delete2",function () {
        var $uid = $(this).parent().parent().find("#td_id_2").text()
        console.log($uid);
        confirm("是否确认删除?");
        $.ajax({
            url:"${pageContext.request.contextPath}/department/del/"+$uid,
            type: "GET",
            success:function (data) {
                if(data === "200")
                    page();
                else
                    alert("删除失败");
            }
        })
    });

    $(document).on("click","#edit2",function () {
        $("#myModal_edit").modal("show");
        var $that = $(this).parent().parent().find("td");
        $("#uid3").val($that.eq(0).text());
        $("#deptname").val($that.eq(1).text());
        $("#leader").val($that.eq(2).text());

        $("#bt_dept_edit").click(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/department/edit",
                type:"POST",
                data:$("#in_dept_edit").serialize(),
                success:function (data) {
                    if(data === "200") {
                        $("#myModal_edit").modal("hide");
                        page();
                    }
                    else
                        alert("修改失败");

                }
            })
        });
    });




</script>
