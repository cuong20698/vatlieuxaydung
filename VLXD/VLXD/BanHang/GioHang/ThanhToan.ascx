<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThanhToan.ascx.cs" Inherits="VLXD.BanHang.GioHang.ThanhToan" %>
<div id="cart">
    <div class="main" style="background-color: white">
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
                                <strong>
                                    <asp:Label ID="lblH2" runat="server" Text=""></asp:Label></strong>
                            </li>
                        </ul>
                    </div>
                    <div class="payment-content ng-scope">
                        <h1 class="page-heading"><span>Thanh toán</span></h1>
                        <div class="steps clearfix">
                            <ul class="clearfix">
                                <li class="cart active col-md-2 col-xs-12 col-sm-4 col-md-offset-3 col-sm-offset-0 col-xs-offset-0"><span><i class="glyphicon glyphicon-shopping-cart"></i></span><span>Giỏ hàng của tôi</span><span class="step-number"><a>1</a></span></li>
                                <li class="payment active col-md-2 col-xs-12 col-sm-4"><span><i class="glyphicon glyphicon-usd"></i></span><span>Thanh toán</span><span class="step-number"><a>2</a></span></li>
                                <li class="finish col-md-2 col-xs-12 col-sm-4"><span><i class="glyphicon glyphicon-ok"></i></span><span>Hoàn tất</span><span class="step-number"><a>3</a></span></li>
                            </ul>
                        </div>
                        <form class="payment-block clearfix ng-pristine ng-invalid ng-invalid-required ng-valid-email" runat="server">
                            <div class="col-md-4 col-sm-12 col-xs-12 payment-step step2">
                                <h4>1. Địa chỉ thanh toán và giao hàng</h4>
                                <div class="step-preview clearfix">
                                    <h2 class="title">Thông tin thanh toán</h2>
                                    <!-- ngIf: CustomerId>0 -->
                                    <div class="info-user ng-scope">
                                        <label>Người nhận:<asp:Label class="ng-binding" ID="lblNguoiNhan" runat="server" Text=""></asp:Label></label>
                                        <label>Điện thoại:<asp:Label class="ng-binding" ID="lblSDT" runat="server" Text=""></asp:Label></label>
                                        <label>Email:<asp:Label class="ng-binding" ID="lblEmail" runat="server" Text=""></asp:Label></label>
                                        <label>Địa chỉ:<asp:Label class="ng-binding" ID="lblDiaChi" runat="server" Text=""></asp:Label></label>
                                    </div>
                                 
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-12 col-xs-12 payment-step step3">
                                <h4>2. Thanh toán và vận chuyển</h4>
                                <div class="step-preview clearfix">
                                    <h2 class="title">Vận chuyển</h2>
                                    <div class="form-group ">
                                        <asp:DropDownList class="form-control ng-pristine ng-untouched ng-valid" ID="ddlVanChuyen" runat="server">
                                            <asp:ListItem Value="0" Text="Giao hàng thông thường"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Chuyển phát nhanh" Selected="True"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <h2 class="title">Thanh toán</h2>
                                    <asp:DropDownList class="form-control ng-pristine ng-untouched ng-valid" ID="ddlTT" runat="server">
                                            <asp:ListItem Value="0" Text="Thanh toán thông thường"  Selected="True"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="Thanh toán online"></asp:ListItem>
                                        </asp:DropDownList>
                                    <!-- ngRepeat: item in PaymentMethods -->
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-12 col-xs-12 payment-step step1">
                                <h4>3. Thông tin đơn hàng</h4>
                                <div class="step-preview">
                                    <div class="cart-info">
                                        <asp:Label ID="lblSP" runat="server" Text=""></asp:Label>
                                        <div class="total-price">
                                            Thành tiền 
                                            <label class="ng-binding">
                                                <asp:Label ID="lblThanhTien" runat="server" Text=""></asp:Label> ₫</label>
                                        </div>
                                        <div class="shiping-price">
                                            Phí vận chuyển 
                                            <label class="ng-binding">
                                                <asp:Label ID="lblPhiVanChuyen" runat="server" Text=""></asp:Label> ₫</label>
                                        </div>
                                        <div class="total-payment">
                                            Thanh toán <span class="ng-binding">
                                                <asp:Label ID="lblThanhToan" runat="server" Text=""></asp:Label></span>
                                        </div>
                                        <div class="button-submit">
                                            <asp:Button class="btn btn-primary" ID="btnDH" runat="server" Text="Đặt hàng" OnClick="btnDH_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
