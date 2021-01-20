using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.display
{
    public partial class registerr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndk_Click(object sender, EventArgs e)
        {
            if (txttk.Text != "" && txttk.Text != "" && txtmk.Text.Equals(txtremk.Text) == true)

                try
                {
                    loadsl dk = new loadsl();
                    dk.register(txttk.Text, txtmk.Text);
                    Response.Write("Register success");
                }
                catch (Exception ex)
                {
                   Response.Write("tài khoản đã có người đăng kí");
                }         
            else
            {
                Response.Write("Bạn nhập sai mời nhập lại");


            }
        }
    }
}