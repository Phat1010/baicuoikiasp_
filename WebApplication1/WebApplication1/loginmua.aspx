<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginmua.aspx.cs" Inherits="WebApplication1.display.loginmua" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            width:500px;
            height:auto;
            margin:auto auto;
            margin-top:150px;
             box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);

          
        }
        h2{
            text-align:center;
        }
        #form1{
            width:100%;
            height:1000px;
         
           background-color:beige;
          
        }
        .aspNetHidden{
            height:0px;
            background-color:beige;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <div>
            
            <h2>FORM LOGIN</h2>
            <asp:Label ID="Label1" runat="server" Text="Label">MÃ KHÁCH HÀNG:</asp:Label>
            <asp:TextBox ID="txttk" runat="server" style="margin-left: 26px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl2" runat="server" Text="Label">MẬT KHẨU:</asp:Label>
            <asp:TextBox ID="txtmk" runat="server" style="margin-left: 74px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btndangnhap" runat="server" Text="Đăng nhập" OnClick="btndangnhap_Click" style="margin-left: 80px" />
            <a href="display/register.aspx" style="margin-left:15px; text-decoration:none;">bạn chưa có tài khoản? Hãy đăng kí!</a>
              
        </div>
            </section>
    </form>
</body>
</html>
