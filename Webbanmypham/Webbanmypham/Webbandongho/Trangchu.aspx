<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="Webbandongho.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<div class="header">
		<div class="header_top" id="header-top">
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
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="myphamnam.aspx">Mỹ phẩm nam</a></li>
				<li><a href="myphamnu.aspx">Mỹ phẩm nữ</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

	<div class="banner">
		<div class="noidung_banner">
				<h2>N.H.A.H</h2>
				<h1>Mỹ Phẩm N.H.A.H</h1>
				<p>Mỹ phẩm là những chất hoặc sản phẩm được dùng để trang điểm hoặc thay đổi diện mạo hoặc mùi hương cơ thể người. Nhiều mỹ phẩm được thiết kế để sử dụng cho mặt và tóc. Chúng thường là hỗn hợp các hợp chất hóa học; một số xuất phát từ nguồn gốc tự nhiên…</p>
		</div>
		<img id="img" src="images/banner-1.jpg" width="auto">
	</div>
	
	<div class="dongho">
		<div class="left" style="background: url(../images/myphamnam.jpg);">
			<div class="p_dongho">
				<h2>Xu hướng mọi thời đại</h2>
				<h1>Mỹ phẩm nam</h1>
			</div>
		</div>
		<div class="right" style="    background: url(../images/myphamnu.jpg);background-size: contain; background-position: top center;">
			<div class="p_dongho">
				<h2>Xu hướng mọi thời đại</h2>
				<h1>Mỹ phẩm nữ</h1>
			</div>
		</div>
	</div>
	<h1 class="h1">Sản phẩm bán chạy</h1>
	<div class="sanpham">
			<asp:ListView ID="sanphambanchay" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Mỹ Phẩm">
						<div class="sanphambanchay_gia" id="sanpham1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							<p id="gia1"><%# Eval("Price") %> đồng</p>
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>
	<div class="dongho_1">
		<div class="left_dongho1" style="    background: url(../images/mypham3.jpg)";>
			<div class="p_dongho1">
				<h1>New</h1>
				<h3>Cái đẹp là nụ cười của sự thật khi nhìn vào gương mặt chính mình trong một chiếc gương hoàn hảo</h3>
			</div>
		</div>
		<div class="right_dongho1" style="    background: url(../images/mypham-4.jpg) ; background-size: contain; background-position: top center;">
			<div class="p_dongho1" >
				<h1>Phong cách</h1>
				<h3>Cái đẹp bắt đầu vào khoảng khắc bạn quyết định là chính mình.</h3>
			</div>
		</div>
	</div>
	<div class="luachonsanpham2">
		<ul>
			<li><a href="#"><h1>Sản phẩm phổ biến</h1></a></li>	
		</ul>
	</div>
			<div class="sanpham2">
				<asp:ListView ID="sanphamphobien" runat="server">
		<ItemTemplate>
				<div class="sanphamphobien">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Images") %>" title="Đồng Hồ">
						<div class="sanphamphobien_gia">
							<strong><%# Eval("Name") %></strong>
							<p><%# Eval("Price") %> đồng</p>
						</div>
					</a>
				</div>
			</ItemTemplate>
	</asp:ListView>
			</div>
		
	<div class="tintucdongho">
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc-1.jpg" title="Mỹ phẩm">
					<h5>Mỹ phẩm thân thiện với mọi người</h5>
					<p>Có khá nhiều loại mỹ phẩm phù hợp với mọi người ...</p>
				</a>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc-2.jpg" title="Mỹ phẩm">
					<h5>10 hãng mỹ phẩm nổi tiếng nhất hiện nay</h5>
					<p>Sản xuất mỹ phẩm càng ngày càng phát triển ...</p>
				</a>	
			</div>
		</div>
		<div class="tintuc">
			<div class="tintuc_1">
				<a href="#">
					<img src="images/tintuc-3.jpg" title="Mỹ phẩm">
					<h5>Những mỹ phẩm mà mọi người quan tâm...</h5>
					<p>1. Sắc đẹp là điều quan trọng ở thế giới hiện nay, nên mỹ phẩm góp phần quan trọng vào sắc đẹp, ...</p>
				</a>	
			</div>
		</div>
	</div>
	
	<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
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
        		Kính chào quý khách, cảm ơn quý khách ghé thăm!
			</div>
		</div>
	</div>
	<script>
        var i = 1;
		function chuyenhinh() {
            var hinh = ["images/banner1.jpg", "images/banner-2.jpg"];
            document.getElementById('img').src = hinh[i];
            i++;
            if (i > 1) {
                i = 0;
            }
            setTimeout(chuyenhinh, 3*1000);
		}
        chuyenhinh()
		function responsive()
		{
			var x = document.getElementById("header-bot");
			if (x.className === "header_bot"){
				x.className += "responsive";
			}
			else {
				x.className = "header_bot";
            }
		}
    </script>
</body>
</html>
