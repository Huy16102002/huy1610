
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="Webbandongho.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Giới thiệu</title>
    <link href="Style/gioithieu.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
        <div class="header_top">
            <p> Định Công, Hoàng Mai, Hà Nội</p>
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
    <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="images/about-us.jpg" alt="lỗi" width="100%">
        </div>
        <div class="gioithieu_column_two">
            <h2>Giới thiệu N.H.A.H</h2>
            <span>
                “Mỹ phẩm là những chất hoặc sản phẩm được dùng để trang điểm hoặc thay đổi diện mạo hoặc mùi hương cơ thể người. Nhiều mỹ phẩm được thiết kế để sử dụng cho mặt và tóc. Chúng thường là hỗn hợp các hợp chất hóa học; một số xuất phát từ nguồn gốc tự nhiên (như dầu dừa) và một số được tổng hợp
                Các loại mỹ phẩm phổ biến gồm có son môi, mascara, phấn mắt, kem nền, phấn má hồng, phấn phủ, sữa rửa mặt và sữa dưỡng thể, dầu gội, sản phẩm tạo kiểu tóc (gel vuốt tóc, gôm xịt tóc,...), nước hoa. Mỹ phẩm thường được thoa lên mặt để làm nổi bật diện mạo nên còn được gọi là đồ trang điểm hay đồ hóa trang.”
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Hàng chính hãng</h3>
                <span>Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích</span>
            </div>
            <div class="section_child">
                <h3>Sản phẩm mới 100%</h3>
                <span>Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích</span>
            </div>
            <div class="section_child">
                <h3>Bảo hành 12 tháng</h3>
                <span>Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Trả hàng</h3>
                <span>Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích</span>
            </div>
            <div class="section_child">
                <h3>Miễn phí giao hàng</h3>
                <span>
                    Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích
                </span>
            </div>
            <div class="section_child">
                <h3>Giá cả hợp lý</h3>
                <span>Mỹ phẩm là một trong những công cụ hỗ trợ làm đẹp mà tất cả mọi người đều yêu thích</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="images/section_img.jpg" alt="photo" width="100%">
    </div>

    <div class="degi">

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

</body>
</html>
