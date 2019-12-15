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
                <div class="product-content">
                    <h2 class="page-heading">
                        <span class="page-heading-title">Sản phẩm khuyến mãi</span>
                    </h2>
                    <div class="latest-deals-product">
                        <ul class="product-list">
                            <li class="listKM">
                                <div class="owl-item active">
                                        <div class="left-block">
                                            <a href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html">
                                                <img class="img-responsive" src="../css/Web/Uploads/shop2198/images/product/p62_large.jpg"></a>
                                            <div class="quick-view">
                                                <a title="Add to my wishlist" class="heart" href="#"></a>
                                                <a title="Xem chi tiết" class="compare" href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html"></a>
                                                <a href="javascript:void(0);" class="qv-e-button btn-quickview-1 search" title="Xem nhanh" data-handle="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html"></a>
                                            </div>
                                            <div class="add-to-cart">
                                                <a class="add-to-car" href="javascript:void(0);"">
                                                    Thêm vào giỏ</a>
                                            </div>
                                            <div class="price-percent-reduction2 ng-binding">
                                                Sale<br>
                                                -19<strong>%</strong>
                                            </div>
                                        </div>
                                        <div class="right-block">
                                            <h5 class="product-name"><a href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html" class="ng-binding">Nồi Cơm Điện PANASONIC SR-GA721WRA</a></h5>
                                            <!-- ngIf: ConfigProduct.ShowPrice==true -->
                                            <div class="content_price ng-scope">
                                                <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                <span class="price product-price ng-binding ng-scope">1,250,000&nbsp;₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                <span class="price old-price ng-binding ng-scope">1,545,000&nbsp;₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                <!-- ngIf: item.IsPromotion==false&&item.Price>0 -->
                                                <!-- ngIf: item.Price<=0 -->
                                            </div>
                                            <!-- end ngIf: ConfigProduct.ShowPrice==true -->
                                            <!-- ngIf: ConfigProduct.ShowPrice==false -->
                                        </div>
                                 
                                </div>
                            </li>
  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="partner">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <!-- blog list -->
                <div class="blog-list news-home">
                    <h2 class="page-heading">
                        <span class="page-heading-title">Tin tức nổi bật</span>
                    </h2>
                    <div class="blog-list-wapper">
                        <ul class="owl-carousel owl-theme owl-loaded" data-dots="false" data-loop="true" data-nav="true" data-margin="30" data-autoplaytimeout="1000" data-autoplayhoverpause="true" data-responsive="{&quot;0&quot;:{&quot;items&quot;:1},&quot;600&quot;:{&quot;items&quot;:3},&quot;1000&quot;:{&quot;items&quot;:4}}">
                            <div class="owl-stage-outer">
                                <div class="owl-stage" style="transform: translate3d(-1200px, 0px, 0px); transition: all 0s ease 0s; width: 3600px;">
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog4.jpg" alt="Diện váy xẻ cao quyến rũ như Miranda Kerr"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Diện váy xẻ cao quyến rũ như Miranda Kerr</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog2.jpg" alt="Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog1.jpg" alt="20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog3.jpg" alt="Phối quần jeans cạp cao theo phong cách thập niên 1970"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Phối quần jeans cạp cao theo phong cách thập niên 1970</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item active" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog4.jpg" alt="Diện váy xẻ cao quyến rũ như Miranda Kerr"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Diện váy xẻ cao quyến rũ như Miranda Kerr</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item active" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog2.jpg" alt="Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item active" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog1.jpg" alt="20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item active" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog3.jpg" alt="Phối quần jeans cạp cao theo phong cách thập niên 1970"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Phối quần jeans cạp cao theo phong cách thập niên 1970</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog4.jpg" alt="Diện váy xẻ cao quyến rũ như Miranda Kerr"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Diện váy xẻ cao quyến rũ như Miranda Kerr</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/dien-vay-xe-cao-quyen-ru-nhu-miranda-kerr-10103.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog2.jpg" alt="Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Những chiếc vòng cổ tạo đẳng cấp cho sao ngoại trên thảm đỏ</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/nhung-chiec-vong-co-tao-dang-cap-cho-sao-ngoai-tren-tham-do-10102.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog1.jpg" alt="20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">20 bộ váy đẹp của các diễn viên từng đoạt giải Oscar</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/20-bo-vay-dep-cua-cac-dien-vien-tung-doat-giai-oscar-10101.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 270px; margin-right: 30px;">
                                        <li>
                                            <div class="post-thumb image-hover2">
                                                <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">
                                                    <img src="../css/Web/Uploads/shop2198/images/news/blog3.jpg" alt="Phối quần jeans cạp cao theo phong cách thập niên 1970"></a>
                                            </div>
                                            <div class="post-desc">
                                                <h5 class="post-title">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Phối quần jeans cạp cao theo phong cách thập niên 1970</a>
                                                </h5>
                                                <div class="post-meta">
                                                    <span class="date">12/08/2017
                                                    </span>
                                                    <span class="comment">0<span> Bình luận</span></span>
                                                </div>
                                                <div class="readmore">
                                                    <a href="/tin-tuc/phoi-quan-jeans-cap-cao-theo-phong-cach-thap-nien-1970-10100.html">Xem thêm</a>
                                                </div>
                                            </div>
                                        </li>
                                    </div>
                                </div>
                            </div>
                            <div class="owl-controls">
                                <div class="owl-nav">
                                    <div class="owl-prev" style=""><i class="fa fa-angle-left"></i></div>
                                    <div class="owl-next" style=""><i class="fa fa-angle-right"></i></div>
                                </div>
                                <div class="owl-dots" style="display: none;"></div>
                            </div>
                        </ul>
                    </div>
                </div>
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
