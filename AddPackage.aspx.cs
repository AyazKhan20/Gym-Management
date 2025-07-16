using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AddPackage : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblPackage(PName,Fees,Descr,Duration) Values('" + txtPName.Text + "','" + txtFees.Text + "','" + txtDesc.Text + "','" + txtDuration.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('Package Added Successfully ');  </script>");

        txtPName.Text = string.Empty;
        txtFees.Text = string.Empty;
        txtDesc.Text = string.Empty;
        txtDuration.Text = string.Empty;

        con.Close();

        //lblMsg.Text = "Registration Successfully done";
        //lblMsg.ForeColor = System.Drawing.Color.Green;
        txtPName.Focus();
        txtFees.Focus();
        txtDesc.Focus();
        txtDuration.Focus();
    }
}