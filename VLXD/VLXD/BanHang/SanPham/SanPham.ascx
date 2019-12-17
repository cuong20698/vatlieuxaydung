<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SanPham.ascx.cs" Inherits="VLXD.BanHang.SanPham.SanPham" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div class="collection">
    <div class="main" style="background-color: white">
        <div class="container">
            <div class="row">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
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
                    <div id="left_column">
                        <div class="block left-module">
                            <p class="title_block">Sản phẩm Hot</p>
                            <div class="block_content">
                                <ul class="products-block best-sell">
                                    <%--<li class="clearfix">
                                        <div class="products-block-left">
                                            <a href="#">
                                                <img class="img-responsive" alt="Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung" src="../css/Web/Uploads/shop2198/images/product/p35_large.jpg"></a>
                                        </div>
                                        <div class="products-block-right">
                                            <p class="product-name">
                                                <a href="#">Đầm body cá tình với nhiều màu sắc hiện đại, trẻ trung</a>
                                            </p>
                                            <p class="product-price">
                                                <span>620.000₫</span>
                                                <span class="price old-price">400.000₫</span>
                                            </p>
                                            <p class="product-star">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </p>
                                        </div>
                                    </li>--%>
                                    <asp:Label ID="lblSPHot" runat="server" Text=""></asp:Label>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
