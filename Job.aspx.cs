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

public partial class Job : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();

            SqlCommand cmd = new SqlCommand("Insert into tblJob(FName,LName,Phone,Bdate,Address,Pincode,RName,RPhone) Values('" + txtFName.Text + "','" + txtLName.Text + "'," + txtPhone.Text + ",'" + txtBdate.Text + "','" + txtAddress.Text + "'," + txtPincode.Text + ",'" + txtRName.Text + "'," + txtRPhone.Text + ")", con);

           
            string fname = file1.FileName;
            string flocation = "~/Resumes/";
            string pathstring = System.IO.Path.Combine(flocation, fname);

            //     SqlCommand cmd = new SqlCommand("Insert into tblJob(FName,LName,Email,Phone,Bdate,Address,Pincode,RName,REmail,RPhone) Values('" + txtFName.Text + "','" + txtLName.Text + "','" + txtEmail.Text + "'," + txtPhone.Text + ",'" + txtBdate.Text + "','" + txtAddress.Text + "'," + txtPincode.Text + ",'" + txtRName.Text + "','" + txtREmail.Text + "'," + txtRPhone.Text + ")", con);

            var st = new tblJob
            {
                FileName = txtFileName.Text,
                FileLocation = pathstring,

            };
            db.tblJobs.InsertOnSubmit(st);
            db.SubmitChanges();
            file1.SaveAs(MapPath(pathstring));
            
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Job Request Send')</script>");
            con.Close();
        }
    }
}