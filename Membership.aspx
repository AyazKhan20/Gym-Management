<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Membership.aspx.cs" Inherits="Membership" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix Login Page | CodingNepal</title>
<style>

h1 {
    letter-spacing: -1px;
}
a {
  color: #5469d4;
  text-decoration: unset;
}
.trainer
{
    margin-top:4%;
}
.formbg {
   width:100%;
    margin-bottom:3%;
    display:flex;
}
label {
    margin-bottom: 10px;
}

.field .input {
    font-size: 16px;
    line-height: 28px;
    padding: 8px 16px;
    width: 100%;
    min-height: 44px;
    border: unset;
    border-radius: 4px;
    outline-color: rgb(84 105 212 / 0.5);
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(60, 66, 87, 0.16) 0px 0px 0px 1px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px;
}

.main1
{
    margin:10px;
    width:100%;
    display:flex;
}
.content
{
       width:80%;
    padding:20px;
    
}
.submit1
{ 
    border-radius: 4px;
    line-height: 28px;
    background-color: rgb(84, 105, 212);
    box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0.12) 0px 1px 1px 0px, 
                rgb(84, 105, 212) 0px 0px 0px 1px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(60, 66, 87, 0.08) 0px 2px 5px 0px;
    color: #fff;
    font-weight: 600;
     padding: 8px 16px;
    width: 60%;
    margin-left:130px;
    margin-top:30px;
    min-height: 44px;
    margin-bottom:50px;
}
.rdbtn
{
    margin-top:30px;
    margin-left:60px;
    margin-right:20px;
}
.content1
{
    display:flex;
}
</style>
</head>

<body>
<div class="trainer">
<h3>Add Your Personal Details</h3>
     <br />
     
 <div class="formbg">
 
   <div class="main1">
   
     <div class="content">
               <div class="field padding-bottom--24 ">
                   <label>Your Name</label>
                   <asp:TextBox ID="txtUName" runat="server" class="input"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Name" ControlToValidate="txtUName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
                <div class="field padding-bottom--24">
                  <label>Email</label>
                  <asp:TextBox ID="txtEmail" runat="server" class="input"></asp:TextBox> 
                  <div style="display:flex">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Email id is incorrect" ControlToValidate="txtEmail" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                         ></asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
              
             
                 <div class="field padding-bottom--24">
                  <label>Mobile No</label>
                  <asp:TextBox ID="txtMno" runat="server" class="input"></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Mobile Number" ControlToValidate="txtMno" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>

                <div class="field padding-bottom--24">
                  <label>Trainer</label>
                <div class="input">
             
                <asp:RadioButton ID="RadioButton1" runat="server"  class="rdbtn" GroupName="a" Text="With Trainer" />
            <br />
                <asp:RadioButton ton ID="RadioButton2" runat="server" class="rdbtn" GroupName="a" Text="Without Trainer" />
              </div>
               
            </div>
             
     </div>

     <div class="content">
            <div class="field padding-bottom--24">
               <label>Join Date</label>
               <asp:TextBox ID="txtJdate" runat="server" class="input" TextMode="Date"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Join Date" ControlToValidate="txtJdate" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="field padding-bottom--24">
                <label>Package </label>
                <asp:DropDownList ID="ddlPackage" runat="server" class="input" 
                    DataSourceID="SqlDataSource1" DataTextField="PName" DataValueField="PName">
                </asp:DropDownList>
  
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:conn %>" 
                    SelectCommand="SELECT [PName] FROM [tblPackage]"></asp:SqlDataSource>
  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Package" ControlToValidate="ddlPackage" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

             <div class="field padding-bottom--24">
               <label>Height</label>
               <asp:TextBox ID="txtHeight" runat="server" class="input"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Height " ControlToValidate="txtHeight" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="field padding-bottom--24">
               <label>Weight</label>
               <asp:TextBox ID="txtWeight" runat="server" class="input"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Weight " ControlToValidate="txtWeight" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
      </div>
    
    <div class="content">
      <img src="home/member.png" />
   </div>
    </div>
</div>
</div>
<div>
<div class="trainer">
    <h3>Select Payment Type</h3>
    <br />
    <div class="main1">
        <div class="content" style="width:45%;">
            <img src="home/pay.jpg" />
        </div>
        <div class="content">
            <asp:RadioButton ID="RadioButton3" runat="server" style="margin-left:35%;" 
                class="rdbtn" GroupName="b" Text="Credit Card" AutoPostBack="True" 
                Checked="True" />
            <asp:RadioButton ID="RadioButton4" runat="server"  class="rdbtn" GroupName="b" 
                Text="Cash" oncheckedchanged="RadioButton4_CheckedChanged" />
           <asp:Panel ID="Panel1" runat="server">
            
            <div class="content1">
            <div class="content">
               <div class="field padding-bottom--24 ">
                   <label>Card Name</label>
                   <asp:TextBox ID="txtCardName" runat="server" class="input"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Card Name" ControlToValidate="txtCardName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
                <div class="field padding-bottom--24">
                  <label>Card No.</label>
                  <asp:TextBox ID="txtCardNo" runat="server" class="input"></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Card No" ControlToValidate="txtCardNo" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
             </div>

            <div class="content">
                 <div class="field padding-bottom--24">
                  <label>Expiary Date</label>
                  <asp:TextBox ID="txtDate" runat="server" class="input" TextMode="Date"></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Expiary Date" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>

                <div class="field padding-bottom--24">
                  <label>CCV</label>
                  <asp:TextBox ID="txtCCV" runat="server" class="input"></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter CVV" ControlToValidate="txtCCV" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
            </div>
             <div class="content">
                 <div class="field padding-bottom--24">
                  <label>Amount</label>
                  <asp:TextBox ID="txtAmount" runat="server" class="input" ></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Expiary Date" ControlToValidate="txtAmount" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
               </div>
            </div>
         </asp:Panel>
           
        </div>
    </div>

</div>
</div>
<div class="b" style="margin-left:-20px;">
    <div class="field padding-bottom--24">
        <asp:Button ID="btnMembership" runat="server" style="width:20%;" class="submit1" Text="Submit" onclick="btnMembership_Click"/>
     </div>    
</div>     
</body>
</html>


</asp:Content>
