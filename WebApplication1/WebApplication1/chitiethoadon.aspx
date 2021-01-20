<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="chitiethoadon.aspx.cs" Inherits="WebApplication1.chitiethoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div>Quản lí chi tiết hóa đơn</div>




<!-- hiển thị giao diện-->
<asp:MultiView ID="mul" runat="server" ActiveViewIndex="0"><!--giá trị của nó ứng với view đầu tiên là 0 view thứ 2 là 1(thứ tự xuât hiện bảng)--> 
        <asp:View ID="v1" runat="server">


        <div>
        <asp:Repeater ID="rptdslh" runat="server" OnItemCommand="rptdslh_ItemCommand">
    <HeaderTemplate>
        <table border="1">
             <tr><!--Lưới hiển thị--> 
                <td>Mã hóa đơn</td>
                 <td>Mã hàng</td>
                 <td>tên hàng</td>
                   <td>Số lượng</td>
                 <td>Đơn vị tính</td>
                 <td>Trả phí</td>
                 
                 <td>Thành tiền</td>
                
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <!--Làm 1 hay 2 nhiệm vụ, cập nhật hay là xóa // <command = ' Lấy đc khóa của 1 dòng record-->  <!--Tham số đưa vào linkbutton là tham số nào-->

             <%#:Eval("mahd") %>
               <td><%#:Eval("mahang") %></td>
            <td><%#:Eval("tenhang") %></td>
            <td><%#:Eval("soluong") %></td>
            <td><%#:Eval("donvitinh") %></td>
            <td><%#:Eval("traphi") %></td>
            <td><%#:Eval("tongtien") %></td>
             <td><asp:LinkButton ID="lkxoa" runat="server" CommandName="delete" CommandArgument='<%#:Eval("mahd") %>'>Xoá</asp:LinkButton></td>
           
        </tr>
          
    </ItemTemplate>

    <FooterTemplate>
        </table>
    </FooterTemplate>

</asp:Repeater>
           
        
           
            <!--Việc còn lại là sử dụng dataSource để đổ dl lên lưới--> 
            </div>
            <div><asp:LinkButton ID="lbtv2" runat="server" OnClick="lbtv2_Click">ADD</asp:LinkButton></div><!--khi nhấn vào nó sẽ chuyển tiếp form-->
           
    </asp:View>
  <asp:View ID="v2" runat="server">
      <asp:HiddenField ID="hd" runat="server" /> <!--Để lưu trữ giá trị ở btnclick ở trên-->
       <asp:HiddenField ID="hdinsert" Value="insert" runat="server" />
      <table>
          <tr>
              <td>Mã hóa đơn:</td>
              <td><asp:TextBox ID="txtmahd" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Mã hàng:</td>
              <td><asp:TextBox ID="txtmahang" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Tên hàng:</td>
              <td><asp:TextBox ID="txttenhang" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Số lượng:</td>
              <td><asp:TextBox ID="txtsl" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Đơn vị tính:</td>
              <td><asp:TextBox ID="txtdvt" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Trả phí:</td>
              <td><asp:TextBox ID="txttraphi" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
            <tr>
              <td>Tổng tiền:</td>
              <td><asp:TextBox ID="txttongtien" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
           <tr>
              <td></td>
              <td><asp:Button ID="btnluu" runat="server" style="margin-left: 52px" Width="92px" Text="Cập nhật" OnClick="btnluu_Click" ></asp:Button></td>
      </tr>
      </table>
      
  </asp:View>

</asp:MultiView>
</asp:Content>
