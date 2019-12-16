<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachDH.ascx.cs" Inherits="VLXD.BanHang.GioHang.DanhSachDH" %>
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
                <asp:Label ID="lblDH" runat="server" Text=""></asp:Label>
            </tbody>
        </table>
    </div>
    <div class="clearfix text-right">
        <span><b>Tổng thanh toán:</b></span>
        <span class="pay-price ng-binding">
            <asp:Label ID="lblTongTT" runat="server" Text=""></asp:Label>

        </span>
    </div>
    <div class="text-right">
        <a class="comeback" href="/index.aspx">Tiếp tục mua hàng</a>
        <a class="button-default" id="checkout" href="/thanh-toan.html">Tiến hành thanh toán</a>
    </div>
</div>
