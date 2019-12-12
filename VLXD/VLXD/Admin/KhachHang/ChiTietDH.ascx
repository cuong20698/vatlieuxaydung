<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietDH.ascx.cs" Inherits="VLXD.Admin.KhachHang.ChiTietDH" %>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Chi tiết đơn hàng
    </div>
    <div class="card-body">
        <table class="table table-bordered" id="dataTable" style="width: 100%;">
            <tr>
                <th>ID</th>
                <th>Mã SP</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
            </tr>
            <asp:Label ID="lblTr" runat="server" Text=""></asp:Label>
        </table>
    </div>
</div>