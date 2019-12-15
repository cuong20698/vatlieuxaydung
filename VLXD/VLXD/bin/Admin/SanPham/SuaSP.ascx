<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SuaSP.ascx.cs" Inherits="VLXD.Admin.SanPham.SuaSP" %>
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
        Sửa sản phẩm
    </div>
    <div class="card-body">
            <div class="main-tsp">
                <table>
                    <tr>
                        <td>Mã sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMaSP" runat="server"   readonly/>
                        </td>
                    </tr>
                    <tr>
                        <td>Tên sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtTenSP" runat="server"  readonly/>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>Hình ảnh:</td>
                        <td>
                            <asp:Label ID="lbhinhanh" runat="server" Text="Label"></asp:Label>
                    </tr>
                    <tr>
                        <td>Loại sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtloaisp" runat="server" readonly/>
                        </td>
                    </tr>
                    <tr>
                        <td>Đơn giá:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtGia" runat="server"  required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Số lượng:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtSoluong" runat="server"  required/>
                        </td>
                    </tr>
                    <tr>
                        <td>Mô tả:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMota" runat="server" />
                        </td>
                    </tr>
                    
                    <tr >
                        <td></td>
                        <td colspan="2" >
                        <asp:Button class="btn-form" ID="btncapnhat" runat="server" Text="Cập nhật" OnClick="btncapnhat_Click" Width="135px" />
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

