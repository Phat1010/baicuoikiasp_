﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Loaihang : System.Web.UI.Page
    {
        clsLoaihang _lh = new clsLoaihang();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptdslh.DataSource = _lh.GetList1();
                rptdslh.DataBind();
            }
        }

        protected void lbtv2_Click(object sender, EventArgs e)
        {
            mul.ActiveViewIndex = 1;
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            if (hdinsert.Value == "insert")
            {
                if (!string.IsNullOrEmpty(txtmnh.Text.Trim()))
                {
                    try
                    {
                        _lh.Insert1(txtmnh.Text.Trim(), txtmlh.Text.Trim());
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
                if (!string.IsNullOrEmpty(txtmnh.Text.Trim()))
                {
                    Response.Write(hd.Value);

                    try
                    {

                        _lh.Update1(txtmnh.Text.Trim(), txtmlh.Text.Trim(), hd.Value);
                        Response.Redirect(Request.Url.ToString());//laasy lai duong dan nhung ko lay lai du lieu
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Bạn nhập không đúng điều kiện của các trường");
                    }
                }
            }
        }

        protected void rptdslh_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable dt = new DataTable();
            string kt = "";
            switch (e.CommandName.ToString())//e chính là đại diện cho repeater, sự kiện của repeater
            {
                case "update":
                    //Response.Write(e.CommandArgument.ToString());
                    //break;
                    dt = _lh.GetListbydanhmuc1(e.CommandArgument.ToString());//argument nó lấy gias rti cho chúng ta
                    //if (dt.Rows.Count > 0)//lấy ra nó có giá trị
                    if (!dt.Rows.Equals(kt))
                    {//0 là dòng đầu tiên
                        try
                        {
                            txtmnh.Text = dt.Rows[0]["manhomhang"].ToString();
                            txtmlh.Text = dt.Rows[0]["tennhomhang"].ToString();//cột
                            
                            hd.Value = e.CommandArgument.ToString();//lấy chỉ số
                            hdinsert.Value = "update";
                            mul.ActiveViewIndex = 1;
                        }
                        catch (Exception ex)
                        {
                            Response.Write("Hệ thống đang tìm lỗi");
                        }

                    }
                    break;
                case "delete":
                    // Response.Write(e.CommandArgument.ToString());
                    //break;   
                    dt = _lh.GetListbydanhmuc1(e.CommandArgument.ToString());
                    //  Response.Write(e.CommandArgument.ToString());

                    if (!dt.Rows.Equals(kt))
                    {
                        Response.Write(e.CommandArgument.ToString());

                        _lh.delete1(e.CommandArgument.ToString());
                        Response.Redirect(Request.Url.ToString());
                    }
                    break;

            }
        }
    }
}