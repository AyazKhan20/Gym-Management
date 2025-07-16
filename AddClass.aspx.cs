using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class AddClass : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
   
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblClass(CName,TName,Stime,Etime,Price) Values('" + txtCName.Text + "','" + txtTName.Text + "','" + txtSTime.Text + "','" + txtETime.Text + "','" + txtPrice.Text + "')", con);
            cmd.ExecuteNonQuery();

            //Response.Write("<script> alert('Registration Successfully done');  </script>");

            //con.Close();
            SqlCommand cmd1 = new SqlCommand("select CID from tblClass where CName='" + txtCName.Text + "'", con);

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 CID = Convert.ToInt64(cmd1.ExecuteScalar());


            //Insert and upload images
            if (fulImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ClassImages/") + CID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fulImg01.PostedFile.FileName);
                fulImg01.SaveAs(SavePath + "\\" + txtCName.Text.ToString().Trim() + "01" + Extension);

                //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                SqlCommand cmd3 = new SqlCommand("insert into tblClassImages(CID,Name,Extension) values(@CID,@Name,@Extension)", con);
                cmd3.Parameters.AddWithValue("@CID", Convert.ToInt32(CID));
                cmd3.Parameters.AddWithValue("@Name", txtCName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extension", Extension);
                cmd3.ExecuteNonQuery();
                Response.Write("<script> alert('Class Added Successfully ');  </script>");
            }
        }
    }
}