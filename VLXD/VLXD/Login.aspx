<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="VLXD.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng nhập</title>

    <!-- Custom fonts for this template-->
    <link href="../css/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="../css/Admin/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">

    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Đăng nhập</div>
            <div class="card-body">
                <form runat="server">
                    <div class="form-group">
                        <div class="form-label-group">
                            <input type="text" id="txtUsername" class="form-control" placeholder="Email address" required runat="server">
                            <label for="txtUsername">Tên đăng nhập</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            
                            <input type="password" id="txtPassword" class="form-control" placeholder="Password" pattern=".{3,12}" required title="Vui lòng nhập ít nhất 6 đến 12 ký tự" runat="server">
                            <label for="txtPassword">Mật khẩu</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                               
                                <asp:CheckBox ID="chkNhoMK" runat="server" value="remember-me"/>
                                Nhớ mật khẩu
             
                            </label>
                        </div>
                    </div>
                    <asp:Button ID="btnDangNhap" class="btn btn-primary btn-block" runat="server" Text="Đăng nhập" OnClick="btnDangNhap_Click1" />
                   <%-- <a class="btn btn-primary btn-block" href="index.html">Đăng nhập</a>--%>
                   
                </form>
                 <asp:Label ID="lblTB" runat="server" Text=""></asp:Label>
                <div class="text-center">
                    <a class="d-block small mt-3" href="/DangKy.aspx">Tạo một tài khoản mới</a>
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
