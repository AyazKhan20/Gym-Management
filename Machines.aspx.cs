using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;
using System.Threading;
public partial class Machines : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {


        BindMachineRepeater();

    }
    private void BindMachineRepeater()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("machine", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    MachineRepeater.DataSource = dt;
                    MachineRepeater.DataBind();
                    if (dt.Rows.Count <= 0)
                    {
                        //Label1.Text = "Sorry! Currently no products in this category.";
                        //pCount.InnerHtml = "0";
                        Response.Write("<script>alert('No Request')</script>");
                    }
                    else
                    {
                        //Label1.Text = "Showing All Products";
                    }
                }
            }
        }
    }
}