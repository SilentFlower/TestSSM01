<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/16
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="modal fade" id="myModal_2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">员工信息编辑</h4>
            </div>
            <div class="modal-body">
                <form action="javascript:" method="post" class="form-horizontal" id="in2">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">uid</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="uid2" readonly name="emp_id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">员工姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="username" value="" name="emp_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" value="wttfff" id="email" placeholder="请输入邮箱" name="emp_email">
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
                        <label for="wtf" class="col-sm-2 control-label">部门</label>
                        <div class="col-sm-10">
                            <select name="department_id" id="wtf">

                            </select>
                        </div>
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="bt_edit">确认修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>
<script>
    $(function () {
        $(document).on("click","#edit",function () {
            $("#myModal_2").modal("show");
            var $modal = $("#myModal_2");
            var uid = $(this).parent().parent().find("td").eq(0).text();
            $.ajax({
                url:"${pageContext.request.contextPath}/Emplpyee/get",
                type: "post",
                data: {"uid":uid},
                success:function (data) {
                    console.log(data);
                    $modal.find("#uid2").val(data.choose.emp_id);
                    $modal.find("#username").val(data.choose.emp_name);
                    $modal.find("#email").val(data.choose.emp_email);
                    if(data.choose.gender == "男"){
                        $modal.find("#update_empGender1").prop("checked",true);
                    }else{
                        $modal.find("#update_empGender2").prop("checked",true);
                    }
                    $modal.find("#wtf").html("");
                    $modal.find("#wtf").append('<option value="'+data.choose.department_id+'">'+data.choose.dept_name+'</option>');
                    $.each(data.other,function (i,n) {
                        $modal.find("#wtf").append('<option value="'+n.dept_id+'">'+n.dept_name+'</option>');

                    });
                }

            })

        });

        $("#bt_edit").click(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/Emplpyee/edi",
                type:"POST",
                data:$("#in2").serialize(),
                success:function (data) {
                    if(data === "200"){
                        $("#myModal_2").modal("hide");
                        page($("#AllPage .active"));
                    }

                }
            })
        });
    })

</script>

