<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Job.aspx.cs" Inherits="Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
.img
{
    margin-top:5%;
    width:100%;
    height:10%;
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
.field
{
    margin:20px;
    margin-left:9%;
    margin-right:9%;
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

.btnJob
{
    margin-left:3%;
    width:20%;
    height:100%;
    color:White;
    background:purple;
}
</style>
    <asp:Image ID="Image1" runat="server" class="img" ImageUrl="~/home/job.webp" Height="705px" />
    <div class="field">
        <h2>Apply For a Job</h2>
        <p>Fill the form below accurately indicating your potentials and suitability to job applying for.</p>
        <hr />
    </div>
   <div class="field padding-bottom--24 " style="display:flex;">
        <div class="item">
        <label>First Name</label>
            <asp:TextBox ID="txtFName" runat="server" class="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter First Name" ControlToValidate="txtFName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="item">
            <label>Last Name</label>
            <asp:TextBox ID="txtLName" runat="server" class="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Last Name" ControlToValidate="txtLName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>

    <div class="field padding-bottom--24 " style="display:flex;">
    
        <div class="item">
        <label>Phone Number</label>
            <asp:TextBox ID="txtPhone" runat="server" class="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Phone " ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
         
     </div>

    <div class="field padding-bottom--24 " style="display:flex;">
       <div class="item">
           <label>Birth Date</label>
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
        <label><h6><b>How were You referred to us?</b></h6></label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="112px" class="input"
                RepeatColumns="2" Width="439px">
                <asp:ListItem class="cbl">Walk In</asp:ListItem>
                <asp:ListItem class="cbl">Twitter</asp:ListItem>
                <asp:ListItem class="cbl">News Paper</asp:ListItem>
                <asp:ListItem class="cbl">Others</asp:ListItem>
            </asp:CheckBoxList>
        </div>
   </div>
   
   <div class="field padding-bottom--24 " style="display:flex;">
        <div class="item">
        <label><h5><b>Resume And Files</b></h5></label>
            <asp:FileUpload ID="file1" runat="server" class="input"/>
             <label>File Name</label> <asp:TextBox ID="txtFileName" width="30%" style="margin:20px" runat="server" class="input"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Resume Files Name" ControlToValidate="txtFileName" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Resume Files" ControlToValidate="file1" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
      
    </div>

    
    <div class="field padding-bottom--24 ">
     <div class="item">
       <label><h5><b>References</b></h5></label>

        <div style="display:flex;margin-bottom:3%;">
          <label style="width:20%; margin-left:15%">Name : </label>
            <asp:TextBox ID="txtRName" runat="server"  style="width:50%" class="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Name" ControlToValidate="txtRName" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

      

        <div style="display:flex;margin-bottom:3%;">
          <label style="width:20%; margin-left:15%">Phone Number : </label>
            <asp:TextBox ID="txtRPhone" runat="server"  style="width:50%" class="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" CssClass ="text-danger " ErrorMessage="*please Enter Phone Number" ControlToValidate="txtRPhone" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

      </div>
    </div>
    <div class="field padding-bottom--24 ">
          <asp:Button ID="Button1" runat="server"  class="btnJob" Text="APPLY" onclick="Button1_Click" 
              />
     </div>
    
</asp:Content>

