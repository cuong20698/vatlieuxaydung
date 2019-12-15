<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachLoai.ascx.cs" Inherits="VLXD.Admin.SanPham.DanhSachLoai" %>
<style>
    .form-contain{
        height:auto;
        width:auto;
    }

    .form-control1 {
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

    .form-submit {
        margin-left:2px;
        display: block;
        width:100px;
        float:left;
        height: calc(1.5em + 0.75rem + 2px);
        border: 1px solid #ced4da;
        font-weight: 400;
        border-radius: 0.25rem;
        font-size: 1rem;
        outline:none;
        background-color: #006d6d;
        color:white;
    }
    .form-submit:hover{
        background-color:#014242;
    }
    .clear {
        height:40px;
    }
    .form-label{
        display: block;
        width: auto;
        height: calc(1.5em + 0.75rem + 2px);
        padding: 0.375rem 0.75rem;
        font-size: 1rem;
        font-weight: 400;
        line-height: 1.5;
        color: #495057;
        background-color: #fff;
        background-clip: padding-box;
        outline:none;
        float:left;
    }
</style>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Danh sách loại sản phẩm
    </div>
    <div class="card-body">
        <div class="form-contain">
            <label class="form-label">Loại sản phẩm:</label>
            <input type="text" class="form-control1" id="txtTenLoai" runat="server" required/>
            <%--<input type="submit" class="form-submit" name="btnThem" value="Thêm" runat="server" onclick="btnThem_Click"/>--%>
            <asp:Button class="form-submit" ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
        </div>
        <div class="clear"></div>
        <table class="table table-bordered" id="dataTable" style="width: 100%;">
            <tr>
                <th>ID</th>
                <th>Loại vật liệu</th>
                <th></th>
            </tr>
            <asp:Label ID="lblTr" runat="server" Text=""></asp:Label>
        </table>
    </div>
</div>
