
<%@page import="model.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Admin ad = (Admin) session.getAttribute("LOGIN_ADMIN");
    String abc = "";
    if (ad == null) {
        abc = "loginAdmin.jsp";
    } else {
        abc = "HomeManage.jsp";
    }

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>BIG MOBILES</title>
        <jsp:include page="linkCssAdmin.jsp"></jsp:include>
        <%--<jsp:include page="linkreting.jsp"></jsp:include>--%>
    </head>
    <body>
        <div class="container-scroller">
            <!-- partial:../../partials/_navbar.html -->
            <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <br>
                <br>
                <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
                    <a class="navbar-brand" href="HomeManage.jsp">BIG MOBILES</a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center">
                    <form class="ml-auto search-form d-none d-md-block" action="#">
                        <div class="form-group"><marquee behavior="alternate"><marquee width="150">Big Mobiles Manage</marquee></marquee>
                        </div>
                    </form>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown d-none d-xl-inline-block user-dropdown">
                            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                                <img class="img-xs rounded-circle" src="assets/images/faces/face8.jpg" alt="Profile image"> </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                                <div class="dropdown-header text-center">
                                    <%                                              if (ad == null) {
                                    %>  

                                    <p class="mb-1 mt-3 font-weight-semibold"></p>
                                    <p class="font-weight-light text-muted mb-0"></p>
                                    <%  } else {%>  <img class="img-md rounded-circle" src="upliadDir/<%=ad.getAvatar()%>" alt="Profile image">

                                    <p class="mb-1 mt-3 font-weight-semibold">Chào <%=ad.getFullname()%></p>
                                    <p class="font-weight-light text-muted mb-0"> <%=ad.getEmail()%></p> <%       }%>
                                </div>
                                <a class="dropdown-item">My Profile <span class="badge badge-pill badge-danger">1</span><i class="dropdown-item-icon ti-dashboard"></i></a>
                                <a href="logoutServlet" class="dropdown-item">Sign Out<i class="dropdown-item-icon ti-power-off"></i></a>
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
                        <li class="nav-item nav-profile">

                        </li>
                        <li class="nav-item nav-category">Danh mục</li>

                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="menu-icon typcn typcn-coffee"></i>
                                <span class="menu-title">Quản lý sản phẩm</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="ShowBrandServlet">Thương hiệu</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Loại Sản phẩm</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ShowProductsServlet">Sản phẩm</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                <i class="menu-icon typcn typcn-document-add"></i>
                                <span class="menu-title">Thống kê</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="auth">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item">
                                        <a class="nav-link" href="CharBrandServlet">Doanh thu theo Hãng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ChartCustomerServlet">Doanh thu theo Khách hàng tiền năng</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="ChartCategoryServlet">Doanh thu theo Loại Sản phẩm</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listCustomerServlet">
                                <i class="menu-icon typcn typcn-document-text"></i>
                                <span class="menu-title">Quản lý khách hàng</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="listAdminServlet">
                                <i class="menu-icon typcn typcn-shopping-bag"></i>
                                <span class="menu-title">Quản lý Nhân viên</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../pages/charts/chartjs.html">
                                <i class="menu-icon typcn typcn-th-large-outline"></i>
                                <span class="menu-title">Tin tức và Sự kiện</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminShowFeedback">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Phản hồi của khách hàng</span>
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="AdminManageOrderServlet">
                                <i class="menu-icon typcn typcn-bell"></i>
                                <span class="menu-title">Quản lý đơn hàng</span>
                            </a>
                        </li>


                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper"> 
