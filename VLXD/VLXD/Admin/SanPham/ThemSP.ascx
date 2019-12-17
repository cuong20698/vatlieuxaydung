<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThemSP.ascx.cs" Inherits="VLXD.Admin.SanPham.ThemSP" %>
<!-- Area Chart Example-->
<style>
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
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Thêm sản phẩm
    </div>
    <div class="card-body">
            <div class="main-tsp">
                <table>
                    <tr>
                        <td>Mã sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMaSP" runat="server"  required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Tên sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtTenSP" runat="server"  required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Đơn giá:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtGia" runat="server"  required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Hình ảnh:</td>
                        <td>
                            <asp:FileUpload ID="fUpload" runat="server" Width="250px" Height="35px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Mô tả:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMota" runat="server" required />
                        </td>
                    </tr>
                    <tr>
                        <td>Loại sản phẩm:</td>
                        <td>
                            <asp:DropDownList  ID="ddrloai" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr >
                        <td></td>
                        <td colspan="2" >
                        <asp:Button class="btn-form" ID="btnthemmoi" runat="server" Text="Thêm mới" OnClick="btnthemmoi_Click"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lbThongBao" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr> 
                </table>
            </div>
    </div>
</div>
