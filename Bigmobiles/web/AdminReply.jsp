

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
                            <h3><b> Information</b></h3>
                            <hr>
                            <form class="forms-sample">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input"><b>ID </b> </label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" checked><b>Full Name :</b></label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled><b>Email : </b></label>
                                            </div>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input" disabled checked><b>  Create Date :</b></label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-radio">
                                                <label class="form-check-label">
                                                    <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="" checked><b>${contac.contactID}</b></label>
                                        </div>
                                        <div class="form-radio">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2"><b>${contac.name}</b></label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadios2" id="optionsRadios3" value="option3" disabled><b>${contac.email} </b></label>
                                        </div>
                                        <div class="form-radio disabled">
                                            <label class="form-check-label">
                                                <input type="radio" class="form-check-input" name="optionsRadio2" id="optionsRadios4" value="option4" disabled checked><b>${contac.createDate} </b></label>
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
                        <h3><b>Customer Message</b></h3>
                        <hr>  
                        <form class="forms-sample">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="form-group">
                                        ${contac.content}
                                    </div>
                                </div>
                                <div class="col-md-2">

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h3><b>Reply Feedback</b></h3>
                        <hr>
                        <div class="col-12 grid-margin">
                            <div class="card">
                                <div class="card-body">

                                    <form class="form-sample" action="AdminReplyServlet" method="post" id="regform" enctype="multipart/form-data" >
                                        <p style="color: red" class="m-b-20">${mess}</p>
                                        <p class="card-description"> </p>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">To</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" name="to" value="${contac.email}" readonly="readonly" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Subject</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" value="Feedback From BigMobile" name="subject" class="form-control" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="col-sm-3 col-form-label">Message</label>
                                                    <div class="col-sm-9">
                                                        <textarea class="form-control" style="border-radius: 10px" rows="20" name="message" required></textarea>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <input  type="submit" value="Send" class="btn btn-success mr-2"/>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="1.jsp"></jsp:include>
    </body>
</html>
