<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaikhoankhongHD.ascx.cs" Inherits="VLXD.Admin.TaiKhoan.TaikhoankhongHD" %>
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Tài khoản không hoạt động
    </div>
    <div class="card-body">
        <table class="table table-bordered" id="dataTable" style="width:100%; cellspacing:0;" >
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Số điện thoại</th>
                <th>Chức vụ</th>
                <th></th>
            </tr>
            <asp:Label ID="lblTr" runat="server" Text=""></asp:Label>
        </table>
    </div>
</div>
<script>
    function Xoa() {
        return confirm("Bạn có chắc chắn muốn xóa tài khoản này?");;
    }
</script>