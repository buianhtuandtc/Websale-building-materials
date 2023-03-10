<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/12/2022
  Time: 7:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fnt" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="MediaCenter, Template, eCommerce">
    <meta name="robots" content="all">
    <title>WEB VẬT LIỆU | Website Bán Vật Liệu Xây Dựng</title>

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
    <link rel="stylesheet" href="assets/css/font-awesome.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>

<body class="cnt-home">
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
                            <li><a href=""><i class="icon fa fa-user"></i>Tài khoản của tôi</a>
                            </li>
                        </c:when>
                        <c:when test="${sessionScope.acc != null}">
                        <li><a href="LoadInfo?id=${sessionScope.acc.user_ID}"><i class="icon fa fa-user"></i>${sessionScope.acc.fullname}</a>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                            </c:choose>
                        <li><a href="sanphamyeuthich.jsp"><i class="icon fa fa-heart"></i>Yêu thích</a></li>
                        <li><a href="giohang.jsp"><i class="icon fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                        <li><a href="thanhtoan.jsp"><i class="icon fa fa-check"></i>Thanh toán</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.acc == null}">
                                <li><a href="dangnhap.jsp"><i class="icon fa fa-lock"></i>Đăng nhập</a></li>
                            </c:when>
                            <c:when test="${sessionScope.acc != null}">
                                <li><a href="/Logout"><i class="icon fa fa-lock"></i>Đăng xuất</a></li>
                            </c:when>
                            <c:otherwise>

                            </c:otherwise>
                        </c:choose>

                    </ul>
                </div>
                <!-- /.cnt-account -->

                <div class="cnt-block">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small"> <a href="#" class="dropdown-toggle"
                                                                data-hover="dropdown" data-toggle="dropdown"><span class="value">Tiếng Việt
                                    </span><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Tiếng Việt</a></li>
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
                    <div class="logo"> <a href="/Home"> <img src="assets/images/daisan.png" alt="logo"
                                                                style="height: 55px; margin-top: -10px"> </a> </div>
                    <!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= -->
                </div>
                <!-- /.logo-holder -->

                <div class=" col-xs-12 col-sm-12 col-md-7 top-search-holder">
                    <!-- /.contact-row -->
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form action="Search" method="get">
                            <div class="control-group">
                                <ul class="categories-filter animate-dropdown">
                                    <li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown"
                                                             href="">Danh mục<b class="caret"></b></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <c:forEach items="${Tag}" var="tag">
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="/products?tag_ID=${tag.tag_ID}">${tag.name}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                </ul>
                                <input style="height: 44.4px; border: none;width:430px " name="txt"  type="text" placeholder="Bạn muốn tìm gì đó...">
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
                                    <div class="pull-right"> <span class="text">Tổng tiền :</span><span
                                            class='price'>${Total}$</span> </div>
                                    <div class="clearfix"></div>
