<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChiTietTaiKhoan.ascx.cs" Inherits="VLXD.Admin.TaiKhoan.ChiTietTaiKhoan" %>

<style>

    .Input {
        display: block;
        width: 200px;
        height: calc(1.5em + 0.75rem + 2px);
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        border: 1px solid #ced4da;
        border-radius: 0.25rem;
        outline:none;
        float:left;
    }

    .TieuDe {
        text-align: center;
        font-size: 20px;
        font-weight: bold;
        color: #140e0e;
    }

    .btn-form {
        display: block;
        border: 1px solid #ced4da;
        font-weight: 400;
        border-radius: 0.25rem;
        font-size: 1rem;
        outline:none;
        background-color: #006d6d;
        color:white;
        margin-left:70px;
    }

        .btn-form:hover {
            background-color:#014242;
        }
</style>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
         Tài khoản
    </div>
    <div class="card-body">
        <div class="TieuDe">Thông tin tài khoản</div>
        <table style="margin:auto; line-height:50px;">
            <tr >
                <td >Họ và tên:</td>
                <td>
                    <asp:TextBox ID="txtHoTen" runat="server" class="Input" placeholder="Tên tài khoản"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td >Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" class="Input" placeholder="Email"></asp:TextBox></td>


            </tr>
            <tr >
                <td >Địa chỉ:</td>
                <td>
                    <asp:TextBox ID="txtDiaChi" runat="server" class="Input" placeholder="Địa chỉ"></asp:TextBox>
                </td>
            </tr>
            <tr >
                <td >Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server" class="Input" placeholder="Số điện thoại"></asp:TextBox></td>

            </tr>
            <tr >
                <td colspan="2" >
                    <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật thông tin" class="btn-form" OnClick="btnCapNhat_Click" />

                </td>
                
            </tr>
        </table>
    </div>
</div>

