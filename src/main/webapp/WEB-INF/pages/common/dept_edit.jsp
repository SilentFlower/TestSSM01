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
<div class="modal fade" id="myModal_edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">部门信息编辑</h4>
            </div>
            <div class="modal-body">
                <form action="javascript:" method="post" class="form-horizontal" id="in_dept_edit">
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">uid</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="uid3" readonly name="dept_id">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">部门名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="deptname" value="" name="dept_name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">部门领导</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="leader" placeholder="请输入邮箱" name="dept_leader">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="bt_dept_edit">确认修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
</html>