<%--                                    <a href="ShowCart"--%>
<%--                                       class="btn btn-upper btn-primary btn-block m-t-20 " style="width: 150px; margin-left:250px">Xem giỏ hàng</a>--%>
                                    <a href="thanhtoan.jsp"
                                       class="btn btn-upper btn-primary btn-block m-t-20" style="width: 150px; margin-left:250px">Thanh toán</a>
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
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse"
                            class="navbar-toggle collapsed" type="button">
                        <span class="sr-only">Chuyển Điều Hướng</span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="active dropdown yamm-fw"> <a href="/Home">Trang chủ</a> </li>
                                <li class="dropdown yamm mega-menu"> <a href="#" data-hover="dropdown"
                                                                        class="dropdown-toggle" data-toggle="dropdown">Danh Mục</a>
                                    <ul class="dropdown-menu container">
                                        <li>
                                            <div class="yamm-content ">
                                                <div class="row">
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu drop-height">
                                                        <h2 class="title">Gạch ốp lát</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Gạch ốp tường</a></li>
                                                            <li><a href="#">Gạch lát nền </a></li>
                                                            <li><a href="#">Gạch bông</a></li>
                                                            <li><a href="#">Gạch 3D</a></li>
                                                            <li><a href="#">Gạch Mosaic</a></li>
                                                            <li><a href="#">Gạch sân vườn, vỉa hè </a></li>
                                                            <li><a href="#">Gạch Kính </a></li>
                                                            <li><a href="#">Gạch vân gỗ </a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Đá ốp lát</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Đá nhân tạo</a></li>
                                                            <li><a href="#">Đá lát nền</a></li>
                                                            <li><a href="#">Đá sân vườn </a></li>
                                                            <li><a href="#">Đá hoa văn</a></li>
                                                            <li><a href="#">Đá lát vỉa hè</a></li>
                                                            <li><a href="#">Đá ốp cầu thang</a></li>
                                                            <li><a href="#">Đá Mosaic</a></li>
                                                            <li><a href="#">Đá ốp tường</a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Sơn nội thất & ngoại thất</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Sơn nội thất </a></li>
                                                            <li><a href="#">Sơn ngoại thất</a></li>
                                                            <li><a href="#">Sơn lót</a></li>
                                                            <li><a href="#">Sơn chống thấm</a></li>
                                                            <li><a href="#">Bột bả và chống thấm</a></li>
                                                            <li><a href="#">Sơn kim loại</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Sàn gỗ và phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Sàn gỗ tự nhiên </a></li>
                                                            <li><a href="#">Sàn gỗ ngoài trời</a></li>
                                                            <li><a href="#">Sàn gỗ công nghiệp</a></li>
                                                            <li><a href="#">Phụ kiện sàn gỗ</a></li>
                                                            <li><a href="#">Tấm ván ép</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Tấm ốp tường</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Tấm đá xuyên sáng </a></li>
                                                            <li><a href="#">Tấm ốp bằng nhôm</a></li>
                                                            <li><a href="#">Tấm ốp ngoài trời</a></li>
                                                            <li><a href="#">Trần nhôm</a></li>
                                                            <li><a href="#">Lam chắn nắng</a></li>
                                                            <li><a href="#">Tấm panel, vách ngăn</a></li>
                                                            <li><a href="#">Tấm ốp tường 3D</a></li>
                                                            <li><a href="#">Tấm ốp tường ván gỗ</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật liệu thô</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Inox </a></li>
                                                            <li><a href="#">Sắt thép xây dựng</a></li>
                                                            <li><a href="#">Ống đồng</a></li>
                                                            <li><a href="#">Xi măng</a></li>
                                                            <li><a href="#">Cát, sỏi xây dựng</a></li>
                                                            <li><a href="#">Bê tông</a></li>
                                                            <li><a href="#">Lưới xây dựng</a></li>
                                                            <li><a href="#">Dàn giáo</a></li>

                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật tư ngành đá</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Đá cắt đá mài </a></li>
                                                            <li><a href="#">Lưỡi cắt</a></li>
                                                            <li><a href="#">Mũi Khoan </a></li>
                                                            <li><a href="#">Vật tư thi công </a></li>
                                                            <li><a href="#">Thanh ty ren </a></li>
                                                            <li><a href="#">Bát mài </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Vật liệu mài & phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Tấm lợp mái </a></li>
                                                            <li><a href="#">Tấm trần</a></li>
                                                            <li><a href="#">Ngói </a></li>
                                                            <li><a href="#">Phụ kiện ngói </a></li>
                                                            <li><a href="#">Phụ kiện trần </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Cửa & cửa sổ. bán lẻ & phụ kiện</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Cửa nhôm</a></li>
                                                            <li><a href="#">Cửa gỗ </a></li>
                                                            <li><a href="#">Cửa kính </a></li>
                                                            <li><a href="#">Cửa kéo </a></li>
                                                            <li><a href="#">Cửa cuốn </a></li>
                                                            <li><a href="#">Cửa cổng </a></li>
                                                            <li><a href="#">Cửa nhựa </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <!-- /.col -->
                                                    <div class="col-xs-12 col-sm-6 col-md-2 col-menu  drop-height">
                                                        <h2 class="title">Nẹp</h2>
                                                        <ul class="links">
                                                            <li><a href="#">Nẹp dán cạnh</a></li>
                                                            <li><a href="#">Nẹp đồng </a></li>
                                                            <li><a href="#">Nẹp nhôm </a></li>
                                                            <li><a href="#">Nẹp nhựa </a></li>
                                                        </ul>
                                                    </div>
                                                    <!-- /.col -->

                                                    <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image">
                                                        <img class="img-responsive"
                                                             src="assets/images/sliders/slider3.png" alt="logo"
                                                             style=" max-width: 105%; height: 150px;">
                                                    </div>
                                                    <!-- /.yamm-content -->
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="hotdeal.jsp">Hot Deal <span
                                            class="menu-label hot-menu hidden-xs">hot</span> </a>
                                </li>
                                <li class="dropdown"> <a href="blog.jsp">blog</a>
                                </li>
                                <li class="dropdown"> <a href="hangmoi.jsp">hàng mới <span
                                        class="menu-label new-menu hidden-xs">new</span></a> </li>
                                <li class="dropdown"> <a href="lienhe.jsp">Liên hệ</a> </li>

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
<div class="body-content outer-top-xs" id="top-banner-and-menu">
    <div class="container">
        <div class="row">
            <!-- ============================================== SIDEBAR ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">

                <!-- ================================== TOP NAVIGATION ================================== -->
                <div class="side-menu animate-dropdown outer-bottom-xs">
                    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Tất cả sản phẩm </div>
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

                <!-- ============================================== HOT DEALS ============================================== -->
                <div class="sidebar-widget hot-deals wow fadeInUp outer-bottom-xs">
                    <h3 class="section-title">Đang giảm giá</h3>
                    <div class="owl-carousel sidebar-carousel custom-carousel owl-theme outer-top-ss">
                        <c:forEach items="${Sale}" var="s">
                        <div class="item">
                            <div class="products">
                                <div class="hot-deal-wrapper">
                                    <div class="image"> <img src="${s.imgURL}" alt="" href="productDetail?product_id=${s.id}"> </div>
                                    <div class="sale-offer-tag"><span>34%<br>
                                                off</span></div>
                                    <div class="timing-wrapper">
                                        <div class="box-wrapper">
                                            <div class="date box"> <span class="key">120</span> <span
                                                    class="value">Days</span> </div>
                                        </div>
                                        <div class="box-wrapper">
                                            <div class="hour box"> <span class="key">20</span> <span
                                                    class="value">HRS</span> </div>
                                        </div>
                                        <div class="box-wrapper">
                                            <div class="minutes box"> <span class="key">36</span> <span
                                                    class="value">MINS</span> </div>
                                        </div>
                                        <div class="box-wrapper hidden-md">
                                            <div class="seconds box"> <span class="key">60</span> <span
                                                    class="value">SEC</span> </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.hot-deal-wrapper -->

                                <div class="product-info text-left m-t-20">
                                    <h3 class="name"><a href="productDetail?product_id=${s.id}">${s.name}</a></h3>
                                    <div class="rating rateit-small"></div>
                                    <div class="product-price"> <span class="price"> ${s.salePrice}đ </span> <span
                                            class="price-before-discount">${s.price}đ</span> </div>
                                    <!-- /.product-price -->

                                </div>
                                <!-- /.product-info -->

                                <div class="cart clearfix animate-effect">
                                    <div class="action">
                                        <div class="add-cart-button btn-group">
                                            <button class="btn btn-primary cart-btn" type="button" href="AddCart?id=${s.id}" style="margin-left: 30px">Thêm vào giỏ
                                                hàng</button>
                                        </div>
                                    </div>
                                    <!-- /.action -->
                                </div>
                                <!-- /.cart -->
                            </div>
                        </div>
                         </c:forEach>

                    </div>
                    <!-- /.sidebar-widget -->
                </div>
                <!-- ============================================== HOT DEALS: END ============================================== -->

                <!-- ============================================== SPECIAL OFFER ============================================== -->

                <div class="sidebar-widget outer-bottom-small wow fadeInUp">
                    <h3 class="section-title">Hàng mới</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div
                                class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <div class="item">
                                <div class="products special-product">
                                    <div class="product">
                                        <div class="product-micro">
                                            <div class="row product-micro-row">
                                                <div class="col col-xs-5">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="#"> <img
                                                                src="assets/images/furnitures/gach/p1.jpg"
                                                                alt=""> </a> </div>
                                                        <!-- /.image -->

                                                    </div>
                                                    <!-- /.product-image -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-xs-7">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                                            600*600mm DAV-H03</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="product-price"> <span class="price"> 420.850đ
                                                                </span> </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.product-micro-row -->
                                        </div>
                                        <!-- /.product-micro -->

                                    </div>
                                    <div class="product">
                                        <div class="product-micro">
                                            <div class="row product-micro-row">
                                                <div class="col col-xs-5">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="#"> <img
                                                                src="assets/images/furnitures/gach/p2.jpg"
                                                                alt=""> </a> </div>
                                                        <!-- /.image -->

                                                    </div>
                                                    <!-- /.product-image -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-xs-7">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                                            600*600mm DAV-H04</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="product-price"> <span class="price">
                                                                    420.850đ</span> </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.product-micro-row -->
                                        </div>
                                        <!-- /.product-micro -->

                                    </div>
                                    <div class="product">
                                        <div class="product-micro">
                                            <div class="row product-micro-row">
                                                <div class="col col-xs-5">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="#"> <img
                                                                src="assets/images/furnitures/gach/p3.jpg"
                                                                alt=""> </a> </div>
                                                        <!-- /.image -->

                                                    </div>
                                                    <!-- /.product-image -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col col-xs-7">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="#">Gạch ốp lát Eurotile BST Đan Vi
                                                            600*600mm DAV-H02</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="product-price"> <span class="price"> 420.850đ
                                                                </span> </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.product-micro-row -->
                                        </div>
                                        <!-- /.product-micro -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
                <!-- ============================================== SPECIAL OFFER : END ============================================== -->
                <!-- ============================================== PRODUCT TAGS ============================================== -->
                <div class="sidebar-widget product-tag wow fadeInUp">
                    <h3 class="section-title">Từ khóa</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="tag-list"> <a class="item" title="Phone" href="category.html">Gạch</a> <a
                                class="item active" title="Vest" href="category.html">Đá</a> <a class="item"
                                                                                                title="Smartphone" href="category.html">Combo</a> <a class="item" title="Furniture"
                                                                                                                                                     href="category.html">Sàn</a> <a class="item" title="T-shirt" href="category.html">Xi
                            măng</a> <a class="item" title="Sweatpants" href="category.html">Sắt thép</a> <a
                                class="item" title="Sneaker" href="category.html">Sơn</a> <a class="item"
                                                                                             title="Toys" href="category.html">Cửa</a> <a class="item" title="Rose"
                                                                                                                                          href="category.html">Tấm ốp</a> </div>
                        <!-- /.tag-list -->
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
                <!-- ============================================== PRODUCT TAGS : END ============================================== -->
                <!-- ============================================== SPECIAL DEALS ============================================== -->


                <!-- /.sidebar-widget -->
                <!-- ============================================== SPECIAL DEALS : END ============================================== -->
                <!-- ============================================== NEWSLETTER ============================================== -->
                <div class="sidebar-widget newsletter wow fadeInUp outer-bottom-small">
                    <h3 class="section-title">Tin tức</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <p>Đặt Mua để nhận tin</p>
                        <form>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail1">Email</label>
                                <input type="email" class="form-control" id="exampleInputEmail1"
                                       placeholder="Đặt Mua...">
                            </div>
                            <button class="btn btn-primary">Đặt Mua</button>
                        </form>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
                <!-- ============================================== NEWSLETTER: END ============================================== -->

                <!-- ============================================== Testimonials============================================== -->
                <div class="sidebar-widget  wow fadeInUp outer-top-vs ">
                    <div id="advertisement" class="advertisement">
                        <div class="item">
                            <div class="avatar"><img src="assets/images\testimonials\member1.png" alt="Image"></div>
                            <div class="testimonials"><em>"</em> Sản phẩm đẹp, chất lượng, giao hàng nhanh, giống
                                với hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                            <div class="clients_author"> <span>Abc Company</span> </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- /.item -->

                        <div class="item">
                            <div class="avatar"><img src="assets/images\testimonials\member3.png" alt="Image"></div>
                            <div class="testimonials"><em>"</em>Sản phẩm đẹp, chất lượng, giao hàng nhanh, giống với
                                hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                            <div class="clients_author"> <span>Xperia Designs</span> </div>
                        </div>
                        <!-- /.item -->

                        <div class="item">
                            <div class="avatar"><img src="assets/images\testimonials\member2.png" alt="Image"></div>
                            <div class="testimonials"><em>"</em> Sản phẩm đẹp, chất lượng, giao hàng nhanh, giống
                                với hình, khá ưng ý, sẽ ủng hộ shop và tin tưởng shop.<em>"</em></div>
                            <div class="clients_author"> <span>Datsun &amp; Co</span> </div>
                            <!-- /.container-fluid -->
                        </div>
                        <!-- /.item -->

                    </div>
                    <!-- /.owl-carousel -->
                </div>

                <!-- ============================================== Testimonials: END ============================================== -->

            </div>
            <!-- /.sidemenu-holder -->
            <!-- ============================================== SIDEBAR : END ============================================== -->

            <!-- ============================================== CONTENT ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                <!-- ========================================== SECTION – HERO ========================================= -->

                <div id="hero">
                    <div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
                        <c:forEach items="${Banner}" var="b">
                            <div class="item" style="background-image: url(${b.img_URL});">
                                <div class="container-fluid">
                                    <div class="caption bg-color vertical-center text-left">
                                        <div class="slider-header fadeInDown-1"></div>
                                        <div class="big-text fadeInDown-1"> <span class="highlight"></span> </div>
                                        <div class="button-holder fadeInDown-3"> <a href="index.php?page=single-product" class="btn-lg btn btn-uppercase btn-primary shop-now-button">Mua Ngay</a> </div>
                                    </div>
                                    <!-- /.caption -->
                                </div>
                                <!-- /.container-fluid -->
                            </div>

                        <!-- /.item -->

                        </c:forEach>

                    </div>
                    <!-- /.owl-carousel -->
                </div>

                <!-- ========================================= SECTION – HERO : END ========================================= -->

                <!-- ============================================== INFO BOXES ============================================== -->
                <div class="info-boxes wow fadeInUp">
                    <div class="info-boxes-inner">
                        <div class="row">
                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">Đổi trả</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">Trong vòng 3 ngày</h6>
                                </div>
                            </div>
                            <!-- .col -->

                            <div class="hidden-md col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">Giao Hàng</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">Miễn phí trên toàn quốc</h6>
                                </div>
                            </div>
                            <!-- .col -->

                            <div class="col-md-6 col-sm-4 col-lg-4">
                                <div class="info-box">
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <h4 class="info-box-heading green">Trả góp</h4>
                                        </div>
                                    </div>
                                    <h6 class="text">Lãi suất 0% </h6>
                                </div>
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.info-boxes-inner -->

                </div>
                <!-- /.info-boxes -->
                <!-- ============================================== INFO BOXES : END ============================================== -->
                <!-- ============================================== SCROLL TABS ============================================== -->
                <div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
                    <div class="more-info-tab clearfix ">
                        <h3 class="new-product-title pull-left">Hàng mới</h3>
                        <ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
                            <li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">Tất
                                cả</a></li>
                            <li><a data-transition-type="backSlide" href="#smartphone" data-toggle="tab" >Gạch ốp
                                lát</a></li>
                            <li><a data-transition-type="backSlide" href="#laptop" data-toggle="tab">Đá ốp lát</a>
                            </li>
