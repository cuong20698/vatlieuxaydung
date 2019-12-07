<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachSanPham.ascx.cs" Inherits="VLXD.Admin.SanPham.DanhSachSanPham" %>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Danh sách tài khoản
    </div>
    <div class="card-body">
        <table class="table table-bordered" id="dataTable" style="width: 100%;">
            <tr>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Hình ảnh</th>
                <th>Sản phẩm nổi bật</th>
                <th>Mô tả</th>
                <th>Loại sản phẩm</th>
                <th></th>
            </tr>
            <asp:Label ID="lblTr" runat="server" Text=""></asp:Label>
        </table>
    </div>
</div>