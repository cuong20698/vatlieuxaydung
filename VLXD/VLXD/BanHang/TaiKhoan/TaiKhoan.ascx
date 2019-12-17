<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaiKhoan.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.TaiKhoan" %>
<div class="main" style="background-color:white;">
    
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="menu-account">
                    <asp:Label ID="lblMenu" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="col-md-9">
                <div class="breadcrumb clearfix">
                    <ul>
                        <li itemtype="http://data-vocabulary.org/Breadcrumb" itemscope="" class="home">
                            <a title="Đến trang chủ" href="/" itemprop="url"><span itemprop="title">Trang chủ</span></a>
                        </li>
                        <li class="icon-li"><strong>
                            <asp:Label ID="lblDM" runat="server" Text=""></asp:Label></strong> </li>
                    </ul>
                </div>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
              
            </div>
        </div>
    </div>
</div>
