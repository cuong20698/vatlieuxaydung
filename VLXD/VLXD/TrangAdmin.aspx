<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangAdmin.aspx.cs" Inherits="VLXD.TrangAdmin" %>

<%@ Register Src="~/Admin/WebUserControl1.ascx" TagPrefix="uc1" TagName="WebUserControl1" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vật liệu xây dựng</title>
    <link href="css/Admin/css/ThemSP.css" rel="stylesheet" />
    <!-- Custom fonts for this template-->
    <link href="../css/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="../css/Admin/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/Admin/css/sb-admin.css" rel="stylesheet">
</head>
<body id="page-top">
    
        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

            <a class="navbar-brand mr-1" href="index.html">Vatlieuxaydung.vn</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <span class="badge badge-danger">9+</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <span class="badge badge-danger">7</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Cài đặt</a>
                        <a class="dropdown-item" href="/DangKy.aspx">Đăng ký</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/Logout.aspx" data-toggle="modal" data-target="#logoutModal">Đăng xuất</a>
                    </div>
                </li>
            </ul>
        </nav>
        <!-- wrapper-->
        <div id="wrapper">
            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Tài khoản</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Hồ sơ cá nhân:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=TaiKhoan&modul1=TK">Sửa thông tin cá nhân</a>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=TaiKhoan&modul1=DoiMK">Đổi mật khẩu</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Danh mục tài khoản:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=TaiKhoan&modul1=DSTK">Danh sách tài khoản</a>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=TaiKhoan&modul1=TKKHD">DSTK ngừng hoạt động</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Sản phẩm</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Danh mục loại:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=SanPham&modul1=DMSP">Danh sách loại SP</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Danh mục sản phẩm:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=SanPham&modul1=ThemSP">Thêm sản phẩm</a>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=SanPham&modul1=DSSP">Danh sách sản phẩm</a>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=SanPham&modul1=NKSP">Nhật ký sản phẩm</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Khách hàng</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Danh mục khách hàng:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=KhachHang&modul1=DSKH">Danh sách khách hàng</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Danh mục đơn hàng:</h6>
                        <a class="dropdown-item" href="TrangAdmin.aspx?modul=KhachHang&modul1=DSDH">Danh sách đơn hàng</a>
                        <div class="dropdown-divider"></div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Doanh thu</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Danh mục doanh thu:</h6>
                        <a class="dropdown-item" href="#">Thống kê doanh thu</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Danh mục báo cáo:</h6>
                        <a class="dropdown-item" href="#">Báo cáo tháng</a>
                        <a class="dropdown-item" href="#">Báo cáo quý</a>
                        <a class="dropdown-item" href="#">Báo cáo năm</a>
                    </div>
                </li>
            </ul>
            <div id="content-wrapper">
                <div class="container-fluid">
                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">
                                <asp:Label ID="lblLink" runat="server" Text=""></asp:Label>
                            </a>
                        </li>
                        <li class="breadcrumb-item active">
                            <asp:Label ID="lblLink2" runat="server" Text=""></asp:Label>
                        </li>
                    </ol>
                    <!-- Main ------------------------------------------->
                    <form runat="server">
                    <uc1:WebUserControl1 runat="server" ID="WebUserControl1" />
                        </form>
                    <!-- /Main ------------------------------------------->
                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright © Vật liệu xây dựng 2019</span>
                        </div>
                    </div>
                </footer>
                <!-- /.content-wrapper -->
            </div>
        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Bạn có muốn đăng xuất</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Bạn có muốn đăng xuất tài khoản này?</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Trở về</button>
                        <a class="btn btn-primary" href="/Logout.aspx">Đăng xuất</a>
                    </div>
                </div>
            </div>
        </div>
    <!-- Bootstrap core JavaScript-->
    <script src="../css/Admin/vendor/jquery/jquery.min.js"></script>
    <script src="../css/Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../css/Admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="../css/Admin/vendor/chart.js/Chart.min.js"></script>
    <script src="../css/Admin/vendor/datatables/jquery.dataTables.js"></script>
    <script src="../css/Admin/vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../css/Admin/js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="../css/Admin/js/demo/datatables-demo.js"></script>
    <script src="../css/Admin/js/demo/chart-area-demo.js"></script>
</body>
</html>
