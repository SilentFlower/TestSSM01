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
<div class="modal fade" id="dept_add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">部门新增</h4>
            </div>
            <div class="modal-body">
                <form action="javascript:" method="post" class="form-horizontal" id="in">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">部门名字</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="department" placeholder="请输入部门名称" name="dept_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">部门领导</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="email" placeholder="请输部门领导" name="dept_leader">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="add_2">确认新增</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>
<script>
    $("#bt_dept_add").click(function () {
        $('#dept_add').modal("show");

    });

    $("#add_2").click(function () {
        $.ajax({
            url:"${pageContext.request.contextPath}/department/ins",
            type:"POST",
            data:$("#dept_add form").serialize(),
            success:function (data) {
                if (data === "200"){
                    $("#dept_add").modal("hide");
                }else{
                    alert("员工数据添加失败");
                }


            }
        });
    });


</script>
