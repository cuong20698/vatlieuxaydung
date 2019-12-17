<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachDH.ascx.cs" Inherits="VLXD.Admin.KhachHang.DanhSachDH" %>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Danh sách đơn hàng
    </div>
    <div class="card-body">
        <table class="table table-bordered" id="dataTable" style="width: 100%;">
            <tr>
                <th>ID</th>
                <th>Mã KH</th>
                <th>Thành tiền</th>
                <th>Trạng thái</th>
                <th>Ngày lập</th>
                <th>Ngày giao</th>
                <th></th>
            </tr>
            <asp:Label ID="lblTr" runat="server" Text=""></asp:Label>
        </table>
    </div>
</div>
<script>
    function Giao() {
        return confirm("Xác nhận giao đơn hàng!");;
    }
</script>