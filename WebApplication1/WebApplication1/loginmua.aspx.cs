using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.display
{
    public partial class loginmua : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {

            
            loadsl dn = new loadsl();
           int check =   dn.login(txttk.Text, txtmk.Text);
            if(check==1)
            {
                Session["taikhoan"] = txttk.Text;
               // Response.Write(Session["taikhoan"].ToString());
                Response.Redirect("display/interface.aspx");
            }
            if(txttk.Text == "admin" && txtmk.Text=="admin"){
                Response.Redirect("hello.aspx");
            }
                
                else

            {
                Response.Write("Tài khoản hoặc mật khẩu bạn nhập không chính xác");
            }



        }
    }
}