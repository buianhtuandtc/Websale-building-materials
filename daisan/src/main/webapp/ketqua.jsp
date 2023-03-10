<%@ page import="vn.edu.hcmuaf.fit.services.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.bean.ProductBean" %>
<%@page import="java.util.ArrayList"%>
<%--<%@page buffer="8192kb" autoFlush="true" %>--%>

<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/12/2022
  Time: 8:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <title>DAISAN </title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/blue.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/rateit.css">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
    <link rel="icon" type="image/x-icon" href="assets/images/favicon.ico">
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="assets\css\font-awesome.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>

<body>
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">

    <!-- ============================================== TOP MENU ============================================== -->
    <div class="top-bar animate-dropdown">
        <div class="container">
            <div class="header-top-inner">
                <div class="cnt-account">
                    <ul class="list-unstyled">
                        <c:choose>
                        <c:when test="${sessionScope.acc == null}">
                            <li><a href="thongtintaikhoan.jsp"><i class="icon fa fa-user"></i>T??i kho???n c???a t??i</a>
                            </li>
                        </c:when>
                        <c:when test="${sessionScope.acc != null}">
                        <li><a href="thongtintaikhoan.jsp"><i class="icon fa fa-user"></i>${sessionScope.acc.fullname}</a>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                            </c:choose>
                        <li><a href="sanphamyeuthich.jsp"><i class="icon fa fa-heart"></i>Y??u th??ch</a></li>
                        <li><a href="giohang.jsp"><i class="icon fa fa-shopping-cart"></i>Gi??? h??ng</a></li>
                        <li><a href="thanhtoan.jsp"><i class="icon fa fa-check"></i>Thanh to??n</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.acc == null}">
                                <li><a href="dangnhap.jsp"><i class="icon fa fa-lock"></i>????ng nh???p</a></li>
                            </c:when>
                            <c:when test="${sessionScope.acc != null}">
                                <li><a href="Logout"><i class="icon fa fa-lock"></i>????ng xu???t</a></li>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                <!-- /.cnt-account -->

                <div class="cnt-block">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle" data-hover="dropdown"
                                                                data-toggle="dropdown"><span class="value">Ti???ng Vi???t </span><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Ti???ng Vi???t</a></li>
                                <li><a href="#">English</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /.list-unstyled -->
                </div>
                <!-- /.cnt-cart -->
                <div class="clearfix"></div>
            </div>
            <!-- /.header-top-inner -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.header-top -->
    <!-- ============================================== TOP MENU : END ============================================== -->
    <div class="main-header">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo"> <a href="/Home"> <img src="assets\images\daisan.png" alt="logo"
                                                             style="height: 55px; margin-top: -10px"> </a> </div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= -->
                </div>
                <!-- /.logo-holder -->

                <div class="col-xs-12 col-sm-12 col-md-7 top-search-holder">
                    <!-- /.contact-row -->
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form action="Search" method="get">
                            <div class="control-group">
                                <ul class="categories-filter animate-dropdown">
                                    <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"
                                                             href="">Danh m???c<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <c:forEach items="${Tag}" var="tag">
                                                <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                           href="/products?tag_ID=${tag.tag_ID}">${tag.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </ul>
                                <input style="height: 44.4px; border: none;width:430px " name="txt"  type="text" placeholder="B???n mu???n t??m g?? ????...">
                                <button type="submit" style="margin-left: 60px; height: 40px; width: 40px"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                    <!-- /.search-area -->
                    <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                </div>
                <!-- /.top-search-holder -->

                <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row">
                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
                    <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart"
                                                            data-toggle="dropdown">
                        <div class="items-cart-inner">
                            <div class="basket"> <i class="glyphicon glyphicon-shopping-cart"></i> </div>
                            <div class="basket-item-count"><span class="count">${Size}</span></div>
                            <div class="total-price-basket"> <span class="lbl">Item -</span> <span
                                    class="total-price"> <span class="sign">${Total}</span><span
                                    class="value">$</span> </span> </div>
                        </div>
                    </a>
                        <ul class="dropdown-menu" style="width: 600px">
                            <li>
                                <div class="cart-item product-summary">
                                    <c:forEach items="${List}" var="c">
                                        <div class="row">
                                            <div class="col-xs-2">
                                                <div class="image"> <a href=""><img
                                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiyJR2fSM2OQO8fOkgEKYppi46AODZHFaw5A&usqp=CAU"
                                                        alt=""></a> </div>
                                            </div>
                                            <div class="col-xs-5">
                                                <h3 class="name"><a href="">${c.name}</a>
                                                </h3>
                                            </div>
                                            <div class="col-xl-1">
                                                <div class="price">SL:${c.quantity}</div>
                                            </div>
                                            <div class="col-xs-2">
                                                <div class="price">${c.price}$</div>
                                            </div>

                                            <div class="col-xs-1 action"> <a href="#"><i
                                                    class="fa fa-trash"></i></a> </div>
                                        </div><br>
                                    </c:forEach>

                                </div>
                                <!-- /.cart-item -->
                                <div class="clearfix"></div>
                                <hr>
                                <div class="clearfix cart-total">
                                    <div class="pull-right"> <span class="text">T???ng ti???n :</span><span
                                            class='price'>${Total}$</span> </div>
                                    <div class="clearfix"></div>
                                    <a href="ShowCart"
                                       class="btn btn-upper btn-primary btn-block m-t-20 " style="width: 150px; margin-left:250px">Xem gi??? h??ng</a>
                                    <a href="thanhtoan.jsp"
                                       class="btn btn-upper btn-primary btn-block m-t-20" style="width: 150px; margin-left:250px">Thanh to??n</a>
                                </div>
                                <!-- /.cart-total-->

                            </li>
                        </ul>
                        <!-- /.dropdown-menu-->
                    </div>

                    <!-- /.dropdown-menu-->
                </div>
                <!-- /.dropdown-cart -->

                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                </div>
                <!-- /.top-cart-row -->
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

    </div>
    <!-- /.main-header -->

    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
        <div class="container">
            <div class="yamm navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed"
                            type="button">
                        <span class="sr-only">Chuy???n ??i???u H?????ng</span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="active dropdown yamm-fw"> <a href="/Home">Trang ch???</a> </li>
                                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown" class="dropdown-toggle"
                                                                        data-toggle="dropdown">Danh M???c</a>
                                    <ul class="dropdown-menu container">
                                        <li>
                                            <div class="yamm-content ">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu drop-height">
                                                        <h2 class="title">G???ch ???p l??t</h2>
                                                        <ul class="links">
                                                            <li><a href="#">G???ch ???p t?????ng</a></li>
                                                            <li><a href="#">G???ch l??t n???n </a></li>
                                                            <li><a href="#">G???ch b??ng</a></li>
                                                            <li><a href="#">G???ch 3D</a></li>
                                                            <li><a href="#">G???ch Mosaic</a></li>
                                                            <li><a href="#">G???ch s??n v?????n, v???a h?? </a></li>
                                                            <li><a href="#">G???ch K??nh </a></li>
                                                            <li><a href="#">G???ch v??n g??? </a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">???? ???p l??t</h2>
                                                        <ul class="links">
                                                            <li><a href="#">???? nh??n t???o</a></li>
                                                            <li><a href="#">???? l??t n???n</a></li>
                                                            <li><a href="#">???? s??n v?????n </a></li>
                                                            <li><a href="#">???? hoa v??n</a></li>
                                                            <li><a href="#">???? l??t v???a h??</a></li>
                                                            <li><a href="#">???? ???p c???u thang</a></li>
                                                            <li><a href="#">???? Mosaic</a></li>
                                                            <li><a href="#">???? ???p t?????ng</a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">S??n n???i th???t & ngo???i th???t</h2>
                                                        <ul class="links">
                                                            <li><a href="#">S??n n???i th???t </a></li>
                                                            <li><a href="#">S??n ngo???i th???t</a></li>
                                                            <li><a href="#">S??n l??t</a></li>
                                                            <li><a href="#">S??n ch???ng th???m</a></li>
                                                            <li><a href="#">B???t b??? v?? ch???ng th???m</a></li>
                                                            <li><a href="#">S??n kim lo???i</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">S??n g??? v?? ph??? ki???n</h2>
                                                        <ul class="links">
                                                            <li><a href="#">S??n g??? t??? nhi??n </a></li>
                                                            <li><a href="#">S??n g??? ngo??i tr???i</a></li>
                                                            <li><a href="#">S??n g??? c??ng nghi???p</a></li>
                                                            <li><a href="#">Ph??? ki???n s??n g???</a></li>
                                                            <li><a href="#">T???m v??n ??p</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">T???m ???p t?????ng</h2>
                                                        <ul class="links">
                                                            <li><a href="#">T???m ???? xuy??n s??ng </a></li>
                                                            <li><a href="#">T???m ???p b???ng nh??m</a></li>
                                                            <li><a href="#">T???m ???p ngo??i tr???i</a></li>
                                                            <li><a href="#">Tr???n nh??m</a></li>
                                                            <li><a href="#">Lam ch???n n???ng</a></li>
                                                            <li><a href="#">T???m panel, v??ch ng??n</a></li>
                                                            <li><a href="#">T???m ???p t?????ng 3D</a></li>
                                                            <li><a href="#">T???m ???p t?????ng v??n g???</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">V???t li???u th??</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Inox </a></li>
                                                            <li><a href="#">S???t th??p x??y d???ng</a></li>
                                                            <li><a href="#">???ng ?????ng</a></li>
                                                            <li><a href="#">Xi m??ng</a></li>
                                                            <li><a href="#">C??t, s???i x??y d???ng</a></li>
                                                            <li><a href="#">B?? t??ng</a></li>
                                                            <li><a href="#">L?????i x??y d???ng</a></li>
                                                            <li><a href="#">D??n gi??o</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">V???t t?? ng??nh ????</h2>
                                                        <ul class="links">
                                                            <li><a href="#">???? c???t ???? m??i </a></li>
                                                            <li><a href="#">L?????i c???t</a></li>
                                                            <li><a href="#">M??i Khoan </a></li>
                                                            <li><a href="#">V???t t?? thi c??ng </a></li>
                                                            <li><a href="#">Thanh ty ren </a></li>
                                                            <li><a href="#">B??t m??i </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">V???t li???u m??i & ph??? ki???n</h2>
                                                        <ul class="links">
                                                            <li><a href="#">T???m l???p m??i </a></li>
                                                            <li><a href="#">T???m tr???n</a></li>
                                                            <li><a href="#">Ng??i </a></li>
                                                            <li><a href="#">Ph??? ki???n ng??i </a></li>
                                                            <li><a href="#">Ph??? ki???n tr???n </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">C???a & c???a s???. b??n l??? & ph??? ki???n</h2>
                                                        <ul class="links">
                                                            <li><a href="#">C???a nh??m</a></li>
                                                            <li><a href="#">C???a g??? </a></li>
                                                            <li><a href="#">C???a k??nh </a></li>
                                                            <li><a href="#">C???a k??o </a></li>
                                                            <li><a href="#">C???a cu???n </a></li>
                                                            <li><a href="#">C???a c???ng </a></li>
                                                            <li><a href="#">C???a nh???a </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">N???p</h2>
                                                        <ul class="links">
                                                            <li><a href="#">N???p d??n c???nh</a></li>
                                                            <li><a href="#">N???p ?????ng </a></li>
                                                            <li><a href="#">N???p nh??m </a></li>
                                                            <li><a href="#">N???p nh???a </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive"
                                                                                                                         src="assets/images/sliders/slider3.png" alt="logo"
                                                                                                                         style=" max-width: 105%; height: 150px;"> </div>
                                                    <!-- /.yamm-content -->
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="hotdeal.jsp">Hot Deal <span class="menu-label hot-menu hidden-xs">hot</span> </a>
                                </li>
                                <li class="dropdown"> <a href="blog.jsp">blog</a>
                                </li>
                                <li class="dropdown"> <a href="hangmoi.jsp">h??ng m???i <span
                                        class="menu-label new-menu hidden-xs">new</span></a> </li>
                                <li class="dropdown"> <a href="lienhe.jsp">Li??n h???</a> </li>

                            </ul>
                            <!-- /.navbar-nav -->
                            <div class="clearfix"></div>
                        </div>
                        <!-- /.nav-outer -->
                    </div>
                    <!-- /.navbar-collapse -->

                </div>
                <!-- /.nav-bg-class -->
            </div>
            <!-- /.navbar-default -->
        </div>
        <!-- /.container-class -->

    </div>
    <!-- /.header-nav -->
    <!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
    <div class="container">
        <div class="breadcrumb-inner">
            <ul class="list-inline list-unstyled">
                <li><a href="/Home">Trang ch???</a></li>
                <li class='active' style="width: auto">K???t qu??? t??m ki???m v???i "${wordS}"</li>
            </ul>
        </div>
        <!-- /.breadcrumb-inner -->
    </div>
    <!-- /.container -->
</div>
<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
    <div class='container'>
        <div class='row'>
            <div class='col-md-3 sidebar'>
                <!-- ================================== TOP NAVIGATION ================================== -->
                <div class="side-menu animate-dropdown outer-bottom-xs">
                    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> T???t c??? s???n ph???m </div>
                    <nav class="yamm megamenu-horizontal">
                        <ul class="nav">
                            <c:forEach items="${Tag}" var="tag">
                                <li class="dropdown menu-item">
                                    <a href="/products?tag_ID=${tag.tag_ID}">
                                        <i><img src="${tag.imgURL}"
                                                style="height: 24px; width: 24px" /></i>
                                            ${tag.name}
                                    </a>

                                    <!-- /.dropdown-menu -->
                                </li>
                                <!-- /.menu-item -->
                            </c:forEach>

                        </ul>
                        <!-- /.nav -->
                    </nav>
                    <!-- /.megamenu-horizontal -->
                </div>
                <!-- /.side-menu -->
                <!-- ================================== TOP NAVIGATION : END ================================== -->

                <div class="sidebar-module-container">
                    <div class="sidebar-filter">
                        <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <h3 class="section-title">S???p x???p theo</h3>
                            <div class="widget-header">
                                <h4 class="widget-title">Danh m???c</h4>
                            </div>
                            <div class="sidebar-widget-body">
                                <div class="accordion">
                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseOne" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> G???ch ???p l??t </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseOne" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">G???ch ???p t?????ng</a></li>
                                                    <li><a href="#">G???ch l??t n???n</a></li>
                                                    <li><a href="#">G???ch b??ng</a></li>
                                                    <li><a href="#">G???ch 3D</a></li>
                                                    <li><a href="#">G???ch Mosaic</a></li>
                                                    <li><a href="#">G???ch s??n v?????n, v???a h??</a></li>
                                                    <li><a href="#">G???ch K??nh</a></li>
                                                    <li><a href="#">G???ch v??n g???</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->
                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseTwo" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> ???? ???p l??t </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseTwo" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">???? nh??n t???o</a></li>
                                                    <li><a href="#">???? l??t n???n</a></li>
                                                    <li><a href="#">???? s??n v?????n</a></li>
                                                    <li><a href="#">???? hoa v??n</a></li>
                                                    <li><a href="#">???? l??t v???a h??</a></li>
                                                    <li><a href="#">???? ???p c???u thang</a></li>
                                                    <li><a href="#">???? Mosaic</a></li>
                                                    <li><a href="#">???? ???p t?????ng</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->
                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseThree" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> S??n n???i th???t & ngo???i th???t</a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseThree" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#"> S??n n???i th???t </a></li>
                                                    <li><a href="#"> S??n ngo???i th???t </a></li>
                                                    <li><a href="#"> S??n l??t </a></li>
                                                    <li><a href="#"> S??n ch???ng th???m </a></li>
                                                    <li><a href="#"> B???t b??? v?? ch???ng th???m </a></li>
                                                    <li><a href="#"> S??n kim lo???i </a></li>



                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->
                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseFour" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> S??n g??? v?? ph??? ki???n </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseFour" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">S??n g??? t??? nhi??n</a></li>
                                                    <li><a href="#">S??n g??? ngo??i tr???i</a></li>
                                                    <li><a href="#">S??n g??? c??ng nghi???p</a></li>
                                                    <li><a href="#">Ph??? ki???n s??n g???</a></li>
                                                    <li><a href="#">T???m v??n ??p </a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->
                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseFive" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> T???m ???p t?????ng </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseFive" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">T???m ???? xuy??n s??ng</a></li>
                                                    <li><a href="#">T???m ???p b???ng nh??m</a></li>
                                                    <li><a href="#">T???m ???p ngo??i tr???i</a></li>
                                                    <li><a href="#">Tr???n nh??m</a></li>
                                                    <li><a href="#">Lam ch???n n???ng</a></li>
                                                    <li><a href="#">T???m panel, v??ch ng??n</a></li>
                                                    <li><a href="#">T???m ???p t?????ng 3D</a></li>
                                                    <li><a href="#">T???m ???p t?????ng v??n g???</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->
                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseSix" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> V???t li???u th?? </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseSix" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">Inox</a></li>
                                                    <li><a href="#">S???t th??p x??y d???ng</a></li>
                                                    <li><a href="#">???ng ?????ng</a></li>
                                                    <li><a href="#">Xi m??ng</a></li>
                                                    <li><a href="#">C??t, s???i x??y d???ng</a></li>
                                                    <li><a href="#">B?? t??ng</a></li>
                                                    <li><a href="#">L?????i x??y d???ng</a></li>
                                                    <li><a href="#">D??n gi??o</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->


                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseSevent" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> V???t t?? ng??nh ???? </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseSevent" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">???? c???t ???? m??i</a></li>
                                                    <li><a href="#">L?????i c???t</a></li>
                                                    <li><a href="#">M??i Khoan</a></li>
                                                    <li><a href="#">V???t t?? thi c??ng</a></li>
                                                    <li><a href="#">Thanh ty ren</a></li>
                                                    <li><a href="#">B??t m??i</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->


                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseEight" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> V???t li???u m??i & ph??? ki???n </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseEight" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">T???m l???p m??i</a></li>
                                                    <li><a href="#">T???m tr???n</a></li>
                                                    <li><a href="#">Ng??i</a></li>
                                                    <li><a href="#">Ph??? ki???n ng??i</a></li>
                                                    <li><a href="#">Thanh ty ren</a></li>
                                                    <li><a href="#">Ph??? ki???n tr???n</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->


                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseNine" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> C???a & c???a s??? </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseNine" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">C???a nh??m</a></li>
                                                    <li><a href="#">C???a g???</a></li>
                                                    <li><a href="#">C???a k??nh</a></li>
                                                    <li><a href="#">C???a k??o</a></li>
                                                    <li><a href="#">C???a cu???n</a></li>
                                                    <li><a href="#">C???a c???ng</a></li>
                                                    <li><a href="#">C???a nh???a</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->


                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                    <div class="accordion-group">
                                        <div class="accordion-heading"> <a href="#collapseTen" data-toggle="collapse"
                                                                           class="accordion-toggle collapsed"> N???p </a> </div>
                                        <!-- /.accordion-heading -->
                                        <div class="accordion-body collapse" id="collapseTen" style="height: 0px;">
                                            <div class="accordion-inner">
                                                <ul>
                                                    <li><a href="#">N???p d??n c???nh</a></li>
                                                    <li><a href="#">N???p ?????ng</a></li>
                                                    <li><a href="#">N???p nh??m</a></li>
                                                    <li><a href="#">N???p nh???a</a></li>
                                                </ul>
                                            </div>
                                            <!-- /.accordion-inner -->


                                        </div>
                                        <!-- /.accordion-body -->
                                    </div>
                                    <!-- /.accordion-group -->

                                </div>
                                <!-- /.accordion -->
                            </div>
                            <!-- /.sidebar-widget-body -->
                        </div>
                        <!-- /.sidebar-widget -->
                        <!-- ============================================== SIDEBAR CATEGORY : END ============================================== -->

                        <!-- ============================================== PRICE SILDER============================================== -->
                        <div class="sidebar-widget wow fadeInUp">
                            <div class="widget-header">
                                <h4 class="widget-title">L???c theo gi??</h4>
                            </div>
                            <div class="sidebar-widget-body m-t-10">
                                <div class="price-range-holder"> <span class="min-max"> <span class="pull-left">20.000??</span> <span
                                        class="pull-right">5.000.000??</span> </span>
                                    <input type="text" id="amount" style="border:0; color:#666666; font-weight:bold;text-align:center;">
                                    <input type="text" class="price-slider" value="">
                                </div>
                                <!-- /.price-range-holder -->
                                <a href="#" class="lnk btn btn-primary">Mua ngay</a>
                            </div>
                            <!-- /.sidebar-widget-body -->
                        </div>
                        <!-- /.sidebar-widget -->



                        <!-- /.sidebar-widget -->
                        <!-- ============================================== Testimonials============================================== -->
                        <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
                            <div id="advertisement" class="advertisement">
                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member1.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em> S???n ph???m ?????p, ch???t l?????ng, giao h??ng nhanh, gi???ng v???i h??nh, kh??
                                        ??ng ??, s??? ???ng h??? shop v?? tin t?????ng shop.<em>"</em></div>
                                    <div class="clients_author"><span>Abc Company</span> </div>
                                    <!-- /.container-fluid -->
                                </div>
                                <!-- /.item -->

                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member3.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em>S???n ph???m ?????p, ch???t l?????ng, giao h??ng nhanh, gi???ng v???i h??nh, kh??
                                        ??ng ??, s??? ???ng h??? shop v?? tin t?????ng shop.<em>"</em></div>
                                    <div class="clients_author"><span>Xperia Designs</span> </div>
                                </div>
                                <!-- /.item -->

                                <div class="item">
                                    <div class="avatar"><img src="assets\images\testimonials\member2.png" alt="Image"></div>
                                    <div class="testimonials"><em>"</em> S???n ph???m ?????p, ch???t l?????ng, giao h??ng nhanh, gi???ng v???i h??nh, kh??
                                        ??ng ??, s??? ???ng h??? shop v?? tin t?????ng shop.<em>"</em></div>
                                    <div class="clients_author"><span>Datsun &amp; Co</span> </div>
                                    <!-- /.container-fluid -->
                                </div>
                                <!-- /.item -->

                            </div>
                            <!-- /.owl-carousel -->
                        </div>

                        <!-- ============================================== Testimonials: END ============================================== -->

                    </div>
                    <!-- /.sidebar-filter -->
                </div>
                <!-- /.sidebar-module-container -->
            </div>
            <!-- /.sidebar -->
            <div class='col-md-9'>
                <!-- ========================================== SECTION ??? HERO ========================================= -->

                <div id="category" class="category-carousel hidden-xs">
                    <div class="item">
                        <div class="image"> <img style="filter:brightness(80%);" src="assets/images/banners/sango.jpeg" alt=""
                                                 class="img-responsive"> </div>
                        <div class="container-fluid">
                            <div class="caption vertical-top text-left">
                            </div>
                            <!-- /.caption -->
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                </div>


                <div class="clearfix filters-container m-t-10">
                    <div class="row">
                        <div class="col col-sm-6 col-md-2">
                            <div class="filter-tabs">
                                <ul id="filter-tabs" class="nav nav-tabs nav-tab-box nav-tab-fa-icon">
                                    <li class="active"> <a data-toggle="tab" href="#grid-container"><i
                                            class="icon fa fa-th-large"></i>L?????i</a> </li>
                                    <li><a data-toggle="tab" href="#list-container"><i class="icon fa fa-th-list"></i>Danh s??ch</a></li>
                                </ul>
                            </div>
                            <!-- /.filter-tabs -->
                        </div>
                        <!-- /.col -->
                        <div class="col col-sm-12 col-md-6">
                            <div class="col col-sm-3 col-md-6 no-padding">
                                <div class="lbl-cnt"> <span class="lbl">S???p x???p theo</span>
                                    <div class="fld inline">
                                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> M???c ?????nh <span
                                                    class="caret"></span> </button>
                                            <ul role="menu" class="dropdown-menu">
                                                <li role="presentation"><a href="#">G??a: Th???p nh???t</a></li>
                                                <li role="presentation"><a href="#">G??a: Cao nh???t</a></li>
                                                <li role="presentation"><a href="#">T??n s???n ph???m:A ?????n Z</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.fld -->
                                </div>
                                <!-- /.lbl-cnt -->
                            </div>
                            <!-- /.col -->
                            <div class="col col-sm-3 col-md-6 no-padding">
                                <div class="lbl-cnt"> <span class="lbl">Hi???n th??? </span>
                                    <div class="fld inline">
                                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                                            <button data-toggle="dropdown" type="button" class="btn dropdown-toggle"> 1 <span
                                                    class="caret"></span> </button>
                                            <ul role="menu" class="dropdown-menu">
                                                <li role="presentation"><a href="#">1</a></li>
                                                <li role="presentation"><a href="#">2</a></li>
                                                <li role="presentation"><a href="#">3</a></li>
                                                <li role="presentation"><a href="#">4</a></li>
                                                <li role="presentation"><a href="#">5</a></li>
                                                <li role="presentation"><a href="#">6</a></li>
                                                <li role="presentation"><a href="#">7</a></li>
                                                <li role="presentation"><a href="#">8</a></li>
                                                <li role="presentation"><a href="#">9</a></li>
                                                <li role="presentation"><a href="#">10</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /.fld -->
                                </div>
                                <!-- /.lbl-cnt -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.col -->
                        <div class="col col-sm-6 col-md-4 text-right">
                            <div class="pagination-container">
                                <ul class="list-inline list-unstyled">
                                    <li style="width: 30px;" class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li style="width: 30px;"><a href="#">1</a></li>
                                    <li style="width: 30px;" class="active"><a href="#">2</a></li>
                                    <li style="width: 30px;"><a href="#">3</a></li>
                                    <li style="width: 30px;"><a href="#">4</a></li>
                                    <li style="width: 30px;" class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                <!-- /.list-inline -->
                            </div>
                            <!-- /.pagination-container -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <div class="search-result-container ">
                    <div id="myTabContent" class="tab-content category-list">
                        <div class="tab-pane active " id="grid-container">

                            <div class="category-product">
                                <div class="row">

                                    <c:forEach items="${ListS}" var="p">
                                        <div class="col-sm-6 col-md-4 wow fadeInUp">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="productDetail?product_id=${p.id}"><img
                                                                src=${p.imgURL} alt=""></a> </div>
                                                        <!-- /.image -->

                                                        <div class="tag new"><span>m???i</span></div>
                                                    </div>
                                                    <!-- /.product-image -->

                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a href="productDetail?product_id=${p.id}">${p.name}</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price"> <span class="price"> ${p.price}?? </span> <span
                                                                class="price-before-discount">${p.salePrice}??</span> </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                    <!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled" style="margin-right: 30px">
                                                                <li class="add-cart-button btn-group" style="margin-right: 30px">
                                                                    <a class="btn btn-primary" href="AddCart?id=${p.id}"><i class="fa fa-shopping-cart" ></i> Th??m v??o gi??? h??ng</a>

                                                                </li>

                                                            </ul>
                                                        </div>
                                                        <!-- /.action -->
                                                    </div>
                                                    <!-- /.cart -->
                                                </div>
                                                    <%--                                            </c:forEach>--%>
                                                    <%--                                            <%}%>--%>
                                                <!-- /.product -->

                                            </div>
                                            <!-- /.products -->
                                        </div>

                                    </c:forEach>
                                    <!-- /.item -->

                                </div>

                                <!-- /.row -->
                            </div>

                            <!-- /.category-product -->

                        </div>
                        <!-- /.tab-pane -->


                        <!-- /.tab-pane #list-container -->
                    </div>
                    <!-- /.tab-content -->
                    <div class="clearfix filters-container">
                        <div class="text-right">
                            <div class="pagination-container">
                                <ul class="list-inline list-unstyled">
                                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                                <!-- /.list-inline -->
                            </div>
                            <!-- /.pagination-container -->
                        </div>
                        <!-- /.text-right -->

                    </div>
                    <!-- /.filters-container -->

                </div>
                <!-- /.search-result-container -->

            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        <!-- ============================================== BRANDS CAROUSEL ============================================== -->
        <div id="brands-carousel" class="logo-slider wow fadeInUp">
            <div class="logo-slider-inner">
                <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                    <div class="item m-t-15"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png"
                                                                              src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item m-t-10"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png"
                                                                              src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png"
                                                                       src="assets/images/blank.gif" alt=""> </a> </div>
                    <!--/.item-->
                </div>
                <!-- /.owl-carousel #logo-slider -->
            </div>
            <!-- /.logo-slider-inner -->

        </div>
        <!-- /.logo-slider -->
        <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
    </div>
    <!-- /.container -->

