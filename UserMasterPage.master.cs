using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserMasterPage : System.Web.UI.MasterPage
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            //lblSuccess.Text = "Login Success, Welcome <b>" + Session["Username"].ToString() + "</b>";
            btnlogout.Visible = true;
            btnSignUP.Visible = false;
            Button1.Visible = true;
            Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
            //Button1.Text = "Welcome: " + Session["Username"].ToString().ToUpper();
        }
        else
        {
            Button1.Visible = false;
            btnlogout.Visible = false;
            btnSignUP.Visible = true;
            // Response.Redirect("~/SignUp.aspx");

        }
    }

    protected void btnSignUP_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignUp.aspx");
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;

        Response.Redirect("~/Home.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String User = Session["Username"].ToString();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select UID from tblUser where username='" + User + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Int64 UID = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Redirect("~/EditProfile.aspx?UID='" + UID + "'");
            }
        }
    }
}