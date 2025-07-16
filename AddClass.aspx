
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddClass.aspx.cs" Inherits="AddClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--
imagee size
width : 340
height :230--%>
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

.formbg {
    margin: 0px auto;
    width: 100%;
    background: white;
    border-radius: 4px;
    box-shadow: rgba(60, 66, 87, 0.12) 0px 7px 14px 0px, rgba(0, 0, 0, 0.12) 0px 3px 6px 0px;
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
    margin:40px;
    width:100%;
    display:flex;
}
.content
{
    padding:40px;
    
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
}
   
</style>
</head>

<body>

 <div class="formbg">
   <div class="main1">
  
     <div class="content">
               <div class="field padding-bottom--24">
                   <label>Class Name</label>
                   <asp:TextBox ID="txtCName" runat="server" class="input"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Class Name" ControlToValidate="txtCName" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                
                <div class="field padding-bottom--24">
                  <label>Trainer Name</label>
                  <asp:TextBox ID="txtTName" runat="server" class="input"></asp:TextBox> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Trainer" ControlToValidate="txtTName" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
              
             
                 <label>Upload Class Image </label><br /><br />
                 <asp:FileUpload ID="fulImg01" runat="server"  class="input"/>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass ="text-danger " ErrorMessage="*please Choose File" ControlToValidate="fulImg01" ForeColor="Red"></asp:RequiredFieldValidator>
             
     </div>

     <div class="content">
            <div class="field padding-bottom--24">
               <label>Start Time</label>
               <asp:TextBox ID="txtSTime" runat="server" class="input"></asp:TextBox> 
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Start Time" ControlToValidate="txtSTime" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="field padding-bottom--24">
                <label>End Time</label>
                <asp:TextBox ID="txtETime" runat="server" class="input"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter End Time" ControlToValidate="txtETime" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="field padding-bottom--24">
                <label>Price</label>
                <asp:TextBox ID="txtPrice" runat="server" class="input"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter End Time" ControlToValidate="txtETime" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
     
            <div class="field padding-bottom--24">
                <asp:Button ID="btnAdd" runat="server" class="submit1" Text="Add Class" 
                        onclick="btnAdd_Click"  />
               
                </div>

      
    </div>
    </div>



</asp:Content>
