using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        clsLoaihang doanhthu = new clsLoaihang();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lbldoanhthu.Text = doanhthu.tongtien().ToString();

            }
            catch(Exception ex)
            {
                Response.Write("Chưa ai mua gì cả !!!");
            }
        }
    }
}