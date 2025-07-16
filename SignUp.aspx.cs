using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        lblMsg.Visible = false;
    }
    protected void btnSign_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tbluser(Username,Email,Password) Values('" + txtUname.Text + "','" + txtEmail.Text + "','" + txtPass.Text + "')", con);
            cmd.ExecuteNonQuery();


            Response.Write("<script> alert('Registration Successfully done');  </script>");

            con.Close();

            lblMsg.Text = "Registration Successfully done";
            lblMsg.ForeColor = System.Drawing.Color.Green;
            Session["email"] = txtEmail.Text;

           

        }
        Response.Redirect("~/SignIn.aspx");
    }
}