</div>
<!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Li??n h???</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class="toggle-footer">
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body">
                                    <p>Khu ph??? 6, ph?????ng Linh Trung, qu???n Th??? ?????c, TP.HCM, Vi???t Nam</p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-mobile fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body">
                                    <p>+(84)962351043<br>
                                    </p>
                                </div>
                            </li>
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-envelope fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body"> <span><a href="#">nguyenthaiduc0212@gmail.com</a></span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">H??? tr??? kh??ch h??ng</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a href="lienhe.jsp" title="Contact">Li??n h??? ?????n Daisan</a></li>
                            <li><a href="huongdandathang.jsp" title="Order">H?????ng d???n ?????t h??ng</a></li>
                            <li><a href="cauhoithuonggap.jsp" title="FAQ">C??u h???i th?????ng g???p</a></li>
                            <li class="last"><a href="chinhsachvadieukhoan.jsp" title="H??? tr???">Ch??nh s??ch v??
                                quy ?????nh chung</a></li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Ch??nh s??ch</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a title="Thanh to??n" href="huongdanthanhtoan.jsp">H?????ng d???n thanh
                                to??n</a></li>
                            <li><a title="B???o h??nh" href="chinhsachbaohanh.jsp">Ch??nh s??ch b???o h??nh</a></li>
                            <li><a title="Ch??nh s??ch ?????i tr???" href="chinhsachdoitra.jsp">Ch??nh s??ch ?????i tr???</a>
                            </li>
                            <li><a title="V???n chuy???n" href="chinhsachvanchuyen.jsp">Ph????ng th???c v???n chuy???n</a></li>
                            <li class="last"><a title="B???o m???t th??ng tin" href="chinhsachbaomatthongtin.jsp">B???o
                                m???t th??ng tin</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">T???i sao n??n ch???n ch??ng t??i</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <!-- <li class="first"><a href="#" title="About us">Shopping Guide</a></li> -->
                            <li><a href="blog.jsp" title="Blog">Blog</a></li>
                            <!-- <li><a href="#" title="Company">C??ng ty</a></li> -->
                            <!-- <li><a href="#" title="Investor Relations">Investor Relations</a></li> -->
                            <li class=" last"><a href="lienhe.jsp" title="Suppliers">Li??n h???</a></li>
                        </ul>

                    </div>

                    <!-- /.module-body -->
                </div>
            </div>
        </div>
    </div>
    <div class="footer-choose">
        <div class="container-fluid">
            <div class="footer-info p-3 p-md-0">
                <div class="row row-sm justify-content-center">

                    <div class="col-xl-4">
                        <p class="text-b mt-3 mt-md-0">?? 2009 DAISAN.,JSC</p>
                        <p class="mb-2">C??ng Ty C??? ph???n ?????i S??n. GP??KKD: 0103884103 do s??? KH &amp; ??T TP H?? N???i c???p l???n ?????u ng??y
                            29/06/2009.</p>
                        <p class="mb-3">Tr??? s??? ch??nh: 88 L??ng H???, P. L??ng H???, Q. ?????ng ??a, TP H?? N???i.</p>
                        <p>
                            <a href="http://online.gov.vn/Home/WebDetails/54203">
                                <img src="assets/images/tb-bct.png" height="50">
                            </a>
                            <a href="http://online.gov.vn/Home/WebDetails/54203">
                                <img src="assets/images/dk-bct.png" height="50">
                            </a>
                        </p>
                    </div>
                    <div class="col-xl-4">
                        <p class="text-b">MI???N B???C</p>
                        <p>Showroom: S??? 40 T??? H???u, Nh??n Ch??nh, Thanh Xu??n, H?? N???i</p>
                        <p>VPGD: T???ng 4, S??? 40 T??? H???u, Nh??n Ch??nh, Thanh Xu??n, H?? N???i</p>
                        <p>Email: <a href="mailto:info@daisan.vn">info@daisan.vn</a></p>
                        <p class="text-b mt-3">MI???N NAM</p>
                        <p>VPGD: 57/1c, Khu ph??? 1, P. An Ph?? ????ng, Q.12</p>
                        <a class="hide">??i???n tho???i: 1800 6464 98</a> Email: <a href="mailto:info@daisan.vn">info@daisan.vn</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- For demo purposes ??? can be removed on production -->

<!-- For demo purposes ??? can be removed on production : End -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/echo.min.js"></script>
<script src="assets/js/jquery.easing-1.3.min.js"></script>
<script src="assets/js/bootstrap-slider.min.js"></script>
<script src="assets/js/jquery.rateit.min.js"></script>
<script src="assets/js/bootstrap-select.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/scripts.js"></script>
</body>

</html>

