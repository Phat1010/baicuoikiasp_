﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="loaihang1.aspx.cs" Inherits="WebApplication1.Admin.LoaiHang.loaihang1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div>Danh sách danh mục</div>




<!-- hiển thị giao diện-->
<asp:MultiView ID="mul" runat="server" ActiveViewIndex="0"><!--giá trị của nó ứng với view đầu tiên là 0 view thứ 2 là 1(thứ tự xuât hiện bảng)--> 
        <asp:View ID="v1" runat="server">


        <div>
        <asp:Repeater ID="rptdslh" runat="server" OnItemCommand="rptdslh_ItemCommand">
    <HeaderTemplate>
        <table border="1">
             <tr><!--Lưới hiển thị--> 
                <td>Mã nhóm hàng</td>
                 <td>Mã loại hàng</td>
                 <td>Tên loại hàng</td>
                   <td>Số lượng</td>
                 <td>Đơn vị tính</td>
                 <td>Giá</td>
                
            </tr>
    </HeaderTemplate>
    <ItemTemplate
        <tr>
            <!--Làm 1 hay 2 nhiệm vụ, cập nhật hay là xóa // <command = ' Lấy đc khóa của 1 dòng record-->  <!--Tham số đưa vào linkbutton là tham số nào-->
    <td><%#:Eval("manhomhang") %></td>
             <td><asp:LinkButton ID="lbupdate" runat="server" CommandName="update" CommandArgument='<%#:Eval("mahang") %>'> <%#:Eval("mahang") %></asp:LinkButton></td>
           
            <td><%#:Eval("tenhang") %></td>
            <td><%#:Eval("soluong") %></td>
            <td><%#:Eval("donvitinh") %></td>
            <td><%#:Eval("gia") %></td>
             <td><asp:LinkButton ID="lkxoa" runat="server" CommandName="delete" CommandArgument='<%#:Eval("mahang") %>'>Xoá</asp:LinkButton></td>
           
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
              <td>Mã nhóm hàng:</td>
              <td><asp:TextBox ID="txtmnh" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Mã loại hàng:</td>
              <td><asp:TextBox ID="txtmlh" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
          <tr>
              <td>Tên loại hàng:</td>
              <td><asp:TextBox ID="txttlh" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
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
              <td>Giá:</td>
              <td><asp:TextBox ID="txtgia" runat="server" style="margin-left: 95px" Width="248px"></asp:TextBox></td>
      </tr>
           <tr>
              <td></td>
              <td><asp:Button ID="btnluu" runat="server" style="margin-left: 52px" Width="92px" Text="Cập nhật" OnClick="btnluu_Click"></asp:Button></td>
      </tr>
      </table>
      
  </asp:View>

</asp:MultiView>

</asp:Content>
