using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.display
{
    public partial class thongtintaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadsl a = new loadsl();
            lblten.Text = Session["taikhoan"].ToString();

            if (!IsPostBack)
            {
                rptdslh.DataSource = a.xuatthongtin(Session["taikhoan"].ToString());
                rptdslh.DataBind();
            }
        }
    }
}