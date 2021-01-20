<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="interface.aspx.cs" Inherits="WebApplication1._interface" %>

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
#sp1{
    width:30%;
    height:250px;
    text-align:center;
    float:left;
}
#sp2{
    width:30%;
    height:auto;
    text-align:center;
        float:left;
}
#sp3{
    width:30%;
    height:auto;
    text-align:center;
    float:left;
       
}

#sp4{
    width:30%;
    height:auto;
    text-align:center;
    float:left;
       
}

#sp5{
    width:30%;
    height:auto;
    text-align:center;
    float:left;
       
}

#sp6{
    width:30%;
    height:auto;
    text-align:center;
    float:left;
       
}
.spm{
    width:95%;
    height:30px;
    background-color:orangered;
    margin-left:auto;
    margin-right:auto;
    border-radius:10px;
    
    
}

.spm p{
   
}
a{
    text-decoration:none;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
   <div class="header">
        <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="100%">
            Cửa hàng vật liệu xây dựng 1 thành viên

        </asp:TextBox>
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
         <div class="home"> 
             <p>Bạn đang ở trang chủ</p>
         </div>
        <!--HOME-->

        <!--Website bán vật liệu xây dựng trực tuyến-->
        <div class="spm">
                 <h3>Sản Phẩm có sẵn</h3>
             </div>
        <section id="sp1"> 
             
            <div>
                <p>bàn ghế học tập</p>
               <asp:Image ID="tu" ImageUrl="~/display/image/banghehoctap.jpg" runat="server" Height="166px" Width="219px" />
                <br />
                <asp:label ID="txttu" runat="server">
                    Price : 600000 VNĐ
                </asp:label>
                <br />

               <asp:Button ID="btnmua" runat="server" Text="BUY" style="margin-left: 17px" OnClick="btnmua_Click"/>
                
            </div>
         </section>


        <section id="sp2"> 
             
            <div>
                <p>Bộ bàn ghế gỗ</p>
               <asp:Image ID="Ban" ImageUrl="~/display/image/banghe.jpg" runat="server" Width="226px" />
                <br />
                <asp:label ID="Label1" runat="server">
                    Price : 40000000 VNĐ
                </asp:label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="BUY" style="margin-left: 17px" />
                
            </div>
         </section>


          <section id="sp3"> 
             
            <div>
                <p>giường</p>
               <asp:Image ID="Image1" ImageUrl="~/display/image/giuongngu.jpg" runat="server" Width="221px" Height="171px" />
                <br />
                <asp:label ID="Label2" runat="server">
                    Price : 5000000 VNĐ
                </asp:label>
                <br />
                <asp:Button ID="Button2" runat="server" Text="BUY" style="margin-left: 17px" />
                
            </div>
         </section>
        





             <section id="sp4"> 
             
            <div>
                <p>Gạch 6 lỗ</p>
               <asp:Image ID="Image2" ImageUrl="~/display/image/gach6lo.jpg" runat="server" />
                <br />
                <asp:label ID="Label3" runat="server">
                    Price :     3000 VNĐ
                </asp:label>
                <br />
                <asp:Button ID="Button3" runat="server" Text="BUY" style="margin-left: 17px" />
                
            </div>
         </section>


        <section id="sp5"> 
             
            <div>
                <p>Đá chẻ&nbsp;</p>
               <asp:Image ID="Image3" ImageUrl="~/display/image/dache.jpg" runat="server" Width="226px" Height="179px" />
                <br />
                <asp:label ID="Label4" runat="server">
                    Price : 5000 VNĐ
                </asp:label>
                <br />
                <asp:Button ID="BUY" runat="server" /> 
                </div>
         </section>
          <section id="sp6"> 
             
            <div>
                <p>Cát tô xây dựng</p>
               <asp:Image ID="Image4" ImageUrl="~/display/image/cato.jpg" runat="server" Width="213px" Height="179px" />
                <br />
                <asp:label ID="Label5" runat="server"> Price : 200000 VNĐ </asp:label>
                <br />
                <asp:Button ID="Button5" runat="server" Text="BUY" style="margin-left: 17px" OnClick="Button5_Click" />
                
            </div>
         </section>
        

   

        <!--Website bán vật liệu xây dựng trực tuyến-->        
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
