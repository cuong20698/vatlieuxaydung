﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GioHang.ascx.cs" Inherits="VLXD.BanHang.GioHang.GioHang" %>
<div id="cart">
    <div class="main" style="background-color:white">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="breadcrumb clearfix">
                        <ul>
                            <li itemtype="http://data-vocabulary.org/Breadcrumb" itemscope="" class="home">
                                <a title="Đến trang chủ" href="/index.aspx" itemprop="url">
                                    <asp:Label ID="lblH1" runat="server" Text=""></asp:Label>
                                </a>
                            </li>
                            <li class="icon-li">
                                <strong><asp:Label ID="lblH2" runat="server" Text=""></asp:Label></strong>
                            </li>
                        </ul>
                    </div>
                    <div class="cart-content ng-scope"">
                        <h1 class="page-heading"><span>Giỏ hàng của tôi</span></h1>
                        <div class="steps clearfix">
                            <ul class="clearfix">
                                <li class="cart active col-md-2 col-xs-12 col-sm-4 col-md-offset-3 col-sm-offset-0 col-xs-offset-0"><span><i class="glyphicon glyphicon-shopping-cart"></i></span><span>Giỏ hàng của tôi</span><span class="step-number"><a>1</a></span></li>
                                <li class="payment col-md-2 col-xs-12 col-sm-4"><span><i class="glyphicon glyphicon-usd"></i></span><span>Thanh toán</span><span class="step-number"><a>2</a></span></li>
                                <li class="finish col-md-2 col-xs-12 col-sm-4"><span><i class="glyphicon glyphicon-ok"></i></span><span>Hoàn tất</span><span class="step-number"><a>3</a></span></li>
                            </ul>
                        </div>
                        <div class="cart-block-info">
                            <div class="cart-info table-responsive">
                                <table class="table product-list">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>Tên sản phẩm</th>
                                            <th>Giá</th>
                                            <th>Số lượng</th>
                                            <th>Thành tiền</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <!-- ngRepeat: item in OrderDetails -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="clearfix text-right">
                                <span><b>Tổng thanh toán:</b></span>
                                <span class="pay-price ng-binding">0đ
                                </span>
                            </div>
                            <div class="text-right">
                                <a class="comeback" href="/index.aspx">Tiếp tục mua hàng</a>
                                <a class="button-default" id="checkout" href="/thanh-toan.html">Tiến hành thanh toán</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
