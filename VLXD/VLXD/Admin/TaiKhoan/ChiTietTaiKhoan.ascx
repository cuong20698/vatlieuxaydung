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
<div class="card mb-3" >
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
         Chỉnh sửa thông tin cá nhân
    </div>
    <div class="card-body">
       <div class="TieuDe">  <asp:Label ID="lbthongb" runat="server" Text=""></asp:Label></div>
        <table  style="margin:auto; line-height:50px;" >
            <tr >
                <td >Họ và tên:</td>
                <td>
                   <input class="Input" type="text" id="txtHoten" runat="server" placeholder="Vui lòng nhập Họ Tên" required/> 
                </td>
            </tr>
            <tr >
                <td >Email:</td>
                <td>
                 <input class="Input" type="email" id="txtemail" runat="server" placeholder="Vui lòng nhập Email" title="Địa chỉ email không hợp lệ" pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*(\.\w{2,})+$" required>
                </td>

            </tr>
            <tr >
                <td >Địa chỉ:</td>
                <td>
                    <input class="Input" type="text" id="txtdiachi" runat="server" placeholder="Vui lòng nhập Địa chỉ" required/> 
                </td>
            </tr>
            <tr >
                <td >Số điện thoại:</td>
                <td>
                    <input class="Input" type="text" id="txtsdt" runat="server" placeholder="Vui lòng nhập SDT" pattern="[0][0-9]{9}" title="Số điện thoại không hợp lệ" required/> 
                </td>
            </tr>
            <tr >
                <td colspan="2" >
                    <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật thông tin" class="btn-form" OnClick="btnCapNhat_Click" />

                </td>
                
            </tr>
        </table>
    </div>
</div>

