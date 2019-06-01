<%-- 
    Document   : listADMIN
    Created on : May 26, 2019, 12:31:06 PM
    Author     : An
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="2.jsp"></jsp:include>


    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h1 class="card-title">Danh sách quản lý</h1>
                <a href="createAdmin.jsp" >Tạo nhân viên</a>
                <table class="table table-striped">
                    <tr>
                        <th> Hình đại diện </th>
                        <th> Họ và Tên </th>
                        <th> Thư điện tử </th>
                        <th> Ngày tạo </th>
                        <th>Trạng thái</th>
                        <th>Chỉnh sửa tài khoản</th>
                    </tr>
                    <c:forEach items="${staff}" var="s">
                    <tr>
                        <td class="py-2">
                            <img src="uploadDir/${s.avatar}" /> </td>
                        <td>${s.fullname} </td>
                        <td>${s.email} </td>
                        <td>${s.createdDate} </td>
                        <td><c:choose>
                        <c:when test="${s.adminState!=true}">
                            <span style="display:none">${s.adminID}</span>
                            <button type="button" class="btn btn-outline-success">enable</button>
                        </c:when>
                        <c:otherwise>
                            <span style="display:none">${s.adminID}</span>
                            <button type="button" class="btn btn-outline-warning">disable</button>
                        </c:otherwise>
                    </c:choose></td>
                        <td> <input disabled value="aaaaa" class="btn btn-outline-info"/></td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {

        $(".btn").click(function() {
            var id = $(this).parent().find("span").text();
            var text = $(this).text();
            if (text == "enable") {
                $(this).text("disable");
                $(this).removeClass("btn-outline-success");
                $(this).addClass("btn-outline-warning");
                $.ajax({
                    method: "GET",
                    url: "/Bigmobiles/ShowAdminServlet",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: {"id": id, "method": "enable"}
                }).done(function() {
                    alert("ok");
                });
            } else {
                $(this).text("enable");
                $(this).removeClass("btn-outline-warning");
                $(this).addClass("btn-outline-success");
                $.ajax({
                    method: "GET",
                    url: "/Bigmobiles/ShowAdminServlet",
                    dataType: 'json',
                    contentType: 'application/json',
                    data: {"id": id, "method": "disable"}
                }).done(function() {
                    alert("ok");
                });
            }
        });
    });
</script>

<jsp:include page="1.jsp"></jsp:include>