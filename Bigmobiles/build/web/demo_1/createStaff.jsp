<%-- 
    Document   : createStaff
    Created on : May 22, 2019, 9:03:43 PM
    Author     : ASUS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>admin</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="../assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../assets/vendors/iconfonts/ionicons/css/ionicons.css">
        <link rel="stylesheet" href="../assets/vendors/iconfonts/typicons/src/font/typicons.css">
        <link rel="stylesheet" href="../assets/vendors/iconfonts/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
        <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.addons.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="../assets/vendors/icheck/skins/all.css">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../assets/css/shared/style.css">
        <!-- endinject -->
        <!-- Layout styles -->
        <link rel="stylesheet" href="../assets/css/demo_1/style.css">
        <!-- End Layout styles -->
        <link rel="shortcut icon" href="../assets/images/favicon.png" />
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
                    <a class="navbar-brand brand-logo" href="../../index.html">
                        <img src="../assets/images/logo.svg" alt="logo" /> </a>
                    <a class="navbar-brand brand-logo-mini" href="index.html">
                        <img src="../assets/images/logo-mini.svg" alt="logo" /> </a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center">

                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
                            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <img class="img-xs rounded-circle" src="../assets/images/faces/face8.jpg" alt="Profile image"> </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                                <div class="dropdown-header text-center">
                                    <img class="img-md rounded-circle" src="../assets/images/faces/face8.jpg" alt="Profile image">
                                    <p class="mb-1 mt-3 font-weight-semibold">Allen Moreno</p>
                                    <p class="font-weight-light text-muted mb-0">allenmoreno@gmail.com</p>
                                </div>
                                <a class="dropdown-item">My Profile <span class="badge badge-pill badge-danger">1</span><i class="dropdown-item-icon ti-dashboard"></i></a>
                                <a class="dropdown-item">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
                            </div>
                        </li>
                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="mdi mdi-menu"></span>
                    </button>
                </div>
            </nav>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:../../partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">

                        <li class="nav-item nav-category">Main Menu</li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../index.html">
                                <i class="menu-icon typcn typcn-document-text"></i>
                                <span class="menu-title">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="menu-icon typcn typcn-coffee"></i>
                                <span class="menu-title">Basic UI Elements</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/ui-features/buttons.html">Buttons</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/ui-features/dropdowns.html">Dropdowns</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/ui-features/typography.html">Typography</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../pages/forms/basic_elements.html">
                                <i class="menu-icon typcn typcn-shopping-bag"></i>
                                <span class="menu-title">Form elements</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../pages/charts/chartjs.html">
                                <i class="menu-icon typcn typcn-th-large-outline"></i>
                                <span class="menu-title">Charts</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../pages/tables/basic-table.html">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Tables</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../pages/icons/font-awesome.html">
                                <i class="menu-icon typcn typcn-user-outline"></i>
                                <span class="menu-title">Icons</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                <i class="menu-icon typcn typcn-document-add"></i>
                                <span class="menu-title">User Pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="auth">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/samples/blank-page.html"> Blank Page </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/samples/login.html"> Login </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/samples/register.html"> Register </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/samples/error-404.html"> 404 </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../../pages/samples/error-500.html"> 500 </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-12 grid-margin">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Tạo tài khoản quản lý</h4>
                                        <form class="form-sample" action="../CreateAdmin" method="post" enctype="multipart/form-data" >
                                            <c:if test="${mess ne null} " >${mess}  </c:if>
                                            <p class="card-description"> </p>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Tên đầy đủ</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" name="fullname" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Địa chỉ email</label>
                                                        <div class="col-sm-9">
                                                            <input type="email"name="email" placeholder="Email dùng để đăng nhập" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Hình đại diên</label>
                                                        <div class="col-sm-9">
                                                            <input name="file" type="file" accept=".png,.jpg"/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Phân quyền</label>
                                                        <div class="col-sm-4">
                                                            <div class="form-radio">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input" name="gt" id="membershipRadios1" value="ad" checked> Quản lý </label>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <div class="form-radio">
                                                                <label class="form-check-label">
                                                                    <input type="radio" class="form-check-input" name="gt" id="membershipRadios2" value="staff"> Nhân viên </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group row">
                                                        <label class="col-sm-3 col-form-label">Mật khẩu</label>
                                                        <div class="col-sm-9">
                                                            <input type="password" name="password" class="form-control" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">

                                                </div>
                                            </div>
                                            <input type="submit" value="Tạo" class="btn btn-success mr-2"/>
                                            <button  type="reset"class="btn btn-light">tạo lại</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:../../partials/_footer.html -->
                    <footer class="footer">
                        <div class="container-fluid clearfix">
                            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2019 <a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
                            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i>
                            </span>
                        </div>
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
        <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="../assets/js/shared/off-canvas.js"></script>
        <script src="../assets/js/shared/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <!-- End custom js for this page-->
    </body>
</html>
