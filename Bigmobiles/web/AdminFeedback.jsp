

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="2.jsp"></jsp:include>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">   
                <table class="table table-striped">
                    <tr>
                        <th>ID</th>
                        <th>Email</th>
                        <th>Name</th>
                        <th>Content</th>
                        <th>Actiton</th>
                    </tr>
                <c:forEach var="c" items="${list}">
                    <tr>
                        <td>${c.contactID}</td>
                        <td>${c.email}</td>
                        <td>${c.name}</td>
                        <td>${c.content}</td>
                        <td> 
                            <a href="getEmailServlet?contacId=${c.contactID}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Reply</a>       
                        </td>  
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>


<jsp:include page="1.jsp"></jsp:include>
