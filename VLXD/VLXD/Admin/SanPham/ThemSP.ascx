<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThemSP.ascx.cs" Inherits="VLXD.Admin.SanPham.ThemSP" %>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Thêm sản phẩm
    </div>
    <div class="card-body">
        <form>
            <div class="main-tsp">
                <table>
                    <tr>
                        <td rowspan="10" width="300px">
                            <asp:Image CssClass="imgThem" ID="imgSP" runat="server" />
                        </td>
                        <td>Mã sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMaSP" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Tên sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtTenSP" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Đơn giá:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtGia" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Hình ảnh:</td>
                        <td>
                            <asp:FileUpload ID="fUpload" runat="server" Width="150px" Height="30px" />
                            <asp:Button CssClass="btnUpLoad" ID="btnUpFile" runat="server" Text="Load ảnh" Width="100px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Sản phẩm nổi bật:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtsp" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Mô tả:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtMota" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Loại sản phẩm:</td>
                        <td>
                            <asp:DropDownList class="text-tsp" ID="ddrloai" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    </tr>
                    <tr>
                    <td><span></span></td>
                    <td>
                        <asp:Label ID="lbThongBao" runat="server" class="LbThongBao"></asp:Label>
                    </td>
        <td></td>
    </tr> 
                </table>
            </div>
        </form>
    </div>
</div>
