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


public partial class AddTrainer : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("Insert into tblTrainer(Tname,Exp,Spec,Email,Addr,Mno,Descr) Values('" + txtTName.Text + "','" + txtExp.Text + "','" + txtSpec.Text + "','" + txtEmail.Text + "','" + txtaddr.Text + "'," + txtMno.Text + ",'" + txtDescr.Text + "')", con);
            cmd.ExecuteNonQuery();

            //Response.Write("<script> alert('Registration Successfully done');  </script>");

            //con.Close();
            SqlCommand cmd1 = new SqlCommand("select TID from tblTrainer where TName='" + txtTName.Text + "'", con);

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 TID = Convert.ToInt64(cmd1.ExecuteScalar());


            //Insert and upload images
            if (fulImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/TrainerImages/") + TID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fulImg01.PostedFile.FileName);
                fulImg01.SaveAs(SavePath + "\\" + txtTName.Text.ToString().Trim() + "01" + Extension);

                //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                SqlCommand cmd3 = new SqlCommand("insert into tblTrainerImages(TID,Name,Extension) values(@TID,@Name,@Extension)", con);
                cmd3.Parameters.AddWithValue("@TID", Convert.ToInt32(TID));
                cmd3.Parameters.AddWithValue("@Name", txtTName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extension", Extension);
                cmd3.ExecuteNonQuery();
                Response.Write("<script> alert('Trainer Added Successfully ');  </script>");
            }
        }
    }
}