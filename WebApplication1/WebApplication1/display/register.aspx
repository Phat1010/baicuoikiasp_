<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.display.registerr" %>

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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>FORM REGISTER</h2>
            <asp:Label ID="Label1" runat="server" Text="Label">MÃ KHÁCH HÀNG:</asp:Label>
            <asp:TextBox ID="txttk" runat="server" style="margin-left: 26px" Width="232px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl2" runat="server" Text="Label">MẬT KHẨU:</asp:Label>
            <asp:TextBox ID="txtmk" runat="server" style="margin-left: 74px" Width="233px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl3" runat="server" Text="Label">MẬT KHẨU:</asp:Label>
            <asp:TextBox ID="txtremk" runat="server" style="margin-left: 74px" Width="230px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btndk" runat="server" Text="đăng kí" OnClick="btndk_Click" style="margin-left: 150px" />
            <a href="../loginmua.aspx" style="margin-left:15px; text-decoration:none;">Quay lại đăng nhập!</a>
        </div>
    </form>
</body>
</html>
