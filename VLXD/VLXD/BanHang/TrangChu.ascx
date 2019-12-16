<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="VLXD.BanHang.TrangChu" %>

<style>
    #vertical-menu-content {
        display: block;
    }
    .listKM {
        padding:2px;
        margin-left:10px;
        float:left;
    }

    .owl-item{
        width: 226px; 
        margin-left:0;
    }
</style>
<script src="http://static.bizwebmedia.net/Extensions/Js/Gallery_Slideshow/skdslider/src/skdslider.min.js"
    type="text/javascript"></script>
<link href="http://static.bizwebmedia.net/Extensions/Js/Gallery_Slideshow/skdslider/src/skdslider.css"
    rel="stylesheet">
<script type="text/javascript">
    var $j = jQuery.noConflict();
    $j(document).ready(function () {
        $j('#contenhomeslider').skdslider({
		'delay': 3000, 'animationSpeed': 1000,
		'showNextPrev': true,
		'showPlayButton': false,
		'autoSlide': true,
		'animationType': 'sliding' });
    });
</script>
<div class="slideshow">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-9 ">
                <div id="home-slider">
                    <div class="header-top-right">
                        <div class="homeslider">
                            <div class="bx-wrapper" style="max-width: 100%;">
                                <div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 450px;">
                                    <ul id="contenhomeslider" style="width: 515%; position: relative;">
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="01" src="../css/Web/Uploads/shop2198/images/slider/banner_slider_7.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="02" src="../css/Web/Uploads/shop2198/images/slider/banner_slider_6.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="02" src="../css/Web/Uploads/shop2198/images/slider/banner_slider_5.jpg">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="bx-controls bx-has-pager bx-has-controls-direction">
                                    <%--<div class="bx-controls-direction">
                                        <a class="bx-prev" href="#"><i class="fa fa-angle-left"></i></a>
                                        <a class="bx-next" href="#"><i class="fa fa-angle-right"></i></a>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Begin-->
                <!--End-->
            </div>
        </div>
    </div>
</div>
<div class="adv">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                
            </div>
        </div>
    </div>
</div>
<div class="partner">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <!-- blog list -->
               
                <!-- ./blog list -->
                <!--Begin-->
                <div class="row banner-bottom">
                    <div class="col-sm-6 item-left">
                        <div class="banner-boder-zoom">
                            <a href="1">
                                <img alt="ads" class="img-responsive" src="../css/Web/assets/100002/img/banner-botom1.jpg"></a>
                        </div>
                    </div>
                    <div class="col-sm-6 item-right">
                        <div class="banner-boder-zoom">
                            <a href="2">
                                <img alt="ads" class="img-responsive" src="../css/Web/assets/100002/img/banner-bottom2.jpg"></a>
                        </div>
                    </div>
                </div>
                <!--End-->
                <!--Begin-->
                <div class="services2">
                    <ul>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s1.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="1">Giá trị lớn</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Chúng tôi cung cấp giá cả cạnh tranh nhất trên từng sản phẩm, phù hợp với mọi túi tiền.
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s2.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="3">Giao hàng</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Giao hàng tận nơi, sản phẩm sẽ có mặt tại nhà bạn từ 3 đến 5 ngày làm việc.
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s3.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="5">Sản phẩm</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Sản phẩm chính hãng, bảo hành trên toàn quốc.
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s4.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="2">Hổ trợ</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Hổ trợ 24/7.<br>
                                        Phone: +84 908 77 00 95.<br>
                                        Emal: info@runtime.vn
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s5.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="4">Ứng dụng</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Cài đặt ứng dụng khi mua hàng sẽ được giảm giá đặc biệt từ 5 đến 10%.
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                            <div class="service-wapper">
                                <div class="row">
                                    <div class="col-sm-6 image">
                                        <div class="icon">
                                            <img src="../css/Web/assets/100002/img/icon-s6.jpg" alt="service">
                                        </div>
                                        <h3 class="title"><a href="6">Thanh toán</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Thanh toán khi nhận hàng.
                                                <br>
                                        Phương thức thanh toán đa dạng
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--End-->
            </div>
        </div>
    </div>
</div>
