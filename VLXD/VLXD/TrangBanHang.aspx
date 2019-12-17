﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangBanHang.aspx.cs" Inherits="VLXD.TrangBanHang" %>

<%@ Register Src="~/BanHang/BanHangUserControl.ascx" TagPrefix="uc1" TagName="BanHangUserControl" %>


<!DOCTYPE html>
<html>
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta charset="UTF-8" />
    <title>Vật liệu xây dựng</title>
    <meta name="description" />
    <meta name="keywords" />
    <link href="/../css/Web/Uploads/shop2198/images/favicon.png" rel="shortcut icon" type="image/x-icon" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="fb:app_id" content="227481454296289" />

    <meta content="vi_VN" property="og:locale" />
    <meta content="website" property="og:type" />
    <meta content="Sản phẩm" property="og:title" />
    <meta property="og:description" />
    <meta property="og:image" />
    <meta property="og:url" />
    <meta property="og:site_name" />
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.2/angular.min.js"></script>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../css/Web/assets100002/js/jquery-1.11.3.min.js"></script>
    <script src="../css/Web/assets100002/js/bootstrap/js/bootstrap.min.js"></script>
    <script src="../css/Web/assets100002/js/option_selection.min.js"></script>
    <script src="../css/Web/assets100002/js/api.jquery.min.js"></script>
    <script src='../css/Web/assets100002/js/select2.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.bxslider.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/owl.carousel/owl.carousel.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/modernizr.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.cookie.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.countdown.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/fancybox/jquery.fancybox.js' type='text/javascript'></script>
    <script src='../css/Web/img/jquery.lazyload.js?v=42' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.flexslider-min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.plugin.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery.actual.min.js' type='text/javascript'></script>
    <script src='../css/Web/assets100002/js/jquery-ui/jquery-ui.min.js' type='text/javascript'></script>

    <script src="../css/Web/assets100002/js/html5shiv.js"></script>
    <script src="../css/Web/assets100002/js/jquery-migrate-1.2.0.min.js"></script>
    <script src='../css/Web/assets100002/js/jquery.touchSwipe.min.js' type='text/javascript'></script>
    <script src="../css/Web/assets100002/js/haravan.plugin.1.0.min.js"></script>
    <script async="" defer="defer" data-target=".product-resize" data-parent=".products-resize" data-img-box=".image-resize" src="../css/Web/assets100002/js/fixheightproductv2.js"></script>
    <!--------------CSS----------->
    <link href="../css/Web/assets/100002/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/Web/assets/100002/fonts/fontawesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href='../css/Web/assets/100002/css/reset.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/css/flexslider.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/css/animate.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/css/jquery.bxslider.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/js/fancybox/jquery.fancybox.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/js/jquery-ui/jquery-ui.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/js/owl.carousel/owl.carousel.css?v=42' rel='stylesheet' type='text/css' media='all' />
    <link href='../css/Web/assets/100002/css/select2.min.css?v=42' rel='stylesheet' type='text/css' media='all' />

    <script src="../css/Web/Scripts/common/mycard.js" type="text/javascript"></script>
    <script src="Scripts/lazyLoad/jquery.lazyload.min.js" type="text/javascript"></script>

    <script src="../css/Web/Scripts/angularJS/angular.min.js"></script>
    <script src="../css/Web/Scripts/angularJS/angular-sanitize.min.js"></script>
    <script type="text/javascript" src="../css/Web/Scripts/angular-loading-spinner/spin.min.js"></script>
    <script type="text/javascript" src="../css/Web/Scripts/angular-loading-spinner/angular-spinner.min.js"></script>
    <script type="text/javascript" src="../css/Web/Scripts/angular-loading-spinner/angular-loading-spinner.js"></script>
    <script src="../css/Web/app/appMain.js"></script>
    <script src="../css/Web/app/directives/directive.js"></script>
    <script src="../css/Web/app/directives/angular-summernote.js"></script>
    <script src="../css/Web/app/directives/paging.js"></script>
    <script src="../css/Web/app/services/ajaxServices.js"></script>
    <script src="../css/Web/app/services/alertsServices.js"></script>

    <script src='../css/Web/assets100002/js/theme-script.js' type='text/javascript'></script>
    <link href="../css/Web/css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/Web/css/responsive.css" rel="stylesheet" type="text/css" />
