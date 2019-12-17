<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaiKhoan.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.TaiKhoan" %>
<div class="main" style="background-color:white;">
    
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="menu-account">
                    <h3>
                        <span>Tài khoản
                        </span>
                    </h3>
                    <ul>
                        <li><a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN"><i class="fa fa-sign-in"></i>Đăng nhập</a></li>
                        <li><a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DK"><i class="fa fa-key"></i>Đăng ký</a></li>
                        <li><a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=QuenMK"><i class="fa fa-key"></i>Quên mật khẩu</a></li>
                    </ul>
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
