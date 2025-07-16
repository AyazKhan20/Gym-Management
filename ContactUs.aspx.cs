using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ContactUs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open(); 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblContactUs Values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMsg.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('Your Message Sent Successfully ');  </script>");

        txtName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtMsg.Text = string.Empty;


        con.Close();

        //lblMsg.Text = "Registration Successfully done";
        //lblMsg.ForeColor = System.Drawing.Color.Green;
        txtName.Focus();
        txtEmail.Focus();
        txtMsg.Focus();
    }
}