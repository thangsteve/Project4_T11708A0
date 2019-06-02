
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .not-active {
                pointer-events: none;
                cursor: default;
                text-decoration: none;
                color: black;
            }
            .button {
                background-color: #4CAF50; /* Green */
                border-radius: 30%;
                color: white;
                padding: 5px 5px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
                margin: 4px 2px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
            }

            .button1 {
                background-color: white; 
                color: green; 
                border: 2px solid #4CAF50;
            }

            .button1:hover {
                background-color: #4CAF50;
                color: white;
            }

            .button2 {
                background-color: white; 
                color: black; 
                border: 2px solid #008CBA;
            }

            .button2:hover {
                background-color: #008CBA;
                color: white;
            }

            .button3 {
                background-color: white; 
                color: red; 
                border: 2px solid #f44336;
            }

            .button3:hover {
                background-color: #f44336;
                color: white;
            }

            .button4 {
                background-color: white;
                color: orange;
                border: 2px solid orange;
            }

            .button4:hover {background-color: orange;}

            .button5 {
                background-color: white;
                color: black;
                border: 2px solid #555555;
            }

            .button5:hover {
                background-color: #555555;
                color: white;
            }
        </style>
    </head>
    <body>
        <jsp:include page="2.jsp"></jsp:include>
            <div class="row">
                <div class="col-sm-8"><p>${note}</p></div>
                <div class="col-sm-4">
                    <input class="form-control" type="text" id="myInput" placeholder="Search..."/>
                </div>
            </div>
            <br>
            <table border="1" class="table table-striped table-bordered table-hover">
                <tr>
                    <th style="cursor: pointer" onclick="sortTable(0)">ID</th>
                    <th style="cursor: pointer" onclick="sortTable(1)">Name</th>
                    <th style="cursor: pointer" onclick="sortTable(2)">Email</th>
                    <th>Action</th>                   

                </tr>  
                <tbody id="myTable">
                <c:forEach var="c" items="${list}">
                    <tr class="contentPage">
                        <td>${c.contactID}</td>
                        <td>${c.name}</td>
                        <td>${c.email}</td>
                        <td> 
                            <a href="getEmailCusServlet?contacId=${c.contactID}" class="button button1"><i class="fa fa-shopping-cart"></i>Reply</a>       
                        </td>                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>


        <div class="row">
            <div class="col-sm-3"></div>
            <div id="pagination" class="col-sm-6"> </span></div>
            <div class="col-sm-3"></div>
        </div>    
        <jsp:include page="1.jsp"></jsp:include>
        <div id="totalrow" class="hide">${listsizeorder}</div>
        <script src="js/jquery.twbsPagination.js"></script>
        <script type="text/javascript">
                        $(function() {
                            var pageSize = 7; // Hiển thị 6 sản phẩm trên 1 trang
                            showPage = function(page) {
                                $(".contentPage").hide();
                                $(".contentPage").each(function(n) {
                                    if (n >= pageSize * (page - 1) && n < pageSize * page)
                                        $(this).show();
                                });
                            }
                            showPage(1);
                            ///** Cần truyền giá trị vào đây **///
                            var totalRows = $("#totalrow").text(); // Tổng số sản phẩm hiển thị
                            var btnPage = 5; // Số nút bấm hiển thị di chuyển trang
                            var iTotalPages = Math.ceil(totalRows / pageSize);

                            var obj = $('#pagination').twbsPagination({
                                totalPages: iTotalPages,
                                visiblePages: btnPage,
                                onPageClick: function(event, page) {
                                    /* console.info(page); */
                                    showPage(page);
                                }
                            });
                            /*console.info(obj.data());*/
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
                                shouldSwitch = true;
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
                        switchcount++;
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
    </body>
</html>
