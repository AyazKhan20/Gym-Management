using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


public partial class AddList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open(); 
    }
   
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Insert into tblList(CName,Day,Time) Values('" + DropDownList1.SelectedItem.Value + "','" + txtSTime.Text + "','" + txtDay.Text + "')", con);
        cmd.ExecuteNonQuery();

        Response.Write("<script> alert('List Added Successfully ');  </script>");
        DropDownList1.SelectedItem.Value = string.Empty;
        txtSTime.Text = string.Empty;
        txtDay.Text = string.Empty;
       

        con.Close();

        //lblMsg.Text = "Registration Successfully done";
        //lblMsg.ForeColor = System.Drawing.Color.Green;
        DropDownList1.Focus();
        txtSTime.Focus();

        txtDay.Focus();
        txtDay.Focus();
    }
}