﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachLoai.ascx.cs" Inherits="VLXD.Admin.SanPham.DanhSachLoai" %>
<!-- Area Chart Example-->
<div class="card mb-3">
    <div class="card-header">
        <i class="fas fa-chart-area"></i>
        Danh sách tài khoản
    </div>
    <div class="card-body">
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
