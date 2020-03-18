<%--
  Created by IntelliJ IDEA.
  User: SiletFlower
  Date: 2020/3/13
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-sm-2" style="background:#EEEEEE;height: 100%;">
    <ul class="nav nav-pills nav-stacked">  <!--垂直导航菜单-->

        <li role="presentation" class="active" style="margin-top: 10px">
            <a href="#" data-toggle="collapse" data-target="#collapse_emp">
                <span class="glyphicon glyphicon-user" aria-hidden="true">员工管理</span>
            </a>

            <ul class="nav nav-pills nav-stacked" id="collapse_emp">
                <li role="presentation"><a href="javascript:" id="im_em">员工信息</a></li>
                <li role="presentation"><a href="javascript:" data-toggle="modal" data-target="#myModal " id="mol">员工新增</a></li>
                <li role="presentation"><a href="#">员工清零</a></li>
            </ul>
        </li>

        <li role="presentation" class="active">
            <a href="#" data-toggle="collapse" data-target="#collapse_dpt">
                <span class="glyphicon glyphicon-user" aria-hidden="true">部门管理</span>
            </a>

            <ul class="nav nav-pills nav-stacked" id="collapse_dpt">
                <li role="presentation"><a href="#" id="deparment">部门信息</a></li>
                <li role="presentation"><a href="#" id="bt_dept_add">部门新增</a></li>
                <li role="presentation"><a href="#">部门清零</a></li>
            </ul>
        </li>

    </ul>
    <%@include file="em_add.jsp"%>
    <%@include file="dep_add.jsp"%>

</div>
<script>
    $(function () {
        $("#im_em").click(function () {
            $(this).prop("href","${pageContext.request.contextPath}/Emplpyee/to");
        });

        $("#deparment").click(function () {
            $(this).prop("href","${pageContext.request.contextPath}/department/toDep");
        });
    });
</script>