<%--                            <li><a data-transition-type="backSlide" href="#apple" data-toggle="tab">Vật liệu thô</a>--%>
<%--                            </li>--%>
                        </ul>
                        <!-- /.nav-tabs -->
                    </div>
                    <div class="tab-content outer-top-xs">
                        <div class="tab-pane in active" id="all">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <c:forEach items="${listN}" var="n">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="productDetail?product_id=${n.id}"><img
                                                                src="${n.imgURL}"
                                                                alt=""></a> </div>
                                                        <!-- /.image -->

                                                        <div class="tag new"><span>mới</span></div>
                                                    </div>
                                                    <!-- /.product-image -->

                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a href="productDetail?product_id=${n.id}">${n.name}</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price"> <span class="price"> ${n.salePrice}đ
                                                            </span> <span class="price-before-discount">${n.price}đ</span>
                                                        </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                    <!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled" style="margin-right: 30px">
                                                                <li class="add-cart-button btn-group" style="margin-right: 30px">
                                                                    <a class="btn btn-primary" href="AddCart?id=${n.id}"><i class="fa fa-shopping-cart" ></i> Thêm vào giỏ hàng</a>

                                                                </li>

                                                            </ul>
                                                        </div>
                                                        <!-- /.action -->
                                                    </div>
                                                    <!-- /.cart -->
                                                </div>
                                                <!-- /.product -->

                                            </div>
                                            <!-- /.products -->
                                        </div>
                                    </c:forEach>

                                    <!-- /.item -->

                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                            <!-- /.product-slider -->
                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="smartphone">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <c:forEach items="${Tag1}" var="n">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="productDetail?product_id=${n.id}"><img
                                                                src="${n.imgURL}"
                                                                alt=""></a> </div>
                                                        <!-- /.image -->

                                                        <div class="tag new"><span>mới</span></div>
                                                    </div>
                                                    <!-- /.product-image -->

                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a href="productDetail?product_id=${n.id}">${n.name}</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price"> <span class="price"> ${n.salePrice}đ
                                                            </span> <span class="price-before-discount">${n.price}đ</span>
                                                        </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                    <!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <button data-toggle="tooltip"
                                                                            class="btn btn-primary icon" type="button"
                                                                            title="Add Cart"> <i
                                                                            class="fa fa-shopping-cart"></i> </button>
                                                                    <button class="btn btn-primary cart-btn"
                                                                            type="button">Thêm vào giỏ hàng</button>
                                                                </li>
                                                                <li class="lnk wishlist"> <a data-toggle="tooltip"
                                                                                             class="add-to-cart" href="chitietsanpham.html"
                                                                                             title="Wishlist"> <i
                                                                        class="icon fa fa-heart"></i> </a> </li>
                                                                <li class="lnk"> <a data-toggle="tooltip"
                                                                                    class="add-to-cart" href="chitietsanpham.html"
                                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                                        aria-hidden="true"></i> </a> </li>
                                                            </ul>
                                                        </div>
                                                        <!-- /.action -->
                                                    </div>
                                                    <!-- /.cart -->
                                                </div>
                                                <!-- /.product -->

                                            </div>
                                            <!-- /.products -->
                                        </div>
                                    </c:forEach>
                                    <!-- /.item -->

                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                            <!-- /.product-slider -->
                        </div>
                        <!-- /.tab-pane -->

                        <div class="tab-pane" id="laptop">
                            <div class="product-slider">
                                <div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
                                    <c:forEach items="${Tag2}" var="n">
                                        <div class="item item-carousel">
                                            <div class="products">
                                                <div class="product">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="productDetail?product_id=${n.id}"><img
                                                                src="${n.imgURL}"
                                                                alt=""></a> </div>
                                                        <!-- /.image -->

                                                        <div class="tag new"><span>mới</span></div>
                                                    </div>
                                                    <!-- /.product-image -->

                                                    <div class="product-info text-left">
                                                        <h3 class="name"><a href="productDetail?product_id=${n.id}">${n.name}</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="description"></div>
                                                        <div class="product-price"> <span class="price"> ${n.salePrice}đ
                                                            </span> <span class="price-before-discount">${n.price}đ</span>
                                                        </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                    <!-- /.product-info -->
                                                    <div class="cart clearfix animate-effect">
                                                        <div class="action">
                                                            <ul class="list-unstyled">
                                                                <li class="add-cart-button btn-group">
                                                                    <button data-toggle="tooltip"
                                                                            class="btn btn-primary icon" type="button"
                                                                            title="Add Cart"> <i
                                                                            class="fa fa-shopping-cart"></i> </button>
                                                                    <button class="btn btn-primary cart-btn"
                                                                            type="button">Thêm vào giỏ hàng</button>
                                                                </li>
                                                                <li class="lnk wishlist"> <a data-toggle="tooltip"
                                                                                             class="add-to-cart" href="chitietsanpham.html"
                                                                                             title="Wishlist"> <i
                                                                        class="icon fa fa-heart"></i> </a> </li>
                                                                <li class="lnk"> <a data-toggle="tooltip"
                                                                                    class="add-to-cart" href="chitietsanpham.html"
                                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                                        aria-hidden="true"></i> </a> </li>
                                                            </ul>
                                                        </div>
                                                        <!-- /.action -->
                                                    </div>
                                                    <!-- /.cart -->
                                                </div>
                                                <!-- /.product -->

                                            </div>
                                            <!-- /.products -->
                                        </div>
                                    </c:forEach>
                                    <!-- /.item -->

                                </div>
                                <!-- /.home-owl-carousel -->
                            </div>
                        </div>
                        <!-- /.tab-pane -->

                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.scroll-tabs -->
                <!-- ============================================== SCROLL TABS : END ============================================== -->
                <!-- ============================================== WIDE PRODUCTS ============================================== -->
                <div class="wide-banners wow fadeInUp outer-bottom-xs">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="wide-banner cnt-strip">
                                <div class="image"> <img class="img-responsive"
                                                         src="assets/images\banners\sango.jpeg" alt=""> </div>
                            </div>
                            <!-- /.wide-banner -->
                        </div>
                        <!-- /.col -->
