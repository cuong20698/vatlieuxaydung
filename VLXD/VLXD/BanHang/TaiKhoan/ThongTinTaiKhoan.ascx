<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTaiKhoan.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.ThongTinTaiKhoan" %>

<div class="col-md-9">
    <div class="step-preview clearfix">
        <h2 class="title">Thông tin thanh toán</h2>
        <!-- ngIf: CustomerId>0 -->
        <div class="info-user ng-scope">
            <label>Người nhận:<asp:Label class="ng-binding" ID="lblNguoiNhan" runat="server" Text=""></asp:Label></label><br />
            <label>Điện thoại:<asp:Label class="ng-binding" ID="lblSDT" runat="server" Text=""></asp:Label></label><br />
            <label>Email:<asp:Label class="ng-binding" ID="lblEmail" runat="server" Text=""></asp:Label></label><br />
            <label>Địa chỉ:<asp:Label class="ng-binding" ID="lblDiaChi" runat="server" Text=""></asp:Label></label><br />
        </div>

    </div>
</div>
