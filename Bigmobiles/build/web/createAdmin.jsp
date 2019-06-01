<%-- 
    Document   : createAdmin
    Created on : May 26, 2019, 12:51:15 PM
    Author     : An
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="2.jsp"></jsp:include>

    <div class="row">
        <div class="col-12 grid-margin">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Tạo tài khoản quản lý</h4>
                    <form class="form-sample" action="createAdminServlet" method="post" id="regform" enctype="multipart/form-data" >
                        <p style="color: red" class="m-b-20">${mess}</p>
                    <p class="card-description"> </p>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Tên đầy đủ</label>
                                <div class="col-sm-9">
                                    <input type="text" required title="Vui lòng nhập đúng tên của bạn, không bao gồm số và không quá 30 ký tự" name="fullname" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Địa chỉ email</label>
                                <div class="col-sm-9">
                                    <input type="email" name="email" required placeholder="Email dùng để đăng nhập" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Hình đại diên</label>
                                <div class="col-sm-9">
                                    <input required title="hình phải có định dạng .png hoặc .jpg" name="file" type="file" accept=".png,.jpg"/>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Mật khẩu</label>
                                <div class="col-sm-9">
                                    <input type="password" id="password" required name="password" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-3 col-form-label">Xác nhật Mật khẩu</label>
                                <div class="col-sm-9">
                                    <input type="password"  required id="confirm_password" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <input  type="submit" value="Tạo tài khoản" class="btn btn-success mr-2"/>
                    <button  type="reset"class="btn btn-light">tạo lại</button>
                </form>
            </div>
        </div>
    </div>
</div>



<jsp:include page="1.jsp"></jsp:include>