using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Webbandongho
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            //tk mac dinh
            Application["Users"] = new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("danghuy", "danghuy@gmail.com", "danghuy", "danghuy"));
            Users.Add(new NguoiDung("nguyet", "nguyet@gmail.com", "nguyet", "nguyet"));
            Users.Add(new NguoiDung("huong", "huong@gmail.com", "huong", "huong"));
            Users.Add(new NguoiDung("vananh", "vananh@gmail.com", "vananh", "vananh"));

            //sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../images/product1.jpg", Name = "Kem trị mụn nam 1", Price = "500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "2", Images = "../images/product16.jpg", Name = "Kem trị mụn nam 2", Price = "500000", Detail= "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "3", Images = "../images/product9.jpg", Name = "Kem trị mụn nam 3 ", Price = "1500000", Detail= "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "4", Images = "../images/product4.jpg", Name = "Kem trị mụn nữ 4", Price = "1000000", Detail= "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "5", Images = "../images/product3.jpg", Name = "Kem trị mụn nữ 5", Price = "2000000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            //san pham pho bien
            ProductList.Add(new Product() { Id = "10", Images = "../images/product10.jpg", Name = "Mỹ phẩm nam 9", Price = "600000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "11", Images = "../images/product11.jpg", Name = "Mỹ phẩm nam 10 ", Price = "200000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "12", Images = "../images/product2.jpg", Name = "Mỹ phẩm nam 11 ", Price = "500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "13", Images = "../images/product13.jpg", Name = "Mỹ phẩm nữ 12 ", Price = "500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "14", Images = "../images/product14.jpg", Name = "Mỹ phẩm nữ 13", Price = "1200000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            //sanpham dong ho nam
            ProductList.Add(new Product() { Id = "20", Images = "../images/myphamnam/nam-1.jpg", Name = "Mỹ phẩm nam 8", Price = "600000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "21", Images = "../images/myphamnam/nam-2.jpg", Name = "Mỹ phẩm nam 7", Price = "850000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "22", Images = "../images/myphamnam/nam-3.jpg", Name = "Mỹ phẩm nam 6", Price = "1200000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "23", Images = "../images/myphamnam/nam-4.jpg", Name = "Mỹ phẩm nam 5", Price = "450000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "24", Images = "../images/myphamnam/nam-5.jpg", Name = "Mỹ phẩm nam 4", Price = "700000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "25", Images = "../images/myphamnam/nam-6.jpg", Name = "Mỹ phẩm nam 3", Price = "5500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "26", Images = "../images/myphamnam/nam-7.jpg", Name = "Mỹ phẩm nam 2", Price = "560000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "27", Images = "../images/myphamnam/nam-8.jpg", Name = "Mỹ phẩm nam 1", Price = "670000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            //sanpham dong ho nu
            ProductList.Add(new Product() { Id = "30", Images = "../images/myphamnu/nu-1.png", Name = "Mỹ phẩm nữ 14", Price = "6500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "31", Images = "../images/myphamnu/nu-2.png", Name = "Mỹ phẩm nữ 15", Price = "750000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "32", Images = "../images/myphamnu/nu-3.png", Name = "Mỹ phẩm nữ 16", Price = "5600000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "33", Images = "../images/myphamnu/nu-7.png", Name = "Mỹ phẩm nữ 17", Price = "6780000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "34", Images = "../images/myphamnu/nu-5.png", Name = "Mỹ phẩm nữ 18", Price = "5690000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "35", Images = "../images/myphamnu/nu-6.png", Name = "Mỹ phẩm nữ 19", Price = "5980000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "36", Images = "../images/myphamnu/nu-4.png", Name = "Mỹ phẩm nữ 20", Price = "6000000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });
            ProductList.Add(new Product() { Id = "37", Images = "../images/myphamnu/nu-8.png", Name = "Mỹ phẩm nữ 21", Price = "5500000", Detail = "Mỹ phẩm hiệu quả là dựa vào các thành phần này, bạn tiến hành phân tích và giải thích nguyên lý hoạt động của chúng, tác động như thế nào đến làn da, tại sao thành phần này lại giúp trị mụn, giảm nhờn,..." });


            Application["ProductList"] = ProductList;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}