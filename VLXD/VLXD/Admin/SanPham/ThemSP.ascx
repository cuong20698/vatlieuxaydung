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
                        <td>Tên sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="txtTenSP" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Giá sản phẩm</td>
                        <td>
                            <input type="text" class="text-tsp" id="Text1" runat="server" />
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
                        <td>Mã sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="Text2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>Mã sản phẩm:</td>
                        <td>
                            <input type="text" class="text-tsp" id="Text3" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</div>
