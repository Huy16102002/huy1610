<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myphamnu.aspx.cs" Inherits="Webbandongho.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mỹ phẩm nữ</title>
    <link href="Style/donghonu.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
        <div class="header_top">
            <p>Định Công, Hoàng Mai, Hà Nội</p>
            <div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>
        </div>
        <div class="header_mid">
            <a href="Trangchu.aspx">
                <img width="200" height="80" src="images/logo.jpg" title="Mỹ phẩm">
            </a>
        </div>
        <div class="header_bot">
            <ul>
                <li><a href="Trangchu.aspx">Trang chủ</a></li>
                <li><a href="gioithieu.aspx">Giới thiệu</a></li>
                <li><a href="myphamnam.aspx">Mỹ phẩm nam</a></li>
                <li><a href="myphamnu.aspx">Mỹ phẩm nữ</a></li>
                <li><a href="Lienhe.aspx">Liên hệ</a></li>
                <li><a href="Giohang.aspx">Giỏ hàng</a></li>
            </ul>
        </div>
    </div>
    <div class="up">
        <div class="abc">
            <a href="Trangchu.aspx"><strong>TRANG CHỦ</strong></a> / <a href="donghonam.aspx"><strong>MỸ PHẨM NỮ</strong></a>
        </div>
    </div>
    <div class="container">
        <div class="sidebar_one">
            <div class="row_1">
                <strong>Danh mục sản phẩm</strong>
                <div class="show">
                    <ul>
                        <li><a href="myphamnam.aspx">Mỹ phẩm nam</a></li>
                        <li><a href="myphamnu.aspx">Mỹ phẩm nữ</a></li>
                    </ul>
                </div>
            </div>
            <div class="row_2"></div>
            <div class="row_3"></div>
        </div>
        <div class="sidebar_two">
            <div class="sanpham">
                <asp:ListView ID="donghonu1" runat="server">
                    <ItemTemplate>
                        <a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
                            <div class="sanpham_show">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi">
                                <div class="sanpham_gia">
                                    <strong><%# Eval("Name") %></strong>
                                    <p><%# Eval("Price") %> đồng</p>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <div class="footter">
        <div class="footter_top">
            <div class="Thongtinlienhe">
                <h1>Thông Tin Liên Hệ</h1>
                <p>Địa chỉ:  Định Công, Hoàng Mai, Hà Nội</p>
                <p>SĐT: 1910192092</p>
                <p>Gmail: abc1234@gmail.com</p>
            </div>
            <div class="Lienket">
                <h1>Liên Kết</h1>
                <ul>
                    <li><a href="gioithieu.aspx">Giới thiệu</a></li>
                    <li><a href="myphamnam.aspx">Mỹ phẩm nam</a></li>
                    <li><a href="myphamnu.aspx">Mỹ phẩm nữ</a></li>
                    <li><a href="Lienhe.aspx">Liên hệ</a></li>
                </ul>
            </div>
            <div class="Lienket">
                <h1>Hỗ Trợ</h1>
                <ul>
                    <li><a href="#">Hướng dẫn mua hàng</a></li>
                    <li><a href="#">Hướng dẫn thanh toán</a></li>
                    <li><a href="#">Chính sách bảo hành</a></li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Tư vấn khách hàng</a></li>
                </ul>
            </div>
        </div>
        <div class="footter_bot">
            <div class="copyright">
                Kính chào quý khách, cảm ơn quý khách đã ghé thăm!
            </div>
        </div>
    </div>
</body>
</html>
