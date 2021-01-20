<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buysandbuild.aspx.cs" Inherits="WebApplication1.display.buysandbuild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        
        #TextBox1{
            text-align:center;
            font-size:25px;
            background-color:#428ad4;
            
        }
 #mainmenu a:hover{
    color: red;
    
}
#mainmenu{
    background-color: #8b9fc3;
    height: 50px;
    width: 100%;
}
#mainmenu li{
    float: left;
    width:150px;
	font-size:15px;
    height: 50px;
    background-color :#73d0d0;
    text-align: center;
    border-left: 5px solid #73d0d0;
    line-height: 50px;
	list-style: none;
	
	
	
	
}
#mainmenu ul{
    margin-left: 23%;
 
  
	
}

footer{
	
	bottom: 1px;
	width: 100%;
	height: 200px;
	
}


#footer
{
	background-color:#428ad4;
	width: 100%;
	height: 230px;
	font-size: 18px;
    clear:both;
}

.review{
	text-align: center;
	width: 50%;
	height: 200px;
	font-size: 22px;
	float: left;
}
.contants{
	text-align: center;
	width: 50%;
	height: 200px;
	float: left;
	
}
.contants li{
	text-align: center;
	list-style: none;
	
}
.copyright{
	text-align: center;
}
.home{
    width:100%;
    height:40px;
    background-color:#d0cece;
    text-align:center;
    line-height:30px;
    font-weight:bolder;
}
.left1{
    width:20%;
    height:auto;
    float:left;
}.left2{
    width:44%;
    height:auto;
    font-size:30px;
    font-weight:900;
    margin-left:150px;
}

 .left2 .price{
   font-size:20px;
    font-weight:900;
}
  .left2 .sl{
   font-size:20px;
    font-weight:100;
}

    .left2 .slconlai {
   font-size:20px;
    font-weight:100;
}
    .left2 .slmm{
         font-size:20px;
    font-weight:100;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="100%"> Cửa hàng vật liệu xây dựng 1 thành viên </asp:TextBox>
             </div>
        
 <section id="mainmenu">
 	<article class="mid">
           <ul> 
               <li><a href="interface.aspx">Trang chủ</a></li>
               <li><a href="thongtintaikhoan.aspx">Tài khoản</a></li>
               <li><a href="#">UPDATE ...</a></li>
               <li><a href="#">UPDATE ...</a></li>
               <li><a href="#">UPDATE ...</a></li>
               <li><a href="../loginmua.aspx">Đăng xuất</a></li>
           </ul>
           </article>
       </section>
        <!--HOME-->
         <div class="home"><p> Bạn đang ở trang mua hàng</p>
         </div>
        <!--HOME-->

        <!--Website bán vật liệu xây dựng trực tuyến-->
        <div class="spm"> <h3>Sản Phẩm bạn mua</h3>
             </div>

        <section>
            <div class="left1">

                <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl="~/display/image/cato.jpg" Width="282px" />

            </div>
            <div class="left2">
                <asp:Label ID="Label1"  runat="server" Text="Label">Cát tô xây dựng</asp:Label>
                <br />
                <asp:Label ID="Label3"  CssClass="price" runat="server" Text="Giá: 200000 VNĐ"></asp:Label>
                 <br />
                <asp:Label ID="Label4" runat="server" CssClass="sl"  Text="Label">Số lượng: </asp:Label>
                <asp:Label ID="lblsl"  CssClass="slconlai" runat="server" ></asp:Label>
                <br />
                
                <asp:Label ID="Label5" runat="server" CssClass="slmm" Text="Label">Nhập số lượng muốn mua:</asp:Label>
                <asp:TextBox ID="txtslmua" runat="server" Width="34px"></asp:TextBox>
            
                <br />
                <asp:Button ID="Button1" runat="server" Text="Mua" style="width: 39px" OnClick="Button1_Click"  />
            </div>
               
                <div> 
                    
                </div>

        </section>

        <footer >
<section id="footer">
	<article class="review">
		<h3>
            BUILDING MATERIALS
		</h3>
		<p>
			chương trình được viết bới nhóm Sinh Viên trường đại học Quy Nhơn ,chương trình được viết nhắm mục Báo cáo cuối kì học phần ASP
		</p>
	</article>
	<article class="contants">
		<h3>
			Contacts US
		</h3>
		<ul>
		<li>Trần Tuấn Phát</li>
		<li>Võ thái Nhựt</li>
		
		<li>Nguyễn Thị Như Quỳnh</li>
		<li>Nguyễn Thị Thanh Thúy</li>
		</ul>
	</article>
	<div class="copyright">© 2020 - Bản quyền thuộc về NHÓM 1</div>
	</section>
</footer>
    </form>
</body>
</html>