<%--                        <div class="col-md-5 col-sm-5">--%>
<%--                            <div class="wide-banner cnt-strip">--%>
<%--                                <div class="image"> <img class="img-responsive"--%>
<%--                                                         src="assets/images\banners\banner-vatlieu.png" alt=""> </div>--%>
<%--                            </div>--%>
<%--                            <!-- /.wide-banner -->--%>
<%--                        </div>--%>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.wide-banners -->

                <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                <!-- ============================================== FEATURED PRODUCTS ============================================== -->
                <section class="section featured-product wow fadeInUp">
                    <h3 class="section-title">Sản phẩm yêu thích</h3>
                    <div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs">
                        <c:forEach items="${Like}" var="like">
                        <div class="item item-carousel">
                            <div class="products">
                                <div class="product">
                                    <div class="product-image">
                                        <div class="image"> <a href="productDetail?product_id=${like.id}"><img
                                                src="${like.imgURL}"
                                                alt=""></a> </div>
                                        <!-- /.image -->

                                        <div class="tag hot"><span>hot</span></div>
                                    </div>
                                    <!-- /.product-image -->

                                    <div class="product-info text-left">
                                        <h3 class="name"><a href="productDetail?product_id=${like.id}">${like.name}</a></h3>
                                        <div class="rating rateit-small"></div>
                                        <div class="description"></div>
                                        <div class="product-price"> <span class="price"> ${like.salePrice}đ </span> <span
                                                class="price-before-discount">${like.price}đ</span> </div>
                                        <!-- /.product-price -->

                                    </div>
                                    <!-- /.product-info -->
                                    <div class="cart clearfix animate-effect">
                                        <div class="action">
                                            <ul class="list-unstyled">
                                                <li class="add-cart-button btn-group">
                                                    <button class="btn btn-primary icon" data-toggle="dropdown"
                                                            type="button"> <i class="fa fa-shopping-cart"></i> </button>
                                                    <button class="btn btn-primary cart-btn" type="button">Thêm vào
                                                        giỏ hàng</button>
                                                </li>
                                                <li class="lnk wishlist"> <a class="add-to-cart"
                                                                             href="chitietsanpham.jsp" title="Wishlist"> <i
                                                        class="icon fa fa-heart"></i> </a>
                                                </li>
                                                <li class="lnk"> <a class="add-to-cart" href="chitietsanpham.jsp"
                                                                    title="Compare"> <i class="fa fa-signal"
                                                                                        aria-hidden="true"></i> </a> </li>
                                            </ul>
                                        </div>
                                        <!-- /.action -->
                                    </div>
                                    <!-- /.cart -->
                                </div>
                                <!-- /.product -->

                            </div>
                            <!-- /.products -->
                        </div>
                        <!-- /.item -->
                        </c:forEach>

                        <!-- /.item -->
                    </div>
                    <!-- /.home-owl-carousel -->
                </section>
                <!-- /.section -->
                <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
                <!-- ============================================== WIDE PRODUCTS ============================================== -->
                <div class="wide-banners wow fadeInUp outer-bottom-xs">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="wide-banner cnt-strip">
                                <div class="image"> <img class="img-responsive"
                                                         src="assets/images\banners\banner-vatlieu.png" alt=""> </div>
                                <!-- <div class="strip strip-text">
                  <div class="strip-inner">
                    <h2 class="text-right">New Mens Fashion<br>
                      <span class="shopping-needs">Save up to 40% off</span></h2>
                  </div>
                </div> -->
                                <div class="new-label">
                                    <div class="text">NEW</div>
                                </div>
                                <!-- /.new-label -->
                            </div>
                            <!-- /.wide-banner -->
                        </div>
                        <!-- /.col -->

                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.wide-banners -->
                <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
                <!-- ============================================== BEST SELLER ============================================== -->

                <div class="best-deal wow fadeInUp outer-bottom-xs">
                    <h3 class="section-title">Sản phẩm bán chạy</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
                            <c:forEach items="${Top}" var="top">
                            <div class="item">
                                <div class="products best-product">
                                    <div class="product">
                                        <div class="product-micro">
                                            <div class="row product-micro-row">
                                                <div class="col col-xs-5">
                                                    <div class="product-image">
                                                        <div class="image"> <a href="productDetail?product_id=${top.id}"> <img
                                                                src="${top.imgURL}"
                                                                alt=""> </a> </div>
                                                        <!-- /.image -->

                                                    </div>
                                                    <!-- /.product-image -->
                                                </div>
                                                <!-- /.col -->
                                                <div class="col2 col-xs-7">
                                                    <div class="product-info">
                                                        <h3 class="name"><a href="productDetail?product_id=${top.id}">${top.name}</a></h3>
                                                        <div class="rating rateit-small"></div>
                                                        <div class="product-price"> <span class="price"> ${top.price}đ
                                                                </span> </div>
                                                        <!-- /.product-price -->

                                                    </div>
                                                </div>
                                                <!-- /.col -->
                                            </div>
                                            <!-- /.product-micro-row -->
                                        </div>
                                        <!-- /.product-micro -->

                                    </div>
                                </div>
                            </div>
                            </c:forEach>
