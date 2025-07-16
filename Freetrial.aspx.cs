using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Freetrial : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblFreetrial Values('" + txtUName.Text + "','" + txtEmail.Text + "'," + txtMno.Text + ",'" + txtDate.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('Freetrial applied Successfully ');  </script>");

        txtUName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtMno.Text = string.Empty;
        txtDate.Text = string.Empty;

        con.Close();

        //lblMsg.Text = "Registration Successfully done";
        //lblMsg.ForeColor = System.Drawing.Color.Green;
        txtUName.Focus();
        txtEmail.Focus();
        txtMno.Focus();
        txtDate.Focus();
    }
}