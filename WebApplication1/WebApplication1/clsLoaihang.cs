using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication1
{
    public class clsLoaihang
    {
        string ckn = @"Data Source=Z-PC\SQLEXPRESS;Initial Catalog=QLVLXD;Integrated Security=True";
        SqlConnection kn;
        SqlCommand sqlcom;
        public DataTable GetList()
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            
            SqlDataAdapter adapter = new SqlDataAdapter("select * from danhmuc", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }
        public void Insert(string  mnh, string mh, string namegoods, int count, string dvt, int gia)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
             sqlcom = new SqlCommand("insert into danhmuc values(@1,@2,@3,@4,@5,@6)", kn);
            sqlcom.Parameters.AddWithValue("@1", mnh);
            sqlcom.Parameters.AddWithValue("@2", mh);
            sqlcom.Parameters.AddWithValue("@3", namegoods);
            sqlcom.Parameters.AddWithValue("@4", count);
            sqlcom.Parameters.AddWithValue("@5", dvt);
            sqlcom.Parameters.AddWithValue("@6", gia);
            sqlcom.ExecuteNonQuery();
            kn.Close();
            
        }


        public void delete( string mh)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("delete from chitiethoadon where mahang='" + mh + "' ", kn);
            sqlcom.ExecuteNonQuery();
            sqlcom = new SqlCommand("delete from danhmuc where mahang='" + mh + "' ", kn);           
            sqlcom.ExecuteNonQuery();

           
            kn.Close();

        }


        public void Update(string mnh, string mh, string namegoods, int count, string dvt, int gia, string dk)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

                sqlcom = new SqlCommand("update  danhmuc set tenhang='" + namegoods + "',soluong='" + count + "',donvitinh='" + dvt + "',gia='" + gia + "' where mahang='" + dk + "' ", kn);

                sqlcom.ExecuteNonQuery();
                kn.Close();

           
        }
       
        public DataTable GetListbydanhmuc(string id)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from danhmuc where mahang='"+id+"'", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }

        public double tongtien()
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("select SUM (tongtien) from chitiethoadon", kn);

            SqlDataReader sqlReder = sqlcom.ExecuteReader();
            int tongtien = 0;
            if (sqlReder.Read())
            {
                tongtien = sqlReder.GetInt32(0);
            }
           
            return tongtien;
        }





        public DataTable GetList1()
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from loaihang", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }

        public void Update1(string mnh, string mh, string dk)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            sqlcom = new SqlCommand("update  loaihang set manhomhang='" + mnh + "',tennhomhang='" + mh + "' where manhomhang='" + dk + "' ", kn);


            sqlcom.ExecuteNonQuery();
            kn.Close();


        }
        public void Insert1(string mnh, string mh)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("insert into loaihang values(@1,@2)", kn);
            sqlcom.Parameters.AddWithValue("@1", mnh);
            sqlcom.Parameters.AddWithValue("@2", mh);
    
            sqlcom.ExecuteNonQuery();
            kn.Close();

        }


        public DataTable GetListbydanhmuc1(string id)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from loaihang where manhomhang='" + id + "'", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }

        public void delete1(string mh)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("delete from danhmuc where manhomhang='" + mh + "' ", kn);
            sqlcom.ExecuteNonQuery();
            sqlcom = new SqlCommand("delete from loaihang where manhomhang='" + mh + "' ", kn);
            sqlcom.ExecuteNonQuery();


            kn.Close();

        }


        ////////////////////////QL chi tieté hóa dodưn
        

        public DataTable GetListcthd()
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from chitiethoadon", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }
        public void Insertcthd(string mnh, string mh, string namegoods, int count, string dvt,bool trphi, int tt)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("insert into chitiethoadon values(@1,@2,@3,@4,@5,@6,@7)", kn);
            sqlcom.Parameters.AddWithValue("@1", mnh);
            sqlcom.Parameters.AddWithValue("@2", mh);
            sqlcom.Parameters.AddWithValue("@3", namegoods);
            sqlcom.Parameters.AddWithValue("@4", count);
            sqlcom.Parameters.AddWithValue("@5", dvt);
            sqlcom.Parameters.AddWithValue("@6", trphi);
            sqlcom.Parameters.AddWithValue("@6", tt);
            sqlcom.ExecuteNonQuery();
            kn.Close();

        }


        public void deletecthd(string mh)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            sqlcom = new SqlCommand("delete from chitiethoadon where mahd='" + mh + "' ", kn);
            sqlcom.ExecuteNonQuery();
            sqlcom = new SqlCommand("delete from hoadon where mahd='" + mh + "' ", kn);
            sqlcom.ExecuteNonQuery();


            kn.Close();

        }


        public void Updatecthd(int soluong ,bool traphi, string dk)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            sqlcom = new SqlCommand("update  chitiethoadon set soluong='" + soluong + "',traphi='" + traphi + "' where mahd='" + dk + "' ", kn);

            sqlcom.ExecuteNonQuery();
            kn.Close();


        }

        public DataTable GetListbycthd(string id)
        {
            kn = new SqlConnection(ckn);
            kn.Open();

            SqlDataAdapter adapter = new SqlDataAdapter("select * from chitiethoadon where mahd='" + id + "'", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }

    }
}