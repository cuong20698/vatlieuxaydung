<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.ascx.cs" Inherits="VLXD.Admin.TaiKhoan.DoiMatKhau" %>
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
        outline: none;
        float: left;
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
        width:100px;
        border-radius: 0.25rem;
        font-size: 1rem;
        outline: none;
        background-color: #006d6d;
        color: white;
        margin-left: 100px;
    }

        .btn-form:hover {
            background-color: #014242;
        }
</style>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Tài khoản
    </div>
    <div class="card-body">
        <div class="TieuDe">Đổi mật khẩu</div>
        <table style="margin: auto; line-height: 50px;">
            <tr>
                <td>Mật khẩu cũ:</td>
                <td>
                    <asp:TextBox ID="txtMatKhauCu" runat="server" class="Input" placeholder="Mật khẩu cũ" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="" ForeColor="Red" SetFocusOnError="True" Text="*" ControlToValidate="txtMatKhauCu"></asp:RequiredFieldValidator></td>

            </tr>
            <tr>
                <td>Mật khẩu mới:</td>
                <td>
                    <asp:TextBox ID="txtMatKhauMoi" runat="server" class="Input" placeholder="Nật khẩu mới" TextMode="Password"></asp:TextBox>

                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="" ForeColor="Red" SetFocusOnError="True" Text="*" ControlToValidate="txtMatKhauMoi"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Nhập lại mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMatKhauMoi2" runat="server" class="Input" placeholder="Nhập lại mật khẩu mới" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ForeColor="Red" SetFocusOnError="True" Text="*" ControlToValidate="txtMatKhauMoi2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnXacNhan" runat="server" Text="Xác nhận" class="btn-form" OnClick="btnXacNhan_Click" />
                </td>

            </tr>
        </table>
    </div>
</div>

