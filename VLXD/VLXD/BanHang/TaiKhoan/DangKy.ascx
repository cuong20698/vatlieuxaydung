﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DangKy.ascx.cs" Inherits="VLXD.BanHang.TaiKhoan.DangKy" %>
<div class="register-content clearfix ng-scope" ng-controller="accountController" ng-init="initRegisterController()">
    <h1 class="page-heading"><span>Đăng ký tài khoản</span></h1>
    <!-- ngIf: IsError -->
    <!-- ngIf: IsSuccess -->
    <!-- ngIf: InValid -->
    <div class="col-md-8 col-md-offset-2 col-xs-12 col-sm-12 col-xs-offset-0 col-sm-offset-0">
        <form class="form-horizontal ng-pristine ng-invalid ng-invalid-required ng-valid-email" ng-submit="register()">
            <h2><span>Thông tin tài khoản</span></h2>
            <div class="form-group">
                <label for="Code" class="col-sm-3 control-label">Tài khoản<span class="warning">(*)</span></label>
                <div class="col-sm-9">
                    <input type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" required/>
                </div>
            </div>
            <div class="form-group">
                <label for="Email" class="col-sm-3 control-label">Email<span class="warning">(*)</span></label>
                <div class="col-sm-9">
                    <input type="email" class="form-control ng-pristine ng-valid-email ng-invalid ng-invalid-required ng-touched" ng-model="Email" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="Password" class="col-sm-3 control-label">Mật khẩu<span class="warning">(*)</span></label>
                <div class="col-sm-9">
                    <input type="password" class="form-control ng-pristine ng-invalid ng-invalid-required ng-touched" ng-model="Password" required="true">
                </div>
            </div>
            <div class="form-group">
                <label for="RePassword" class="col-sm-3 control-label">Nhập lại mật khẩu<span class="warning">(*)</span></label>
                <div class="col-sm-9">
                    <input type="password" class="form-control ng-pristine ng-untouched ng-valid" ng-model="RePassword">
                </div>
            </div>
            <h2>Thông tin cá nhân</h2>
            <div class="form-group">
                <label for="Name" class="col-sm-3 control-label">Họ tên<span class="warning">(*)</span></label>
                <div class="col-sm-9">
                    <input type="text" class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required" ng-model="Name" required="true">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Giới tính</label>
                <div class="col-sm-9">
                    <select class="form-control ng-pristine ng-valid ng-touched" ng-model="GenderId" ng-options="item.Id as item.Name for item in Genders">
                        <option value="number:0" label="Nữ" selected="selected">Nữ</option>
                        <option value="number:1" label="Nam">Nam</option>
                    </select>
                </div>
            </div>
            <div class="form-group form-inline">
                <label class="col-sm-3 control-label">Ngày sinh</label>
                <div class="col-sm-9">
                    <select class="col-md-4 form-control ng-pristine ng-untouched ng-valid" ng-model="SelectedDay" ng-options="label for label in Days | limitTo:NumberOfDays" placeholder="Ngày">
                        <option value="number:1" label="1" selected="selected">1</option>
                        <option value="number:2" label="2">2</option>
                        <option value="number:3" label="3">3</option>
                        <option value="number:4" label="4">4</option>
                        <option value="number:5" label="5">5</option>
                        <option value="number:6" label="6">6</option>
                        <option value="number:7" label="7">7</option>
                        <option value="number:8" label="8">8</option>
                        <option value="number:9" label="9">9</option>
                        <option value="number:10" label="10">10</option>
                        <option value="number:11" label="11">11</option>
                        <option value="number:12" label="12">12</option>
                        <option value="number:13" label="13">13</option>
                        <option value="number:14" label="14">14</option>
                        <option value="number:15" label="15">15</option>
                        <option value="number:16" label="16">16</option>
                        <option value="number:17" label="17">17</option>
                        <option value="number:18" label="18">18</option>
                        <option value="number:19" label="19">19</option>
                        <option value="number:20" label="20">20</option>
                        <option value="number:21" label="21">21</option>
                        <option value="number:22" label="22">22</option>
                        <option value="number:23" label="23">23</option>
                        <option value="number:24" label="24">24</option>
                        <option value="number:25" label="25">25</option>
                        <option value="number:26" label="26">26</option>
                        <option value="number:27" label="27">27</option>
                        <option value="number:28" label="28">28</option>
                        <option value="number:29" label="29">29</option>
                        <option value="number:30" label="30">30</option>
                        <option value="number:31" label="31">31</option>
                    </select>
                    <select class="col-md-4 form-control ng-pristine ng-untouched ng-valid" ng-model="SelectedMonth" ng-options="label for label in Months" ng-change="UpdateNumberOfDays()" placeholder="Tháng">
                        <option value="number:1" label="1" selected="selected">1</option>
                        <option value="number:2" label="2">2</option>
                        <option value="number:3" label="3">3</option>
                        <option value="number:4" label="4">4</option>
                        <option value="number:5" label="5">5</option>
                        <option value="number:6" label="6">6</option>
                        <option value="number:7" label="7">7</option>
                        <option value="number:8" label="8">8</option>
                        <option value="number:9" label="9">9</option>
                        <option value="number:10" label="10">10</option>
                        <option value="number:11" label="11">11</option>
                        <option value="number:12" label="12">12</option>
                    </select>
                    <select class="col-md-4 form-control ng-pristine ng-untouched ng-valid" ng-model="SelectedYear" ng-options="label for label in Years" ng-change="UpdateNumberOfDays()" placeholder="Năm">
                        <option value="number:1900" label="1900">1900</option>
                        <option value="number:1901" label="1901">1901</option>
                        <option value="number:1902" label="1902">1902</option>
                        <option value="number:1903" label="1903">1903</option>
                        <option value="number:1904" label="1904">1904</option>
                        <option value="number:1905" label="1905">1905</option>
                        <option value="number:1906" label="1906">1906</option>
                        <option value="number:1907" label="1907">1907</option>
                        <option value="number:1908" label="1908">1908</option>
                        <option value="number:1909" label="1909">1909</option>
                        <option value="number:1910" label="1910">1910</option>
                        <option value="number:1911" label="1911">1911</option>
                        <option value="number:1912" label="1912">1912</option>
                        <option value="number:1913" label="1913">1913</option>
                        <option value="number:1914" label="1914">1914</option>
                        <option value="number:1915" label="1915">1915</option>
                        <option value="number:1916" label="1916">1916</option>
                        <option value="number:1917" label="1917">1917</option>
                        <option value="number:1918" label="1918">1918</option>
                        <option value="number:1919" label="1919">1919</option>
                        <option value="number:1920" label="1920">1920</option>
                        <option value="number:1921" label="1921">1921</option>
                        <option value="number:1922" label="1922">1922</option>
                        <option value="number:1923" label="1923">1923</option>
                        <option value="number:1924" label="1924">1924</option>
                        <option value="number:1925" label="1925">1925</option>
                        <option value="number:1926" label="1926">1926</option>
                        <option value="number:1927" label="1927">1927</option>
                        <option value="number:1928" label="1928">1928</option>
                        <option value="number:1929" label="1929">1929</option>
                        <option value="number:1930" label="1930">1930</option>
                        <option value="number:1931" label="1931">1931</option>
                        <option value="number:1932" label="1932">1932</option>
                        <option value="number:1933" label="1933">1933</option>
                        <option value="number:1934" label="1934">1934</option>
                        <option value="number:1935" label="1935">1935</option>
                        <option value="number:1936" label="1936">1936</option>
                        <option value="number:1937" label="1937">1937</option>
                        <option value="number:1938" label="1938">1938</option>
                        <option value="number:1939" label="1939">1939</option>
                        <option value="number:1940" label="1940">1940</option>
                        <option value="number:1941" label="1941">1941</option>
                        <option value="number:1942" label="1942">1942</option>
                        <option value="number:1943" label="1943">1943</option>
                        <option value="number:1944" label="1944">1944</option>
                        <option value="number:1945" label="1945">1945</option>
                        <option value="number:1946" label="1946">1946</option>
                        <option value="number:1947" label="1947">1947</option>
                        <option value="number:1948" label="1948">1948</option>
                        <option value="number:1949" label="1949">1949</option>
                        <option value="number:1950" label="1950">1950</option>
                        <option value="number:1951" label="1951">1951</option>
                        <option value="number:1952" label="1952">1952</option>
                        <option value="number:1953" label="1953">1953</option>
                        <option value="number:1954" label="1954">1954</option>
                        <option value="number:1955" label="1955">1955</option>
                        <option value="number:1956" label="1956">1956</option>
                        <option value="number:1957" label="1957">1957</option>
                        <option value="number:1958" label="1958">1958</option>
                        <option value="number:1959" label="1959">1959</option>
                        <option value="number:1960" label="1960">1960</option>
                        <option value="number:1961" label="1961">1961</option>
                        <option value="number:1962" label="1962">1962</option>
                        <option value="number:1963" label="1963">1963</option>
                        <option value="number:1964" label="1964">1964</option>
                        <option value="number:1965" label="1965">1965</option>
                        <option value="number:1966" label="1966">1966</option>
                        <option value="number:1967" label="1967">1967</option>
                        <option value="number:1968" label="1968">1968</option>
                        <option value="number:1969" label="1969">1969</option>
                        <option value="number:1970" label="1970">1970</option>
                        <option value="number:1971" label="1971">1971</option>
                        <option value="number:1972" label="1972">1972</option>
                        <option value="number:1973" label="1973">1973</option>
                        <option value="number:1974" label="1974">1974</option>
                        <option value="number:1975" label="1975">1975</option>
                        <option value="number:1976" label="1976">1976</option>
                        <option value="number:1977" label="1977">1977</option>
                        <option value="number:1978" label="1978">1978</option>
                        <option value="number:1979" label="1979">1979</option>
                        <option value="number:1980" label="1980">1980</option>
                        <option value="number:1981" label="1981">1981</option>
                        <option value="number:1982" label="1982">1982</option>
                        <option value="number:1983" label="1983">1983</option>
                        <option value="number:1984" label="1984">1984</option>
                        <option value="number:1985" label="1985">1985</option>
                        <option value="number:1986" label="1986">1986</option>
                        <option value="number:1987" label="1987">1987</option>
                        <option value="number:1988" label="1988">1988</option>
                        <option value="number:1989" label="1989">1989</option>
                        <option value="number:1990" label="1990">1990</option>
                        <option value="number:1991" label="1991">1991</option>
                        <option value="number:1992" label="1992">1992</option>
                        <option value="number:1993" label="1993">1993</option>
                        <option value="number:1994" label="1994">1994</option>
                        <option value="number:1995" label="1995">1995</option>
                        <option value="number:1996" label="1996">1996</option>
                        <option value="number:1997" label="1997" selected="selected">1997</option>
                        <option value="number:1998" label="1998">1998</option>
                        <option value="number:1999" label="1999">1999</option>
                        <option value="number:2000" label="2000">2000</option>
                        <option value="number:2001" label="2001">2001</option>
                        <option value="number:2002" label="2002">2002</option>
                        <option value="number:2003" label="2003">2003</option>
                        <option value="number:2004" label="2004">2004</option>
                        <option value="number:2005" label="2005">2005</option>
                        <option value="number:2006" label="2006">2006</option>
                        <option value="number:2007" label="2007">2007</option>
                        <option value="number:2008" label="2008">2008</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="" class="col-sm-3 control-label">Điện thoại</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Địa chỉ</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control ng-pristine ng-untouched ng-valid">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-8">
                    <button type="submit" class="btn btn-primary">Đăng ký</button>
                </div>
            </div>
        </form>
    </div>
</div>