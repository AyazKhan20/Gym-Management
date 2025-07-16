using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;


public partial class Membership : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (RadioButton3.Checked)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

    }

    protected void btnMembership_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            String Paid = "Paid";
            SqlCommand cmd = new SqlCommand("Insert into tblMembership(Name,Email,Mno,Jdate,PID,Height,weight,CardName,CardNo,ExpiaryDate,CCV,Amount) Values('" + txtUName.Text + "','" + txtEmail.Text + "','" + txtMno.Text + "','" + txtJdate.Text + "','" + ddlPackage.Text + "','" + txtHeight.Text + "','" + txtWeight.Text + "','" + txtCardName.Text + "','" + txtCardNo.Text + "','" + txtDate.Text + "','" + txtCCV.Text + "','" + txtAmount.Text + "')", con);
            cmd.ExecuteNonQuery();

            String myGUID = Guid.NewGuid().ToString();

            //Send Reset link via Email

            String ToEmailAddress = txtEmail.Text;
            String Username = txtUName.Text;
            String EmailBody = "Hi ," + Username + ",<br/><br/> Your Membership In HA Fitness Club Successfully Done.<br/>Now,You are Member of HA Fitness Club. You can join us on Monday.<br/> Thank You";


            MailMessage PassRecMail = new MailMessage("hafitnessclub20@gmail.com", ToEmailAddress);
            PassRecMail.Body = EmailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "MemberShip Approved";

            SmtpClient client = new SmtpClient();

            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("hafitnessclub20@gmail.com", "qjzm sqaf zcsi ehmq");
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;

            client.Send(PassRecMail);



            //--------------

            Response.Write("<script> alert('Your Membership Successfully Done');  </script>");


        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            String Cash = "Cash";
            SqlCommand cmd = new SqlCommand("Insert into tblMembership(Name,Email,Mno,Jdate,PID,Height,weight,Amount) Values('" + txtUName.Text + "','" + txtEmail.Text + "','" + txtMno.Text + "','" + txtJdate.Text + "','" + ddlPackage.Text + "','" + txtHeight.Text + "','" + txtWeight.Text + "','" + txtAmount.Text + "')", con);
            cmd.ExecuteNonQuery();

            String myGUID = Guid.NewGuid().ToString();

            //Send Reset link via Email

            String ToEmailAddress = txtEmail.Text;
            String Username = txtUName.Text;
            String EmailBody = "Hi ," + Username + ",<br/><br/> Your Membership In HA Fitness Club Successfully Done.<br/>Now,You are Member of HA Fitness Club. You can join us on Monday.<br/> Thank You";


            MailMessage PassRecMail = new MailMessage("hafitnessclub20@gmail.com", ToEmailAddress);
            PassRecMail.Body = EmailBody;
            PassRecMail.IsBodyHtml = true;
            PassRecMail.Subject = "MemberShip Approved";

            SmtpClient client = new SmtpClient();

            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("hafitnessclub20@gmail.com", "qjzm sqaf zcsi ehmq");
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;

            client.Send(PassRecMail);



            //--------------

            Response.Write("<script> alert('Your Membership Successfully Done');  </script>");


        }
    }
}