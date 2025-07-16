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

public partial class EditProfile : System.Web.UI.Page
{

    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        String User = Session["Username"].ToString();
        if (Session["Username"] != null)
        {
            Repeater1.Visible = true;
            BindProfileRepeater();
            Label1.Text = User;
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
        using (SqlConnection con = new SqlConnection(CS))
        {
            try
            {
                con.Open();
                if (!IsPostBack)
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM tblUser WHERE Username='" + User + "'", con);
                    SqlDataReader da = cmd.ExecuteReader();
                    while (da.Read())
                    {
                        txtUName.Text = da.GetValue(1).ToString();
                        txtEmail.Text = da.GetValue(2).ToString();
                        txtContact.Text = da.GetValue(4).ToString();
                        txtBdate.Text = da.GetValue(5).ToString();
                        txtAddress.Text = da.GetValue(6).ToString();
                        txtPincode.Text = da.GetValue(7).ToString();
                        txtWeight.Text = da.GetValue(8).ToString();
                        txtHeight.Text = da.GetValue(9).ToString();

                        String s1, s2;
                        s1 = da.GetValue(1).ToString();
                        s2 = da.GetValue(2).ToString();
                        String s3 = s1 + " " + s2;
                        Label1.Text = s3;
                    }
                    da.Close();
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
    private void BindProfileRepeater()
    {
        String User = Session["Username"].ToString();
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd4 = new SqlCommand("select distinct UID from tblUser where Username='" + User + "'", con);

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 UID = Convert.ToInt64(cmd4.ExecuteScalar());

            using (SqlCommand cmd1 = new SqlCommand("select * from tblUser a,tblProfileImages b where a.UID='" + UID + "' and b.UID='" + UID + "'", con))
            {
                using (SqlDataAdapter sda1 = new SqlDataAdapter(cmd1))
                {
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    Repeater1.DataSource = dt1;
                    Repeater1.DataBind();

                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("update tblUser set Email='" + txtEmail.Text + "' where  Username='" + txtUName.Text + "'", con);
            cmd.ExecuteNonQuery();

            SqlCommand cmd1 = new SqlCommand("select UID from tblUser where Username='" + txtUName.Text + "'", con);

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 PID = Convert.ToInt64(cmd1.ExecuteScalar());

            //Insert and upload images
            if (fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProfileImages/" + PID);
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extension = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtUName.Text.ToString().Trim() + "01" + Extension);

                SqlCommand cmd4 = new SqlCommand("select UID from tblUser where Username='" + txtUName.Text + "'", con);

                if (con.State == ConnectionState.Closed) { con.Open(); }
                Int64 UID = Convert.ToInt64(cmd4.ExecuteScalar());

                SqlCommand cmd3 = new SqlCommand("update tblProfileImages set Name=@Name,Extension=@Extension where UID='" + UID + "'", con);
                cmd3.Parameters.AddWithValue("@Name", txtUName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extension", Extension);
                cmd3.ExecuteNonQuery();
                Response.Redirect("editprofile.aspx");
                Response.Write("<script> alert('Profile Updated Successfully ');  </script>");

            }
            con.Close();

        }

    }
}