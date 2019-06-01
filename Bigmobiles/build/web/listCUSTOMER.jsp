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
                <div class="row">
                    <div class="col-sm-8"> <h1 class="card-title">Danh sách quản lý</h1></div>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" id="myInput" placeholder="Search..."/>
                    </div>
                </div>
                <br>
                <table class="table table-striped">
                    <tr>
                        <th style="cursor: pointer" onclick="sortTable(0)"> Avatar </th>
                        <th style="cursor: pointer" onclick="sortTable(1)"> Full Name</th>
                        <th style="cursor: pointer" onclick="sortTable(2)"> Email</th>
                        <th style="cursor: pointer" onclick="sortTable(3)"> Create Date </th>
                        <th style="cursor: pointer" onclick="sortTable(4)">Status</th>
                        <th>Action</th>
                    </tr>
                    <tbody id="myTable">
                    <c:forEach items="${user}" var="s">
                        <tr>
                            <td class="py-2">
                                <img src="uploadDir/${s.avatar}" /> </td>
                            <td>${s.fullName} </td>
                            <td>${s.email} </td>
                            <td>${s.createdDate} </td>
                            <td><c:choose>
                                    <c:when test="${s.customerState!=true}">
                                        <span style="display:none">${s.customerID}</span>
                                        <button type="button" class="btn btn-outline-success">enable</button>
                                    </c:when>
                                    <c:otherwise>
                                        <span style="display:none">${s.customerID}</span>
                                        <button type="button" class="btn btn-outline-warning">disable</button>
                                    </c:otherwise>
                                </c:choose></td>
                            <td> <button  class="btn btn-outline-info">Sửa</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
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
                    url: "/bigmobiles/listCustomerServlet",
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
                    url: "/bigmobiles/listCustomerServlet",
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
<script>
    $(document).ready(function() {
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>
<script>
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc"; 
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;      
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
</script>
<jsp:include page="1.jsp"></jsp:include>