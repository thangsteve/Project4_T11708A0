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
                <table id="example1"  class="table table-striped">
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
<script type="text/javascript">
            $(function () {
                $('#example1').DataTable({
                    "order": [[0, "desc"]],
                    dom: 'Bfrtip',
                    buttons: [
                        'copy', 'excel', 'pdf', 'print'
                    ]
                });
            });
        </script>
<div class="control-sidebar-bg"></div>

<!-- jQuery 2.1.4 -->
<script src="Admin/plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="Admin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="Admin/dist/js/app.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src="Admin/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="Admin/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- jvectormap -->
<script src="Admin/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
<script src="Admin/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
<!-- SlimScroll 1.3.0 -->
<script src="Admin/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- ChartJS 1.0.1 -->
<script src="Admin/plugins/chartjs/Chart.min.js" type="text/javascript"></script>
<!-- Select2 -->
<script src="Admin/plugins/select2/select2.full.min.js" type="text/javascript"></script>
<!-- InputMask -->
<script src="Admin/plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
<script src="Admin/plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
<script src="Admin/plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
<script src="Admin/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- bootstrap color picker -->
<script src="Admin/plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
<!-- bootstrap time picker -->
<script src="Admin/plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
<!-- SlimScroll 1.3.0 -->
<script src="Admin/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- iCheck 1.0.1 -->
<script src="Admin/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src="Admin/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
<!-- Valid -->
<script src="Admin/jquery.validate.min.js" type="text/javascript"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="Admin/plugins/morris/morris.min.js" type="text/javascript"></script>

<!-- DATA TABES SCRIPT -->
<script type="text/javascript" src="Admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/buttons.bootstrap.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/jszip.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/pdfmake.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/vfs_fonts.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/buttons.print.min.js"></script>
<script type="text/javascript" src="Admin/plugins/datatables/extensions/Buttons/js/buttons.colVis.min.js"></script>

<jsp:include page="1.jsp"></jsp:include>