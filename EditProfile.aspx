<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
img
{
    margin-top:30%;
    border:none;
    border-radius:100%;
    width:60%;
    margin-left:10%;
    margin-bottom:10%;
    height:40%;
}
.img1
{
    margin:30%;
    font-size:16px;
    
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
    outline-color: rgb(84 155 212 / 0.4);
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(90, 90, 97, 0.26) 0px 0px 0px 1px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px, 
                rgba(0, 0, 0, 0) 0px 0px 0px 0px;
}
.item
{
    margin-right:3%;
    margin-left:3%;
}
.cbl
{
    padding-left:30%;
    margin-right:10%;
    width:100%;
    height:100%;

}
.subclass1
{
    margin-top:7%;
    width:30%;
}
.subclass
{
    margin-top:7%;
}
.btn3
{
    margin-left:3%;
    width:20%;
    height:50px;
    color:White;
    background:purple;
}
</style>

<div class="profile" style="display:flex">
    <div class="subclass1">
      <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
            <img src="Images/ProfileImages/<%# Eval("UID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"
                                            alt="No Profile"/>
         </ItemTemplate>
    </asp:Repeater>
    <br />
        <asp:Label ID="Label1" class="img1" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="subclass">
        <div class="field padding-bottom--24 " style="display:flex;">
            <div class="item">
                 <label><h4><b>Profile Settings</b></h4></label>
                 <hr />
             </div>
        </div>
        <div class="field padding-bottom--24 " style="display:flex;">
        
            <div class="item">
                <label>First Name</label>
                <asp:TextBox ID="txtUName" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Name" ControlToValidate="txtUName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="item">
                <label>Email ID.</label>
                <asp:TextBox ID="txtEmail" runat="server" class="input"></asp:TextBox>
                <div style="display:flex">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Email id is incorrect" ControlToValidate="txtEmail" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                         ></asp:RegularExpressionValidator>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
            </div>
        
        </div>

        <div class="field padding-bottom--24 " style="display:flex;">
            <div class="item">
                <label>Contact</label>
                <asp:TextBox ID="txtContact" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Contact" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="item">
               <label> Your Birth Date</label>
                <asp:TextBox ID="txtBdate" runat="server" class="input" TextMode="Date" 
                   ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Birthdate" ControlToValidate="txtBdate" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="field padding-bottom--24 " style="display:flex;">
            <div class="item">
                <label>Address</label>
                <asp:TextBox ID="txtAddress" runat="server"  class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Address" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="item">
                <label>Pincode</label>
                <asp:TextBox ID="txtPincode" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Pincode" ControlToValidate="txtPincode" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="field padding-bottom--24 " style="display:flex;">
            <div class="item">
                <label>Weight</label>
                <asp:TextBox ID="txtWeight" runat="server"  class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Weight" ControlToValidate="txtWeight" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="item">
                <label>Height</label>
                <asp:TextBox ID="txtHeight" runat="server" class="input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Height" ControlToValidate="txtHeight" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
   
   <div class="field padding-bottom--24 " style="display:flex;">
        <div class="item">
        <label><h5><b>Upload Your Profile Picture</b></h5></label>
            <asp:FileUpload ID="fuImg01" runat="server" class="input"/>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass ="text-danger " ErrorMessage="*please Choose File" ControlToValidate="fuImg01" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
      
    </div>

    <div>
          <asp:Button ID="Button1" runat="server" class="btn3" Text="Save Profile" 
              onclick="Button1_Click" />
    </div>
           
    </div>
   
    </div>
 
</asp:Content>

