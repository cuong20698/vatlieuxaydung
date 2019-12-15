<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSanPhamLoai.ascx.cs" Inherits="VLXD.BanHang.SanPham.DanhSachSanPhamLoai" %>
<div class="col-md-9">
    <div class="breadcrumb clearfix">
        <ul>
            <li class="home" itemscope="">
                <a title="Đến trang chủ" href="/index.aspx" itemprop="url"><span itemprop="title">Trang chủ</span></a>
            </li>
            <li class="home" itemscope="">
                <a title="Đến trang chủ" href="/TrangBanHang.aspx?modul=TrangChu&modul1=SP&modul2=DSSP" itemprop="url"><span itemprop="title">Sản phẩm</span></a>
            </li>
            <li class="icon-li">
                <strong>
                    <asp:Label ID="lblTenLoai1" runat="server" Text=""></asp:Label>
                </strong> 

            </li>
        </ul>
    </div>
    <script type="text/javascript">
        $(".link-site-more").hover(function () {
            $(this).find(".s-c-n").show();
        }, function () {
            $(this).find(".s-c-n").hide();
        });
    </script>
    <div class="view-product-list">
        <h2 class="page-heading">
            <span class="page-heading-title"><asp:Label ID="lblTenLoai2" runat="server" Text=""></asp:Label></span>
        </h2>
        <ul class="display-product-option">
            <li class="view-as-grid selected">
                <span>grid</span>
            </li>
            <li class="view-as-list">
                <span><i class="fas fa-list"></i>list</span>
            </li>
        </ul>
        <div class="browse-tags">
            <span>Sắp xếp theo:</span>
            <span class="custom-dropdown custom-dropdown--white">
                <select id="lblimit" name="lblimit" class="sort-by custom-dropdown__select custom-dropdown__select--white" onchange="window.location.href = this.options[this.selectedIndex].value">
                    <option value="?limit=10">10</option>
                    <option selected="selected" value="?limit=12">12</option>
                    <option value="?limit=20">20</option>
                    <option value="?limit=50">50</option>
                    <option value="?limit=100">100</option>
                    <option value="?limit=250">250</option>
                    <option value="?limit=500">500</option>
                </select>

            </span>
        </div>
        <ul class="row product-list grid filter">
            <%--<li class="col-md-3 col-sm-6 col-xs-12">
                                <div class="product-container product-resize fixheight" style="height: 298px;">
                                    <div class="left-block image-resize" style="height: 221px;">
                                        <a href="/san-pham/dam-body-ca-tinh-voi-nhieu-mau-sac-hien-dai-tre-trung.html">
                                            <img class="img-responsive" alt="product" src="../css/Web/Uploads/shop2198/images/product/binhnuocnong.jpg"></a>
                                        <div class="quick-view">
                                            <a title="Add to my wishlist" class="heart" href="#"></a>
                                            <a title="Xem chi tiết" class="compare" href="#"></a>
                                            <a class="qv-e-button btn-quickview-1 search" title="Xem nhanh" href="#"></a>
                                        </div>
                                        <div class="add-to-cart">
                                            <a class="add-to-car" href="#">Thêm vào giỏ</a>
                                        </div>
                                    </div>
                                    <div class="right-block">
                                        <h5 class="product-name"><a href="#">Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung</a></h5>
                                        <div class="content_price">
                                            <span class="price product-price">400.000₫</span>
                                            <span class="price old-price">620.000₫</span>
                                        </div>
                                    </div>
                                </div>
                            </li>--%>
            <asp:Label ID="lblDSSP" runat="server" Text=""></asp:Label>
        </ul>
        <div class="col-md-12 content_sortPagiBar pagi">
            <div id="pagination" class="clearfix">
                <ul class="pagination">
                    <li class="pagination_previous">
                        <a href="?page=1" title="Next »"><i class="fa fa-chevron-left"></i></a>
                    </li>
                    <li class="active"><span>1</span></li>
                    <li>
                        <a href="?page=2" title="">2</a>
                    </li>
                    <li>
                        <a href="?page=3" title="">3</a>
                    </li>
                    <li class="pagination_next"><a href="?page=3" title="Next »"><i class="fa fa-chevron-right"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
