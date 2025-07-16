<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Freetrial.aspx.cs" Inherits="Freetrial" %>

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
.formbg
{
    width:80%;
    margin-left:7%;
    margin-top:3%;
    margin-bottom:3%;
    display:flex;
    border:1px solid #DFDFDF;
}
.content1
{
    width:80%;
    padding:10px;
}
span {
    display: block;
    font-size: 20px;
    line-height: 28px;
    color: #1a1f36;
}
label {
    margin-bottom: 10px;
}

.input {
    font-size: 16px;
    line-height: 28px;
    padding: 8px 16px;
    width: 100%;
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
    margin:40px;
    width:100%;
    display:flex;
}
.content
{
    padding:10px;
    
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
    margin-top:10px;
    min-height: 44px;
}
img
{
    width:97%;
    height:100%;
} 
</style>
</head>

<body>
<br />
<br />
<br />
 <div class="formbg">
  <div class="content">
      <img src="home/free%20.jpg" />
  </div>
     <div class="content1">
              <div class="field padding-bottom--24">
                   <label>User Name</label>
                   <asp:TextBox ID="txtUName" runat="server" class="input"></asp:TextBox>  
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter User Name" ControlToValidate="txtUName" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
                
              <div class="field padding-bottom--24">
                  <label>Email</label> 
                  <asp:TextBox ID="txtEmail" runat="server" class="input"></asp:TextBox> 
                   
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage=" Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  ControlToValidate="txtEmail" ></asp:RegularExpressionValidator>
           
              </div>
              
             
             <div class="field padding-bottom--24">
                    <label>Mobile NO</label>  
                    <asp:TextBox ID="txtMno" runat="server" class="input" ></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Mobile NO" ControlToValidate="txtMno" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

             <div class="field padding-bottom--24">
                    <label>Date</label>   
                    <asp:TextBox ID="txtDate" runat="server" class="input" TextMode="Date"></asp:TextBox>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Date" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            
            <div class="field padding-bottom--24">
                    <asp:Button ID="btnAdd" runat="server" class="submit1" Text="Apply" 
                        onclick="btnAdd_Click1"   />
               
                </div>

      
    </div>
    </div>



</asp:Content>