<%--                               end item--%>
                        </div>
                    </div>
                    <!-- /.sidebar-widget-body -->
                </div>
                <!-- /.sidebar-widget -->
                <!-- ============================================== BEST SELLER : END ============================================== -->

                <!-- ============================================== BLOG SLIDER ============================================== -->
                <section class="section latest-blog outer-bottom-vs wow fadeInUp">
                    <h3 class="section-title">Nguồn cảm hứng</h3>
                    <div class="blog-slider-container outer-top-xs">
                        <div class="owl-carousel blog-slider custom-carousel">
                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image"> <a href="blog.jsp"><img src="assets/images/blog/1.jpeg"
                                                                                    alt="" style="height: 218px;"></a> </div>
                                    </div>
                                    <!-- /.blog-post-image -->

                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">TRẺ TRUNG & LÃNG MẠN</a></h3>
                                        <span class="info">Bởi Đức &nbsp;|&nbsp; 1 năm trước </span>
                                        <p class="text">Gạch lát nền - Cách lựa chọn gạch lát nền phòng khách đẹp,
                                            chuẩn xu hướng nhà đẹp 2022</p>
                                        <a href="chitietblog.jsp" class="lnk btn btn-primary">Đọc thêm</a>
                                    </div>
                                    <!-- /.blog-post-info -->

                                </div>
                                <!-- /.blog-post -->
                            </div>
                            <!-- /.item -->

                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image"> <a href="blog.jsp"><img src="assets/images/blog/2.jpeg"
                                                                                    alt="" style="height: 218px;"></a> </div>
                                    </div>
                                    <!-- /.blog-post-image -->

                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">GIA ĐÌNH NHỎ HẠNH PHÚC</a></h3>
                                        <span class="info">Bởi Thùy &nbsp;|&nbsp; 20/10/2019 </span>
                                        <p class="text">Ngôi nhà đủ đầy sự ân cần và dịu dàng sắp xếp cho con trẻ
                                            niềm vui hạnh phúc trong suốt khoảng trời tuổi thơ.</p>
                                        <a href="chitietblog.jsp" class="lnk btn btn-primary">Đọc thêm</a>
                                    </div>
                                    <!-- /.blog-post-info -->

                                </div>
                                <!-- /.blog-post -->
                            </div>
                            <!-- /.item -->

                            <!-- /.item -->

                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image"> <a href="blog.jsp"><img src="assets/images/blog/3.jpeg"
                                                                                    style="height: 218px;" alt=""></a> </div>
                                    </div>
                                    <!-- /.blog-post-image -->

                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">TỔ ẤM 3 THẾ HỆ</a></h3>
                                        <span class="info">Bởi &nbsp;|&nbsp; 19/09/2018 </span>
                                        <p class="text">Giữa lòng thành phố ồn ào, có một nơi trong trẻo tiếng cười
                                            đùa, những chuyện trò an nhiên cùng gia đình sum họp trong không khí
                                            thượng lưu xưa cũ và tinh tế.</p>
                                        <a href="chitietblog.jsp" class="lnk btn btn-primary">Đọc thêm</a>
                                    </div>
                                    <!-- /.blog-post-info -->

                                </div>
                                <!-- /.blog-post -->
                            </div>
                            <!-- /.item -->

                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image"> <a href="blog.jsp"><img src="assets/images/blog/4.jpeg"
                                                                                    alt="" style="height: 218px;"></a> </div>
                                    </div>
                                    <!-- /.blog-post-image -->

                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">PHONG CÁCH & ĐA NĂNG</a></h3>
                                        <span class="info">Bởi Lưu Ben &nbsp;|&nbsp; 18/10/2019 </span>
                                        <p class="text">Những tiện nghi hiện đại trong không gian tập trung hiệu quả
                                            & thư giãn tối đa cho căn hộ office-tel đa chức năng.</p>
                                        <a href="#" class="lnk btn btn-primary">Đọc thêm</a>
                                    </div>
                                    <!-- /.blog-post-info -->

                                </div>
                                <!-- /.blog-post -->
                            </div>
                            <!-- /.item -->

                            <div class="item">
                                <div class="blog-post">
                                    <div class="blog-post-image">
                                        <div class="image"> <a href="blog.jsp"><img src="assets/images/blog/5.jpeg"
                                                                                    alt="" style="height: 218px;"></a> </div>
                                    </div>



                                    <!-- /.blog-post-image -->

                                    <div class="blog-post-info text-left">
                                        <h3 class="name"><a href="#">BST PHÒNG KHÁCH - TRỌN VẸN TỪNG KHOẢNH KHẮC</a>
                                        </h3>
                                        <span class="info"> &nbsp;|&nbsp; 06/09/2018 </span>
                                        <p class="text">Không chỉ là nơi tiếp đón, phòng khách còn là không gian sum
                                            vầy và thư giãn cho mọi thành viên trong gia đình. Hãy để BAYA chăm chút
                                            trọn vẹn từng khoảnh khắc gặp gỡ, giờ nghỉ ban trưa hay phút quây quần
                                            buổi tối của gia đình bạn.
                                        </p>
                                        <a href="#" class="lnk btn btn-primary">Đọc thêm</a>
                                    </div>
                                    <!-- /.blog-post-info -->

                                </div>
                                <!-- /.blog-post -->
                            </div>
                            <!-- /.item -->

                        </div>
                        <!-- /.owl-carousel -->
                    </div>
                    <!-- /.blog-slider-container -->
                </section>
                <!-- /.section -->
                <!-- ============================================== BLOG SLIDER : END ============================================== -->

                <!-- ============================================== FEATURED PRODUCTS ============================================== -->

                <!-- /.section -->
                <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->

            </div>
            <!-- /.homebanner-holder -->
            <!-- ============================================== CONTENT : END ============================================== -->
        </div>
        <!-- /.row -->
        <!-- ============================================== BRANDS CAROUSEL ============================================== -->
        <div id="brands-carousel" class="logo-slider wow fadeInUp">
            <div class="logo-slider-inner">
                <div id="brand-slider" class="owl-carousel brand-slider custom-carousel owl-theme">
                    <div class="item m-t-15"> <a href="#" class="image"> <img
                            data-echo="assets/images/brands/brand1.png" src="assets/images\blank.gif" alt="">
                    </a> </div>
                    <!--/.item-->

                    <div class="item m-t-10"> <a href="#" class="image"> <img
                            data-echo="assets/images/brands/brand2.png" src="assets/images\blank.gif" alt="">
                    </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand3.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand6.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand2.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand4.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand1.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
                    <!--/.item-->

                    <div class="item"> <a href="#" class="image"> <img data-echo="assets/images/brands/brand5.png"
                                                                       src="assets/images\blank.gif" alt=""> </a> </div>
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
<!-- /#top-banner-and-menu -->

