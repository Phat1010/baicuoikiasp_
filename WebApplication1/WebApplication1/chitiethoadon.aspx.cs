using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class chitiethoadon : System.Web.UI.Page
    {
        clsLoaihang _lh = new clsLoaihang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptdslh.DataSource = _lh.GetListcthd();
                rptdslh.DataBind();
            }
        }

        protected void lbtv2_Click(object sender, EventArgs e)
        {
            mul.ActiveViewIndex = 1;
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
           /* if (hdinsert.Value == "insert")
            {
                if (!string.IsNullOrEmpty(txtmahd.Text.Trim()))
                {
                    try
                    {
                        _lh.Insertcthd(txtmahd.Text.Trim(), txtmahang.Text.Trim(), txttenhang.Text.Trim(), int.Parse(txtsl.Text.Trim()), txtdvt.Text.Trim(), bool.Parse(txttraphi.Text.Trim()), int.Parse(txttongtien.Text.Trim()));
                        Response.Redirect(Request.Url.ToString());//laasy lai duong dan nhung ko lay lai du lieu

                    }
                    catch (Exception ex)
                    {
                        Response.Write("Bạn nhập không đúng điều kiện của các trường");
                    }
                }
            }
            else //update
            {
                if (!string.IsNullOrEmpty(txtmahd.Text.Trim()))
                {

                    try
                    {

                        _lh.Updatecthd( int.Parse(txtsl.Text.Trim()), bool.Parse(txttraphi.Text.Trim()), hd.Value);
                        Response.Redirect(Request.Url.ToString());//laasy lai duong dan nhung ko lay lai du lieu
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Bạn nhập không đúng điều kiện của các trường");
                    }
                }
            }*/
        }

        protected void rptdslh_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable dt = new DataTable();
            string kt = "";
            switch (e.CommandName.ToString())//e chính là đại diện cho repeater, sự kiện của repeater
            {
              /*  case "update":
                    //Response.Write(e.CommandArgument.ToString());
                    //break;
                    dt = _lh.GetListbydanhmuc(e.CommandArgument.ToString());//argument nó lấy gias rti cho chúng ta
                    //if (dt.Rows.Count > 0)//lấy ra nó có giá trị
                    if (!dt.Rows.Equals(kt))
                    {//0 là dòng đầu tiên
                        try
                        {
                            txtmahd.Text = dt.Rows[0]["mahd"].ToString();
                            txtmahang.Text = dt.Rows[0]["mahang"].ToString();//cột
                            txttenhang.Text = dt.Rows[0]["tenhang"].ToString();
                            txtsl.Text = dt.Rows[0]["soluong"].ToString();
                            txtdvt.Text = dt.Rows[0]["donvitinh"].ToString();
                            txttraphi.Text = dt.Rows[0]["traphi"].ToString();
                            txttongtien.Text = dt.Rows[0]["tongtien"].ToString();
                            hd.Value = e.CommandArgument.ToString();//lấy chỉ số
                            hdinsert.Value = "update";
                            mul.ActiveViewIndex = 1;
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Hệ thống đang tìm lỗi");
                        }

                    }
                    break;*/
                case "delete":
                    // Response.Write(e.CommandArgument.ToString());
                    //break;   
                    dt = _lh.GetListbydanhmuc(e.CommandArgument.ToString());
                    //  Response.Write(e.CommandArgument.ToString());

                    if (!dt.Rows.Equals(kt))
                    {
                        Response.Write(e.CommandArgument.ToString());

                        _lh.delete(e.CommandArgument.ToString());
                        Response.Redirect(Request.Url.ToString());
                    }
                    break;

            }
        }
    }
}