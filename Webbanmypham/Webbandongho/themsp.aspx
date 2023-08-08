<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themsp.aspx.cs" Inherits="Webbandongho.themsp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/donghonam.css" rel="stylesheet" />
    <script>
        function checkdulieu() {
            check = true;
            ten = document.getElementById("ten").value;
            gia = document.getElementById("gia").value;
            mota = document.getElementById("mota").value;

            if (ten == "" || gia== "" || mota=="") {
                alert("k đồng tình");

            }
            return check;
        }
    </script>
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

    <div>
        <form>
            <center>
                <table border="1">
                <tr>
                    <td>tên sản phẩm</td>
                    <td><input type ="text" id="ten"/></td>
                </tr>
                 <tr>
                    <td>giá sản phẩm</td>
                    <td><input type ="text" id="gia"/></td>
                </tr>
                 <tr>
                    <td>tên sản phẩm</td>
                    <td><input type ="text" id="mota"/></td>
                </tr>
                    <tr>
                        <td rowspan="2"> <input  type="button" value="THÊM" onclick="checkdulieu()"/>
                    </td>
                    </tr>
            </table>
            </center>
        </form>
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
                    <li><a href="#">Mỹ phẩm nữ</a></li>
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
