<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuenMK.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.QuenMK" %>
<div class="foget-password-content clearfix ng-scope">
    <h1 class="page-heading"><span>Quên mật khẩu</span></h1>
    <!-- ngIf: IsError -->
    <!-- ngIf: IsSuccess -->
    <!-- ngIf: InValid -->

    <div class="alert alert-info fade in">
        <button data-dismiss="alert" class="close"></button>
        <i class="fa-fw fa fa-check"></i>
        Điền vào email của bạn để yêu cầu một mật khẩu mới. Một Email sẽ được gửi đến địa chỉ này để xác minh địa chỉ Email của bạn.
    </div>

    <div class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
        <form class="form-horizontal ng-pristine ng-valid-email ng-invalid ng-invalid-required">
            <div class="form-group">
                <label class="col-sm-4 control-label">Email</label>
                <div class="col-sm-8">
                    <input type="email" class="form-control ng-pristine ng-untouched ng-valid-email ng-invalid ng-invalid-required" ng-model="Email" ng-required="true" required="required">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Mã xác nhận</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Captcha" ng-required="true" required="required">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8">
                    <img class="img-captcha" id="imgCaptcha" alt="captcha" src="/Captcha.ashx?t=1">
                    <a class="refresh-captcha" id="btnRefreshCapcha" href="javascript:void(0);">
                        <i class="glyphicon glyphicon-refresh"></i>
                    </a>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="btn btn-primary">Gửi mật khẩu</button>
                    <a href="/TrangBanHang.aspx?modul=TrangChu&modul1=TK&modul2=DN">Quay lại đăng nhập</a>
                </div>
            </div>
        </form>
    </div>
</div>