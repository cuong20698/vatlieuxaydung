<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.ascx.cs" Inherits="VLXD.BanHang.SanPham.ChiTietSanPham" %>
<form runat="server">
<div id="product">
    <div class="main" style="background-color: white">
        <div class="container">
            <div class="row">
                <div class="col-md-9">

                    <div class="breadcrumb clearfix">
                        <ul>
                            <li class="home">
                                <a href="/index.aspx"><span itemprop="title">Trang chủ</span></a>
                            </li>
                            <li class="category17 icon-li">
                                <div class="link-site-more">
                                    <a title="" href="/TrangBanHang.aspx?modul=TrangChu&modul1=SP&modul2=DSSP">
                                        <span>Sản phẩm</span>
                                    </a>
                                </div>
                            </li>
                            <li class="productname icon-li">
                                <strong>
                                    <asp:Label ID="lblTenSP" runat="server" Text="Label"></asp:Label></strong>
                            </li>
                        </ul>
                    </div>
                    <script type="text/javascript">
                        $(".link-site-more").hover(function () { $(this).find(".s-c-n").show(); }, function () { $(this).find(".s-c-n").hide(); });
                    </script>

                    <link href="../css/Web/Scripts/smoothproducts/smoothproducts.css" rel="stylesheet" type="text/css">
                    <script src="../css/Web/Scripts/smoothproducts/smoothproducts.js" type="text/javascript"></script>
                    <script src="../css/Web/app/services/productServices.js"></script>
                    <script src="../css/Web/app/controllers/productController.js"></script>
                    <div class="product-detail clearfix relative ng-scope">
                        <span class="ng-scope ng-hide">
                            <div class="spinner" role="progressbar" style="position: absolute; width: 0px; z-index: 2000000000; left: 50%; top: 50%;">
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-0-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(0deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-1-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(30deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-2-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(60deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-3-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(90deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-4-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(120deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-5-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(150deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-6-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(180deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-7-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(210deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-8-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(240deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-9-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(270deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-10-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(300deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                                <div style="position: absolute; top: -1px; opacity: 0.25; animation: 1s linear 0s infinite normal none running opacity-100-25-11-12;">
                                    <div style="position: absolute; width: 6px; height: 3px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center; transform: rotate(330deg) translate(5px, 0px); border-radius: 1px;"></div>
                                </div>
                            </div>
                        </span>
                        <!--Begin-->
                        <div class="product-block clearfix">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-12 product-image clearfix">
                                    <div class="sp-loading" style="display: none;">
                                        <img src="../css/Web/Images/sp-loading.gif" alt=""><br>
                                        LOADING IMAGES</div>
                                    <div class="sp-wrap sp-non-touch" style="display: inline-block;">
                                        <!-- ngRepeat: item in ProductImages -->
                                        <!-- end ngRepeat: item in ProductImages -->
                                        <div class="sp-large">
                                            <a href="#"  class="ng-scope .sp-current-big">
                                                <asp:Label ID="lblHinh" runat="server" Text=""></asp:Label>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-12 clearfix">
                                    <h2 class="ng-binding">
                                        <asp:Label ID="lblTenSP1" runat="server" Text=""></asp:Label></h2>
                                    <div class="price ng-scope">
                                        <!-- ngIf: IsPromotion==true -->
                                        <div class="ng-scope">
                                            <asp:Label ID="lblGia" runat="server" Text=""></asp:Label>
                                        </div>
                                        <!-- end ngIf: IsPromotion==true -->
                                        <!-- ngIf: IsPromotion==false -->
                                        <span class="product-code ng-binding">Mã sản phẩm: <asp:Label ID="lblMa" runat="server" Text=""></asp:Label></span>
                                    </div>
                                    <div class="des ng-binding">
                                        <p><asp:Label ID="lblMota" runat="server" Text=""></asp:Label></p>
                                    </div>
                                    <div class="social">
                                        <script type="text/javascript" src="/scripts/addthis/addthis_widget.js#pubid=ra-5334d6387b03b532"></script>
                                    </div>
                                    <div class="quantity clearfix">
                                        <label>Số lượng</label>
                                        <div class="quantity-input">
                                            <input id="txtSL" runat="server" type="number" value="1" min="1" class="text ng-pristine ng-untouched ng-valid">
                                        </div>
                                    </div>
                                   <%-- <asp:Label ID="lblThemGH" runat="server" Text=""></asp:Label>--%>
                                    <div class='action-cart ng-scope'>
                                            <i class='glyphicon glyphicon-shopping-cart' style="font-size:20px; padding:5px;"></i> 
                                            <asp:Button class='btn btn-default' ID="btnThemGH" runat="server" Text="Thêm giỏ hàng" OnClick="btnThemGH_Click" />
                                      
                                    </div>          
                                    <!-- end ngIf: IsTrackingInventory==false||AllowPurchaseWhenSoldOut==true || (IsTrackingInventory&&AllowPurchaseWhenSoldOut==false&&Quantity>0) -->
                                    <!-- ngIf: IsTrackingInventory==true&&AllowPurchaseWhenSoldOut==false&&Quantity<=0 -->
                                    <div class="call">
                                        <p class="title">Để lại số điện thoại, chúng tôi sẽ tư vấn ngay sau từ 5 › 10 phút</p>
                                        <div class="input">
                                            <div class="input-group">
                                                <input class="form-control ng-pristine ng-untouched ng-valid" value="Nhập số điện thoại..." type="text">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-primary" type="button" ><i class="fa fa-phone"></i>Gọi lại cho tôi</button>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End-->
                        <div class="product-tabs">
                            <ul class="nav nav-tabs">
                                <!-- ngRepeat: item in ProductTabs -->
                                <li class="ng-scope active">
                                    <a data-toggle="tab" href="#" class="ng-binding">Chi tiết sản phẩm</a>
                                </li>
                                <!-- end ngRepeat: item in ProductTabs -->
                            </ul>
                            <div class="tab-content">
                                <!-- ngRepeat: item in ProductTabs -->
                                <div class="tab-pane fade in ng-scope active">
                                    <div class="ng-binding">
                                        <h3>Phí vận chuyển & thời gian nhận hàng</h3>

                                        <p>Phí vận chuyển toàn&nbsp;:&nbsp;</p>
                                        <p>+ Đối với khu vực nội thành TP Quy Nhơn :&nbsp;<span style="color: rgb(255, 0, 0)">Miễn phí vận chuyển</span></p>
                                        <p>+ Đối với khu vực ngoại thành TP Quy Nhơn: phí vận chuyển 100.000đ.</p>
                                        <p>+ Phí 200.000đ đối với các tỉnh thành lân cận (Quảng Ngãi, Phú Yên)</p>
                                        <p>- Thời gian giao sản phẩm :</p>
                                        <p>+ Đối với khu vực TPHCM : 1 - 2 ngày làm việc.</p>
                                        <p>+ Đối với các tỉnh thành khác : 3 - 7 ngày làm việc&nbsp;</p>
                                        <p>- Hotline &nbsp;:&nbsp;<strong><span style="color: rgb(255, 0, 0)">0988.40.99.77</span></strong>&nbsp;(Đặt hàng 9h30 - 17h)</p>
                                        <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: rgb(255, 0, 0)"><strong><span style="font-family: helvetica,arial,sans-serif">0938.679.247</span></strong></span>&nbsp;(Phản hồi 10h - 15h)</p>
                                    </div>
                                </div>
                                <!-- end ngRepeat: item in ProductTabs -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">

                    <div class="menu-product">
                        <h3>
                            <span>Sản phẩm
                            </span>
                        </h3>
                        <ul class="level_0">
                            <asp:Label ID="lblDMSP" runat="server" Text=""></asp:Label>
                        </ul>
                    </div>
                    <!--Begin-->
                    <div class="box-sale-policy ng-scope">
                        <h3><span>Chính sách bán hàng</span></h3>
                        <div class="sale-policy-block">
                            <ul>
                                <li>Giao hàng TOÀN QUỐC</li>
                                <li>Thanh toán khi nhận hàng</li>
                                <li>Đổi trả trong <span>15 ngày</span></li>
                                <li>Hoàn ngay tiền mặt</li>
                                <li>Chất lượng đảm bảo</li>
                                <li>Miễn phí vận chuyển:<span>Đơn hàng từ 3 món trở lên</span></li>
                            </ul>
                        </div>
                        <div class="buy-guide">
                            <h3>Hướng Dẫn Mua Hàng</h3>
                            <ul>
                                <li>Mua hàng trực tiếp tại website
                    <b class="ng-binding">http://www.runtime.vn</b>
                                </li>
                                <li>Gọi điện thoại 
                    <strong class="ng-binding">0356778899</strong>
                                    để mua hàng
                                </li>
                                <li>Mua tại Trung tâm CSKH:<br>
                                    <strong class="ng-binding">Bình Định</strong>
                                    <a href="/ban-do.html" rel="nofollow" target="_blank">Xem Bản Đồ</a>
                                </li>
                                <li>Mua sỉ/buôn xin gọi 
                    <strong class="ng-binding">0356778899</strong>
                                    để được hỗ trợ.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--End-->
                </div>
            </div>
        </div>
    </div>
</div>
</form>