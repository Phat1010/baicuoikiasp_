<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thongtintaikhoan.aspx.cs" Inherits="WebApplication1.display.thongtintaikhoan" %>

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

.ten{
    font-size:30px;color:red;
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
        <div>
            <h3>xin chào: </h3>
        <asp:Label CssClass="ten" ID="lblten" runat="server" Text="Label"></asp:Label>
        </div>
        
        <div>
  <asp:Repeater ID="rptdslh" runat="server">
    <HeaderTemplate>
        <table border="1">
             <tr><!--Lưới hiển thị--> 
                <td>Mã khách hàng</td>
                 <td>Mã hóa đơn</td>
                 <td>ngày xuất hóa đơn</td>
                   <td>mã hàng</td>
                 <td>tên hàng</td>
                 <td>số lượng</td>
                 <td>đơn vị tính</td>
                 <td>trả phí</td>
                 <td>tổng tiền hàng</td>
                
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><%#:Eval("makh") %></td>
            <td><%#:Eval("mahd") %></td>
            <td><%#:Eval("ngayxuathd") %></td>
            <td><%#:Eval("mahang") %></td>
            <td><%#:Eval("tenhang") %></td>
            <td><%#:Eval("soluong") %></td>         
            <td><%#:Eval("donvitinh") %></td>
            <td><%#:Eval("traphi") %></td>
            <td><%#:Eval("tongtien") %></td>
        </tr>
          
    </ItemTemplate>

    <FooterTemplate>
        </table>
    </FooterTemplate>

</asp:Repeater>
           
        
           
            <!--Việc còn lại là sử dụng dataSource để đổ dl lên lưới--> 
            </div>
        </div>
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
