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
public partial class AdminUser : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMachine();
        }
    }
    private void BindMachine()
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AddMember.aspx");
    }
}