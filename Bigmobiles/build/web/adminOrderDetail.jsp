<%-- 
    Document   : adminOrderDetail
    Created on : Jun 1, 2019, 1:22:57 AM
    Author     : congm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="2.jsp"></jsp:include>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h3><b>Order Information</b></h3>
                            <hr>
                            <form class="forms-sample">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input"><b>Order# </b> </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" checked><b>Full Name :</b></label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled><b>Order Date : </b></label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled checked><b>  Order Status :</b></label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled checked>  <b>Total :</b> </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-radio">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="" checked><b>${odd.orderID}</b></label>
                                        </div>
                                        <div class="form-radio">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2"><b>${odd.customerID.fullName}</b></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios2" id="optionsRadios3" value="option3" disabled><b>${odd.createdDate} </b></label>
                                        </div>
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled checked><b>${odd.processStatus} </b></label>
                                        </div>
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled checked><b>${odd.total} </b></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h3><b>Delivery Information</b></h3>
                        <hr>  
                        <form class="forms-sample">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="checkbox" class="form-check-input"><b>Recipient's Name </b> </label>
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="checkbox" class="form-check-input" checked><b>Recipient's Phone :</b></label>
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="checkbox" class="form-check-input" disabled><b>Recipient's Address: </b></label>
                                        </div>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input type="checkbox" class="form-check-input" disabled checked><b>Delivery Date:</b></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-radio">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="" checked><b>${odd.shipName}</b> </label>
                                        </div>
                                        <div class="form-radio">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2"><b>${odd.shipPhone} </b></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios2" id="optionsRadios3" value="option3" disabled><b>${odd.shipAddress} </b></label>
                                        </div>
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled checked> <b>${odd.shipDate} </b> </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h3><b>Order Detail</b></h3>
                        <hr>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th> No </th>
                                    <th> Product</th>
                                    <th> Price </th>
                                    <th> Quantity </th>
                                    <th> Total </th>
                                    <th> Action </th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="c" items="${odddetail}" varStatus="index">                                                   
                                <tr>
                                    <td>${index.index+1}</td>
                                    <td>${c.productID.productName}</td>
                                    <td>${c.productID.price}</td>
                                    <td>${c.quantity}</td>
                                    <td>${c.total}</td>
                                    <td>Detail  </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="1.jsp"></jsp:include>
    </body>
</html>
