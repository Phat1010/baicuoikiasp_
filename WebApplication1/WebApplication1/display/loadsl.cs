using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication1.display
{
    public class loadsl
    {
        string ckn = @"Data Source=Z-PC\SQLEXPRESS;Initial Catalog=QLVLXD;Integrated Security=True";
        SqlConnection kn;
        SqlCommand cmd;
        SqlDataReader sqlReder;
        public int sl(string th)//trong thư viện sqldb sd đối tượng trong ADO.NET như sqlCOmmand , dataSET datatable, connection
        {
            kn = new SqlConnection(ckn);
            kn.Open();
             cmd = new SqlCommand("select soluong from danhmuc where mahang='"+th+"'", kn);
             sqlReder = cmd.ExecuteReader();
            int sl = 0;
            if(sqlReder.Read())
            {
                 sl = sqlReder.GetInt32(0);
            }
            return sl;
           
        }

        public void Inserthd(string mahd, DateTime nx, string makh)
        {
            
            kn = new SqlConnection(ckn);
            kn.Open();
            cmd = new SqlCommand("insert into hoadon values(@1,@2,@3)", kn);
            cmd.Parameters.AddWithValue("@1", mahd);
            cmd.Parameters.AddWithValue("@2", nx);
            cmd.Parameters.AddWithValue("@3", makh);

            cmd.ExecuteNonQuery();
            kn.Close();
            
        }


        public int mahd()//trong thư viện sqldb sd đối tượng trong ADO.NET như sqlCOmmand , dataSET datatable, connection
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            cmd = new SqlCommand("select count(mahd) from hoadon", kn);
             sqlReder = cmd.ExecuteReader();
            int count = 0;
            if (sqlReder.Read())
            {
                count = sqlReder.GetInt32(0);
            }
            return count+1;
            
        }
        public void Insertcthd(string mahd, string mh, string th, int sl, string dvt, int tp, int tt, int slconlai)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            cmd = new SqlCommand("insert into chitiethoadon values(@1,@2,@3,@4,@5,@6,@7)", kn);
            cmd.Parameters.AddWithValue("@1", mahd);
            cmd.Parameters.AddWithValue("@2", mh);
            cmd.Parameters.AddWithValue("@3", th);
            cmd.Parameters.AddWithValue("@4", sl);
            cmd.Parameters.AddWithValue("@5", dvt);
            cmd.Parameters.AddWithValue("@6", tp);
            cmd.Parameters.AddWithValue("@7", tt);
            cmd.ExecuteNonQuery();


           
            SqlCommand updatesl = new SqlCommand("update danhmuc set soluong = @sl where mahang =@th", kn);
            updatesl.Parameters.AddWithValue("@sl", slconlai);
            updatesl.Parameters.AddWithValue("@th", mh);
            //up lại số lượng
            updatesl.ExecuteNonQuery();

            kn.Close();

        }


        public void register(string makh, string mk)
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            cmd = new SqlCommand("insert into account values(@1,@2)", kn);
            cmd.Parameters.AddWithValue("@1", makh);
            cmd.Parameters.AddWithValue("@2", mk);
       
            cmd.ExecuteNonQuery();
            kn.Close();

        }

        public int login(string makh, string mk)
        { string taikhoan = "";
            string matkhau = "";
            int kt = 0;

            kn = new SqlConnection(ckn);
            kn.Open();
            cmd = new SqlCommand("select * from account", kn);
            sqlReder = cmd.ExecuteReader();
            while (sqlReder.Read())
            {
                taikhoan = sqlReder.GetString(0);
                matkhau = sqlReder.GetString(1);
                if (makh.Equals(taikhoan) && mk.Equals(matkhau))
                {
                    kt = 1;
                }
            }
            return kt;

        }

        public DataTable xuatthongtin(string makh)//trong thư viện sqldb sd đối tượng trong ADO.NET như sqlCOmmand , dataSET datatable, connection
        {
            kn = new SqlConnection(ckn);
            kn.Open();
            
            SqlDataAdapter adapter = new SqlDataAdapter("select  makh,chitiethoadon.mahd,   ngayxuathd, mahang,tenhang, soluong, donvitinh, traphi, tongtien   from hoadon,chitiethoadon   where hoadon.mahd=chitiethoadon.mahd and makh='"+makh+"'", kn);
            SqlCommandBuilder bd = new SqlCommandBuilder(adapter);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            return ds.Tables[0];
        }



    }
}