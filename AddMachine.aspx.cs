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

public partial class AddMachine : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    
    protected void  btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblMachines(MName,Descr,Qty) Values('" + txtMName.Text + "','" + txtDesc.Text + "','" + txtQty.Text + "')", con);
            cmd.ExecuteNonQuery();

            //Response.Write("<script> alert('Registration Successfully done');  </script>");

            //con.Close();
            SqlCommand cmd1 = new SqlCommand("select MID from tblMachines where MName='" + txtMName.Text + "'", con);

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 MID = Convert.ToInt64(cmd1.ExecuteScalar());


            //Insert and upload images
            if (fulImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/MachinesImages/") + MID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fulImg01.PostedFile.FileName);
                fulImg01.SaveAs(SavePath + "\\" + txtMName.Text.ToString().Trim() + "01" + Extension);

                //SqlCommand cmd3 = new SqlCommand("insert into tblProductImages values('" + PID + "','" + txtProductName.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                SqlCommand cmd3 = new SqlCommand("insert into tblMachineImage(MID,Name,Extension) values(@MID,@Name,@Extension)", con);
                cmd3.Parameters.AddWithValue("@MID", Convert.ToInt32(MID));
                cmd3.Parameters.AddWithValue("@Name", txtMName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extension", Extension);
                cmd3.ExecuteNonQuery();
                Response.Write("<script> alert('Machines Added Successfully ');  </script>");
            }
        }
    }
}
