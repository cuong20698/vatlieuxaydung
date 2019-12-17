<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.DangNhap" %>
<div class="login-content clearfix ng-scope">
    <h1 class="page-heading"><span>Đăng nhập hệ thống</span></h1>
    <!-- ngIf: IsError -->
    <asp:Label ID="lblTB" runat="server" Text=""></asp:Label>
    <!-- ngIf: InValid -->
    <div class="col-md-6 col-md-offset-3 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
        <form class="form-horizontal ng-pristine ng-valid-email ng-invalid ng-invalid-required" runat="server">
            <div class="form-group">
                <label for="Email" class="col-sm-4 control-label">Tên đăng nhập</label>
                <div class="col-sm-8">
                    <input type="text" id="txtTK" runat="server" class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required" required>
                </div>
            </div>
            <div class="form-group">
                <label for="Password" class="col-sm-4 control-label">Mật khẩu</label>
                <div class="col-sm-8">
                    <input type="password" id="txtMK" runat="server" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" required>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8" style="margin-left: 145px">
                    <asp:Button class="btn btn-primary" runat="server" Text="Đăng nhập" ID="btnDN" OnClick="btnDN_Click1" />
                    <a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=QuenMK">Quên mật khẩu?</a>
                </div>
            </div>
        </form>
    </div>
</div>
