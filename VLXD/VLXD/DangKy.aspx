﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="VLXD.DangKy" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng ký</title>

    <!-- Custom fonts for this template-->
    <link href="../css/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="../css/Admin/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">

    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Đăng ký tài khoản</div>
            <div class="card-body">
                <form runat="server">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <input type="text" id="txtFirstName" class="form-control" placeholder="Họ đệm" runat="server" required autofocus="autofocus">
                                    <label for="txtFirstName">Họ đệm</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <input type="text" id="txtLastName" class="form-control" placeholder="Tên" runat="server" required>
                                    <label for="txtLastName">Tên</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="txtUsername" class="form-control" placeholder="Tên đăng nhập" runat="server" required>
                            <label for="txtUsername">Tên đăng nhập</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <input type="password" id="txtPassword" class="form-control" placeholder="Mật khẩu" runat="server" pattern=".{6,20}" title="Độ dài phải từ 6 đến 20 kí tự" required>
                                    <label for="txtPassword">Mật khẩu</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <input type="password" id="txtConfirmPassword" class="form-control" placeholder="Nhập lại mật khẩu" runat="server" pattern=".{6,20}" title="Độ dài phải từ 6 đến 20 kí tự" required>
                                    <label for="txtConfirmPassword">Nhập lại mật khẩu</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="txtDiaChi" class="form-control" placeholder="Địa chỉ" runat="server" required>
                            <label for="txtDiaChi">Địa chỉ</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="email" id="txtEmail" class="form-control" placeholder="Địa chỉ Email" runat="server" title="Địa chỉ email không hợp lệ" pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*(\.\w{2,})+$" required>
                            <label for="txtEmail">Địa chỉ Email</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="txtSDT" class="form-control" placeholder="Số điện thoại" runat="server" pattern="[0][0-9]{9}" title="Số điện thoại không hợp lệ" required>
                            <label for="txtSDT">Số điện thoại</label>
                        </div>
                    </div>
                    <asp:Button class="btn btn-primary btn-block" ID="btnDangKy" runat="server" Text="Đăng ký" OnClick="btnDangKy_Click" />
                    <asp:Label ID="lblTB" runat="server" Text=""></asp:Label>
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="/Login.aspx">Đăng nhập</a>
                    <a class="d-block small" href="/QuenMK.aspx">Quên mật khẩu?</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../css/Admin/vendor/jquery/jquery.min.js"></script>
    <script src="../css/Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../css/Admin/vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
