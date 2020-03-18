<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/15
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">员工新增</h4>
            </div>
            <div class="modal-body">
                <form action="javascript:" method="post" class="form-horizontal" id="in">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">员工姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" placeholder="请输入姓名" name="emp_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" placeholder="请输入邮箱" name="emp_email">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="update_empGender1" value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="update_empGender2" value="女"> 女
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="department_id" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="department_id" placeholder="默认1" name="department_id">
                        </div>
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="add">确认新增</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>
<script>
    $("#mol").click(function () {
        $('#myModal').modal({
            backdrop:static,
            keyboard:true
        });
    })

    $("#add").click(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/Emplpyee/ins",
            type:"POST",
            data:$("#in").serialize(),
            success:function (data) {
                if (data === "200"){
                    $("#myModal").modal("hide");
                }else{
                    alert("员工数据添加失败");
                }


            }
        });
    })


</script>
