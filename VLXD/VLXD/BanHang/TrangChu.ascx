<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.ascx.cs" Inherits="VLXD.BanHang.TrangChu" %>
<style>
    #vertical-menu-content {
        display: block;
    }
</style>
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
                                    <ul id="contenhomeslider" style="width: 515%; position: relative; transition-duration: 0s; transform: translate3d(-2700px, 0px, 0px);">
                                        <li style="float: left; list-style: none; position: relative; width: 900px;" class="bx-clone">
                                            <a href="#">
                                                <img class="img-responsive" alt="03" src="../css/Web/Uploads/shop2198/images/slider/banner_silder_4.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="01" src="../css/Web/Uploads/shop2198/images/slider/banner_silder_2.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="02" src="../css/Web/Uploads/shop2198/images/slider/banner_silder_3.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;">
                                            <a href="#">
                                                <img class="img-responsive" alt="03" src="../css/Web/Uploads/shop2198/images/slider/banner_silder_4.jpg">
                                            </a>
                                        </li>
                                        <li style="float: left; list-style: none; position: relative; width: 900px;" class="bx-clone">
                                            <a href="#">
                                                <img class="img-responsive" alt="01" src="../css/Web/Uploads/shop2198/images/slider/banner_silder_2.jpg">
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="bx-controls bx-has-pager bx-has-controls-direction">
                                    <div class="bx-pager bx-default-pager">
                                        <div class="bx-pager-item"><a href="#" data-slide-index="0" class="bx-pager-link">1</a></div>
                                        <div class="bx-pager-item"><a href="#" data-slide-index="1" class="bx-pager-link">2</a></div>
                                        <div class="bx-pager-item"><a href="#" data-slide-index="2" class="bx-pager-link active">3</a></div>
                                    </div>
                                    <div class="bx-controls-direction"><a class="bx-prev" href="#"><i class="fa fa-angle-left"></i></a><a class="bx-next" href=""><i class="fa fa-angle-right"></i></a></div>
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

                <script src="/app/services/productServices.js"></script>
                <script src="/app/controllers/productController.js"></script>
                <!--Begin-->
                <div class="product-content ng-scope" ng-controller="productController" ng-init="initProductPromotionSlideController('ProductPromotionSlides')">
                    <h2 class="page-heading">
                        <span class="page-heading-title">Sản phẩm khuyến mãi
                        </span>
                    </h2>
                    <div class="latest-deals-product">
                        <ul class="product-list owl-carousel owl-theme owl-loaded" data-dots="false" data-loop="true" data-nav="true" data-margin="10" data-autoplaytimeout="1000" data-autoplayhoverpause="true" data-responsive="{&quot;0&quot;:{&quot;items&quot;:1},&quot;600&quot;:{&quot;items&quot;:3},&quot;1000&quot;:{&quot;items&quot;:5}}">
                            <div class="owl-stage-outer">
                                <div class="owl-stage" style="transform: translate3d(-1180px, 0px, 0px); transition: all 0s ease 0s; width: 5192px;">
                                    <div class="owl-item cloned" style="width: 226px; margin-right: 10px;">
                                        <li ng-repeat="item in ProductPromotionSlides" class="ng-scope">
                                            <div class="left-block">
                                                <a href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html">
                                                    <img class="img-responsive" src="../css/Web/Uploads/shop2198/images/product/p62_large.jpg" alt="Nồi Cơm Điện PANASONIC SR-GA721WRA" title="Nồi Cơm Điện PANASONIC SR-GA721WRA" src="../css/Web/Uploads/shop2198/images/product/p62_large.jpg"></a>
                                                <div class="quick-view">
                                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                                    <a title="Xem chi tiết" class="compare" href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html"></a>
                                                    <a href="javascript:void(0);" class="qv-e-button btn-quickview-1 search" title="Xem nhanh" data-handle="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html"></a>
                                                </div>
                                                <div class="add-to-cart">
                                                    <a class="add-to-car" href="javascript:void(0);" ng-click="AddToCard(item)">Thêm vào giỏ</a>
                                                </div>
                                                <div class="price-percent-reduction2 ng-binding">
                                                    Sale
                            <br>
                                                    -19<strong>%</strong>
                                                </div>
                                            </div>
                                            <div class="right-block">
                                                <h5 class="product-name"><a href="/san-pham/noi-com-dien-panasonic-sr-ga721wra.html" class="ng-binding">Nồi Cơm Điện PANASONIC SR-GA721WRA</a></h5>
                                                <!-- ngIf: ConfigProduct.ShowPrice==true -->
                                                <div class="content_price ng-scope" ng-if="ConfigProduct.ShowPrice==true">
                                                    <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <span class="price product-price ng-binding ng-scope" ng-if="item.IsPromotion==true&amp;&amp;item.Price>0">1,250,000&nbsp;₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <span class="price old-price ng-binding ng-scope" ng-if="item.IsPromotion==true&amp;&amp;item.Price>0">1,545,000&nbsp;₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <!-- ngIf: item.IsPromotion==false&&item.Price>0 -->
                                                    <!-- ngIf: item.Price<=0 -->
                                                </div>
                                                <!-- end ngIf: ConfigProduct.ShowPrice==true -->
                                                <!-- ngIf: ConfigProduct.ShowPrice==false -->
                                            </div>
                                        </li>
                                    </div>
                                    <div class="owl-item cloned" style="width: 226px; margin-right: 10px;">
                                        <li ng-repeat="item in ProductPromotionSlides" class="ng-scope">
                                            <div class="left-block">
                                                <a href="/san-pham/ghe-kieu-cho-nhan-vien-van-phong.html">
                                                    <img class="img-responsive" src="../css/Web/Uploads/shop2198/images/product/p77_large.jpg" alt="Ghê kiểu cho nhân viên văn phòng" title="Ghê kiểu cho nhân viên văn phòng" src="../css/Web/Uploads/shop2198/images/product/p77_large.jpg"></a>
                                                <div class="quick-view">
                                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                                    <a title="Xem chi tiết" class="compare" href="/san-pham/ghe-kieu-cho-nhan-vien-van-phong.html"></a>
                                                    <a href="javascript:void(0);" class="qv-e-button btn-quickview-1 search" title="Xem nhanh" data-handle="/san-pham/ghe-kieu-cho-nhan-vien-van-phong.html"></a>
                                                </div>
                                                <div class="add-to-cart">
                                                    <a class="add-to-car" href="javascript:void(0);" ng-click="AddToCard(item)">Thêm vào giỏ</a>
                                                </div>
                                                <div class="price-percent-reduction2 ng-binding">
                                                    Sale
                            <br>
                                                    -8<strong>%</strong>
                                                </div>
                                            </div>
                                            <div class="right-block">
                                                <h5 class="product-name"><a href="/san-pham/ghe-kieu-cho-nhan-vien-van-phong.html" class="ng-binding">Ghê kiểu cho nhân viên văn phòng</a></h5>
                                                <!-- ngIf: ConfigProduct.ShowPrice==true -->
                                                <div class="content_price ng-scope" ng-if="ConfigProduct.ShowPrice==true">
                                                    <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <span class="price product-price ng-binding ng-scope" ng-if="item.IsPromotion==true&amp;&amp;item.Price>0">1,190,000 ₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <!-- ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <span class="price old-price ng-binding ng-scope" ng-if="item.IsPromotion==true&amp;&amp;item.Price>0">1,300,000 ₫</span><!-- end ngIf: item.IsPromotion==true&&item.Price>0 -->
                                                    <!-- ngIf: item.IsPromotion==false&&item.Price>0 -->
                                                    <!-- ngIf: item.Price<=0 -->
                                                </div>
                                                <!-- end ngIf: ConfigProduct.ShowPrice==true -->
                                                <!-- ngIf: ConfigProduct.ShowPrice==false -->
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
                <!--End-->
                <script type="text/javascript">
                    window.ProductPromotionSlides = [{
                        "Id": 167200, "ShopId": 37720, "ProductGroupId": 193702,
                        "ProductGroupCode": null, "ProductGroupName": null, "ProductTypeId": null,
                        "ProductTypeName": null, "UnitId": null, "UnitName": null,
                        "Code": "dam-body-ca-tinh-voi-nhieu-mau-sac-hien-dai-tre-trung", "Serial": "",
                        "Name": "Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung",
                        "CreatedDate": "2017-08-12T15:32:00", "UpdatedDate": "2017-08-12T15:32:00"
                        , "DealDate": "0001-01-01T00:00:00", "SKU": "", "Barcode": "",
                        "Image": "../css/Web/Uploads/shop2198/images/product/p35_large.jpg",
                        "ImageThumbnai": "../css/Web/Uploads/shop2198/images/product/p35_large.jpg",
                        "Summary": "<p>Tên Sản PhẩmĐầm noel đuôi cáChất LiệuCát HànMàu SắcĐỏSize+ size M: Chiều dài đầm: 85cm, Ngực 80-84cm, Eo 68-72cm, Mông 88-92cm+ size L: Chiều dài đầm: 86cm, Ngực 84-88cm, Eo 72-76cm, Mông 92-96cm+ ...</p>\n",
                        "Content": null, "MetaTitle": "", "MetaKeyword": "", "MetaDescription": "", "Price": 620000.0000,
                        "StrPrice": "620.000", "PriceOld": 0.0000, "StrPriceOld": "0", "PriceDiscount": 400000.0000,
                        "StrDiscountPrice": "400.000", "PricePriority": 0.0000, "StrPricePriority": "0",
                        "PriceHasVAT": false, "Percent": 35.0, "StrPercent": "35", "IsTrackingInventory": false,
                        "Quantity": 0, "VariantQuantity": 0, "VariantCount": 0, "TrackingInventoryText": "---",
                        "Weight": 0, "IsShipping": true, "AllowPurchaseWhenSoldOut": false, "IsVariant": false,
                        "IsBest": true, "IsHot": true, "IsNew": true, "IsPromotion": true, "PromotionContent": null,
                        "Warranty": null, "AllowOrder": false, "ShowHome": false, "CountView": 0, "Index": 1,
                        "Inactive": false, "Timestamp": "AAAAAABJLEk=", "ModelShared_ProductImage": null,
                        "ModelShared_ProductTab": null, "ModelShared_ProductTag": null,
                        "ModelShared_ProductOption": null, "ModelShared_ProductVariant": null,
                        "ModelShared_ProductOtherGroup": null
                    }]
                </script>
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
                                <img alt="ads" class="img-responsive" src="/assets/100002/img/banner-botom1.jpg?v=42"></a>
                        </div>
                    </div>
                    <div class="col-sm-6 item-right">
                        <div class="banner-boder-zoom">
                            <a href="2">
                                <img alt="ads" class="img-responsive" src="/assets/100002/img/banner-bottom2.jpg?v=42"></a>
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
                                            <img src="/assets/100002/img/icon-s1.png?v=42" alt="service">
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
                                            <img src="/assets/100002/img/icon-s2.png?v=42" alt="service">
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
                                            <img src="/assets/100002/img/icon-s3.png?v=42" alt="service">
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
                                            <img src="/assets/100002/img/icon-s4.png?v=42" alt="service">
                                        </div>
                                        <h3 class="title"><a href="2">Hổ trợ</a></h3>
                                    </div>
                                    <div class="col-sm-6 text">
                                        Hổ trợ 24/7.
                                                <br>
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
                                            <img src="/assets/100002/img/icon-s5.png?v=42" alt="service">
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
                                            <img src="/assets/100002/img/icon-s6.png?v=42" alt="service">
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
