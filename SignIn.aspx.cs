using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = false;
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"] != null && Request.Cookies["UPWD"] != null)
            {
                txtUsername.Text = Request.Cookies["UNAME"].Value;
                txtPass.Text = Request.Cookies["UPWD"].Value;
                CheckBox1.Checked = true;

            }
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString))
        {
            Session["Username"] = txtUsername.Text;
           
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUser where username=@Username and Password=@Password", con);

            cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = txtUsername.Text;
                    Response.Cookies["UPASS"].Value = txtPass.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(10);
                    Response.Cookies["UPASS"].Expires = DateTime.Now.AddDays(10);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["UPASS"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["UID"] = dt.Rows[0][0].ToString().Trim();

                if (con.State == ConnectionState.Closed) { con.Open(); }
                Int64 UID = Convert.ToInt64(cmd.ExecuteScalar());

                SqlCommand cmd2 = new SqlCommand("insert into tblProfileImages(UID) values('" + UID + "')", con);
                cmd2.ExecuteNonQuery();

                string Utype;
                Utype = dt.Rows[0][10].ToString().Trim();

                if (Utype == "User")
                {
                    Session["Username"] = txtUsername.Text;
                    Session["LoginType"] = "User";
                    Response.Redirect("~/Home.aspx");

                }
                if (Utype == "Admin")
                {
                    Session["Username"] = txtUsername.Text;
                    Session["LoginType"] = "Admin";
                    Response.Redirect("~/Dashboard.aspx");
                }


            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Invalid Username and Password";
            }
            cmd.ExecuteNonQuery();

            //Response.Write("<script> alert('Login Successfully done');  </script>");
            clr();
            con.Close();
            //lblMsg.Text = "Login Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;

        }
    }

    private void clr()
    {
        txtPass.Text = string.Empty;
        txtUsername.Text = string.Empty;
        txtUsername.Focus();

    }


}