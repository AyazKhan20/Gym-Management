using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




public partial class AddShift : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblShift Values('" + txtSName.Text + "','" + txtStime.Text + "','" + txtEtime.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('Shift Added Successfully ');  </script>");
        txtSName.Text = string.Empty;
        txtStime.Text = string.Empty;
        txtEtime.Text = string.Empty;

        con.Close();

        //lblMsg.Text = "Registration Successfully done";
        //lblMsg.ForeColor = System.Drawing.Color.Green;
        txtSName.Focus();
        txtStime.Focus();
        txtEtime.Focus();
    }
}