</head>
<body class="home option2">
    <div class="wrapper page-home">
        <div id="header" class="header">
            <section class="top-link clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="nav navbar-nav topmenu-contact pull-left">
                                <li><i class="fa fa-phone"></i><span>Hotline:0356778899</span></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm">
                                <li class="order-check"><a href="/kiem-tra-don-hang.html"><i class="fa fa-pencil-square-o"></i>Kiểm tra đơn hàng</a></li>
                                <li class="order-cart"><a href="/TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                                <asp:Label class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm" ID="lblUser" runat="server" Text=""></asp:Label>
                            </ul>
                            <div class="show-mobile hidden-lg hidden-md">
                                <div class="quick-user">
                                    <div class="quickaccess-toggle">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <div class="inner-toggle">
                                        <ul class="login links">
                                            <li>
                                                <a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DK"><i class="fa fa-sign-in"></i>Đăng ký</a>
                                            </li>
                                            <li>
                                                <a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN"><i class="fa fa-key"></i>Đăng nhập</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="quick-access">
                                    <div class="quickaccess-toggle">
                                        <i class="fa fa-list"></i>
                                    </div>
                                    <div class="inner-toggle">
                                        <ul class="links">
                                            <li><a id="mobile-wishlist-total" href="/kiem-tra-don-hang.html" class="wishlist"><i class="fa fa-pencil-square-o"></i>Kiểm tra đơn hàng</a></li>
                                            <li><a href="/TrangBanHang.aspx?modul=TrangChu&modul1=GH" class="shoppingcart"><i class="fa fa-shopping-cart"></i>Giỏ hàng</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- MAIN HEADER -->
            <div class="container main-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 logo" style="text-align:center;">
                        <a href="/TrangBanHang.aspx?modul1=TrangChu" class="logo" title="vatlieuxaydung">
                            <img src="../css/Web/Uploads/shop2198/images/logo2.png" width="70%" alt="vatlieuxaydung" title="vatlieuxaydung">
                        </a>
                    </div>
                    <div class="col-xs-7 col-sm-7 header-search-box">
                        <div class="search-box">
                            <form class="search form-inline">
                                <div class="form-group input-serach">
                                    <input type="text" name="search" class="search_box" id="txtsearch" value="Nhập từ khóa tìm kiếm..." />
                                </div>
                                <button id="btnsearch" class="pull-right btn-search">
                                    <span class="hidden-400">Tìm kiếm</span>
                                    <span class="show-400"><i class="fa fa-search" aria-hidden="true"></i></span>
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="col-xs-5 col-sm-2 group-button-header new-login">
                        <a title="Tài khoản" href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=TTTK" class="btn-heart"></a>
                        <div class="btn-cart" id="cart-block">
                            <a title="My cart" href="/TrangBanHang.aspx?modul=TrangChu&modul1=GH&modul2=DSDH">Giỏ hàng</a>
                            <span class="text-show">Giỏ hàng</span>
                            <span class="notify notify-right">
                                <asp:Label ID="lblSLDH" runat="server" Text=""></asp:Label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MANIN HEADER -->

            <div id="nav-top-menu" class="nav-top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3" id="box-vertical-megamenus">
                            <div class="box-vertical-megamenus menu-quick-select">
                                <h4 class="title click-menu">
                                    <span class="title-menu">Danh mục sản phẩm</span>
                                    <span class="btn-open-mobile pull-right home-page" onclick="showMenu()"><i class="fa fa-bars"></i></span>
                                </h4>
                                <div class="vertical-menu-content" id="vertical-menu-content">
                                    <ul class='vertical-menu-list' style="margin:0; padding:0;">
                                        <%--<li class="has-child level0">
                                            <a class='dropdown-toggle has-category parent' href='/san-pham/thoi-trang-40412'>
                                                <span>Thời trang</span>
                                            </a>
                                            <ul class='level1 drop-menu'>
                                                <li class="level1"><a class='' href='/san-pham/ao-so-mi-40422'><span>Áo sơ mi</span></a></li>
                                                <li class="level1"><a class='' href='/san-pham/ao-khoac-40423'><span>Áo khoác</span></a></li>
                                                <li class="level1"><a class='' href='/san-pham/ao-thun-40424'><span>Áo thun</span></a></li>

                                            </ul>
                                        </li>--%>
                                        <asp:Label class='vertical-menu-list' style="margin:0; padding:0;" ID="lblDMSP" runat="server"></asp:Label>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div id="main-menu-new" class="col-sm-12 col-md-9 main-menu">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#new-menu" aria-expanded="false" aria-controls="navbar">
                                            <i class="fa fa-bars"></i>
                                        </button>
                                        <a class="navbar-brand" href="#">MENU</a>
                                    </div>
                                    <div id="new-menu" class="navbar-collapse collapse">
                                        <ul class='menu t-menu nav'>
                                            <li class="level0"><a class='' href='/TrangBanHang.aspx?modul1=TrangChu'><span>Trang chủ</span></a></li>
                                            <li class="level0"><a class='' href='/gioi-thieu.html'><span>Giới thiệu</span></a></li>
                                            <li class="level0"><a class='' href='/TrangBanHang.aspx?modul=TrangChu&modul1=SP&modul2=DSSP'><span>Sản phẩm</span></a></li>
                                            <li class="level0"><a class='' href='/tin-tuc.html'><span>Tin tức</span></a></li>
                                            <li class="level0"><a class='' href='/lien-he.html'><span>Liên hệ</span></a></li>
                                        </ul>
                                    </div>
                                    <!--/.nav-collapse -->
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- userinfo on top-->
                    <div id="form-search-opntop">
                    </div>
                    <!-- userinfo on top-->

                    <!-- CART ICON ON MMENU -->
                    <div id="shopping-cart-box-ontop">
                        <a href="/TrangBanHang.aspx?modul=GioHang&modul1=GH"></a>
                        <span class="icon-cart-ontop"></span>
                        <span class="cart-items-count">0</span>
                        <span class="text">Giỏ hàng</span>
                        <div class="shopping-cart-box-ontop-content">
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                $("#btnsearch1").click(function () {
                    SearchProduct1();
                });
                $("#txtsearch1").keydown(function (event) {
                    if (event.keyCode == 13) {
                        SearchProduct1();
                    }
                });
                function SearchProduct1() {
                    var key = $('#txtsearch1').val();
                    if (key == '' || key == 'Tìm kiếm...') {
                        $('#txtsearch1').focus();
                        return;
                    }
                    window.location = '/tim-kiem.html?key=' + key;
                }
            </script>
        </div>
        <uc1:BanHangUserControl runat="server" ID="BanHangUserControl" />
        <div class="footer">
            <script src="../css/Web/app/services/moduleServices.js"></script>
            <script src="../css/Web/app/controllers/moduleController.js"></script>
            <footer id="footer">
                <div class="container">
                    <!-- introduce-box -->
                    <div id="introduce-box" class="row">
                        <div class="col-md-3">
                            <div id="address-box">
                                <a href="/TrangBanHang.aspx?modul1=TrangChu">
                                    <img src="css/Web/Uploads/shop2198/images/logo2.png" width="80%"/>
                                </a>
                                <div id="address-list">
                                    <div class="tit-name">Địa chỉ:</div>
                                    <div class="tit-contain">Bình Định</div>
                                    <div class="tit-name">Điện thoại:</div>
                                    <div class="tit-contain">0356778899</div>
                                    <div class="tit-name">Email:</div>
                                    <div class="tit-contain">vovietcuongcntt39b@gmail.com</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="introduce-title">Về chúng tôi</div>
                                    <ul class="introduce-list">
                                        <li class="item">
                                            <a href="/gioi-thieu.html">Giới thiệu
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="/content/giao-hang-doi-tra.html">Giao hàng - Đổi trả
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="/content/chinh-sach-bao-mat.html">Chính sách bảo mật
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="/lien-he.html">Liên hệ
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <div class="introduce-title">Trợ giúp</div>
                                    <ul class="introduce-list">
                                        <li class="item">
                                            <a href="/content/huong-dan-mua-hang.html">Hướng dẫn mua hàng
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="/content/huong-dan-thanh-toan.html">Hướng dẫn thanh toán
                                            </a>
                                        </li>
                                        <li class="item">
                                            <a href="/content/tai-khoan-giao-dich.html">Tài khoản giao dịch
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div id="contact-box" ng-controller="moduleController" ng-init="initController()">
                                <div class="introduce-title">Đăng ký nhận tin</div>
                                <form ng-submit="registerNewsletter()" class='contact-form'>
                                    <div class="input-group" id="mail-box">
                                        <input ng-model="newsletter.Email" type="email" placeholder="Đăng ký email" required="required" />
                                        <span class="input-group-btn">
                                            <button type="submit" class="btn btn-default">Gửi</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form>
                                <div class="introduce-title">Liên kết</div>
                                <div class="social-link">
                                    <a><i class="fa fa-facebook"></i></a>
                                    <a><i class="fa fa-youtube"></i></a>
                                    <a><i class="fa fa-twitter"></i></a>
                                    <a><i class="fa fa-google-plus"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /#introduce-box -->
                    <!-- #trademark-box -->
                    <div id="trademark-box" class="row">
                        <div class="col-sm-12">
                            <ul id="trademark-list">
                                <li id="payment-methods">Phương thức thanh toán</li>

                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_1.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_10.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_2.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_3.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_4.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_5.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_6.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_7.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_8.jpg" /></a></li>
                                <li><a href="javascript:;">
                                    <img src="../css/Web/assets/100002/img/trademark_9.jpg" /></a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /#trademark-box -->
                    <p class="cpr text-center">
                        &copy; Bản quyền thuộc về <a href="#" style="color: #0f9ed8" target="_blank">VẬT LIỆU XÂY DỰNG SHOP</a> | <a target="_blank" href="#">Powered by vatlieuxaydung.vn</a>.
                    </p>
                </div>
            </footer>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    
    function showMenu() {
        document.getElementById("vertical-menu-content").classList.toggle('active');
    }
</script>