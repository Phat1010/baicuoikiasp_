using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.display
{
    
    public partial class buytable : System.Web.UI.Page
    {
        loadsl slt = new loadsl();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            
                int sl = slt.sl("table");
                lblsl.Text = sl.ToString();

               
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int slcl = slt.sl("table");
                int soluongmua = int.Parse(txtslmua.Text.Trim());
                int slconlai = 0;
                slconlai = slcl - soluongmua;
                if (slconlai >= 0)
                {
                    loadsl a = new loadsl();
                    int mahd = a.mahd() + 1;

                    DateTime dt = DateTime.Parse(DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"));

                    string makh = Session["taikhoan"].ToString();

                    a.Inserthd(mahd.ToString(), dt, makh);
                    string mahang = "TABLE";
                    string tenhang = "Bàn ghế gỗ";
                    int tp = int.Parse(txtslmua.Text.Trim());//số lượng á;
                    string dvt = "cái";
                    int tt = 600000;
                    a.Insertcthd(mahd.ToString(), mahang, tenhang, soluongmua, dvt, tp, tt, slconlai);
                    Response.Write("bạn đã mua thành công");



                }
                else Response.Write("ko đủ hàng để bạn mua");

            }
            catch(Exception ex)

            {
                Response.Write("mời bạn nhập trường số lượng !");
            }




        }
    }
}