<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Liên hệ</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class="toggle-footer">
                            <li class="media">
                                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i
                                        class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                                <div class="media-body">
                                    <p>Khu phố 6, phường Linh Trung, quận Thủ Đức, TP.HCM, Việt Nam</p>
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
                        <h4 class="module-title">Hỗ trợ khách hàng</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a href="lienhe.jsp" title="Contact">Liên hệ đến Daisan</a></li>
                            <li><a href="huongdandathang.jsp" title="Order">Hướng dẫn đặt hàng</a></li>
                            <li><a href="cauhoithuonggap.jsp" title="FAQ">Câu hỏi thường gặp</a></li>
                            <li class="last"><a href="chinhsachvadieukhoan.jsp" title="Hỗ trợ">Chính sách và
                                quy định chung</a></li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Chính sách</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li class="first"><a title="Thanh toán" href="huongdanthanhtoan.jsp">Hướng dẫn thanh
                                toán</a></li>
                            <li><a title="Bảo hành" href="chinhsachbaohanh.jsp">Chính sách bảo hành</a></li>
                            <li><a title="Chính sách đổi trả" href="chinhsachdoitra.jsp">Chính sách đổi trả</a>
                            </li>
                            <li><a title="Vận chuyển" href="chinhsachvanchuyen.jsp">Phương thức vận chuyển</a></li>
                            <li class="last"><a title="Bảo mật thông tin" href="chinhsachbaomatthongtin.jsp">Bảo
                                mật thông tin</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.module-body -->
                </div>
                <!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="module-heading">
                        <h4 class="module-title">Tại sao nên chọn chúng tôi</h4>
                    </div>
                    <!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <!-- <li class="first"><a href="#" title="About us">Shopping Guide</a></li> -->
                            <li><a href="blog.jsp" title="Blog">Blog</a></li>
                            <!-- <li><a href="#" title="Company">Công ty</a></li> -->
                            <!-- <li><a href="#" title="Investor Relations">Investor Relations</a></li> -->
                            <li class=" last"><a href="lienhe.jsp" title="Suppliers">Liên hệ</a></li>
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
                        <p class="text-b mt-3 mt-md-0">© 2009 DAISAN.,JSC</p>
                        <p class="mb-2">Công Ty Cổ phần Đại Sàn. GPĐKKD: 0103884103 do sở KH &amp; ĐT TP Hà Nội cấp
                            lần đầu ngày 29/06/2009.</p>
                        <p class="mb-3">Trụ sở chính: 88 Láng Hạ, P. Láng Hạ, Q. Đống Đa, TP Hà Nội.</p>
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
                        <p class="text-b">MIỀN BẮC</p>
                        <p>Showroom: Số 40 Tố Hữu, Nhân Chính, Thanh Xuân, Hà Nội</p>
                        <p>VPGD: Tầng 4, Số 40 Tố Hữu, Nhân Chính, Thanh Xuân, Hà Nội</p>
                        <p>Email: <a href="mailto:info@daisan.vn">info@daisan.vn</a></p>
                        <p class="text-b mt-3">MIỀN NAM</p>
                        <p>VPGD: 57/1c, Khu phố 1, P. An Phú Đông, Q.12</p>
                        <a class="hide">Điện thoại: 1800 6464 98</a> Email: <a
                            href="mailto:info@daisan.vn">info@daisan.vn</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- For demo purposes – can be removed on production -->

<!-- For demo purposes – can be removed on production : End -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="assets/js\jquery-1.11.1.min.js"></script>
<script src="assets/js\bootstrap.min.js"></script>
<script src="assets/js\bootstrap-hover-dropdown.min.js"></script>
<script src="assets/js\owl.carousel.min.js"></script>
<script src="assets/js\echo.min.js"></script>
<script src="assets/js\jquery.easing-1.3.min.js"></script>
<script src="assets/js\bootstrap-slider.min.js"></script>
<script src="assets/js\jquery.rateit.min.js"></script>
<script type="text/javascript" src="assets/js\lightbox.min.js"></script>
<script src="assets/js\bootstrap-select.min.js"></script>
<script src="assets/js\wow.min.js"></script>
<script src="assets/js\scripts.js"></script>
</body>

</html>