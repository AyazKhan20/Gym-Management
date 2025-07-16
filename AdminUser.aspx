<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminUser.aspx.cs" Inherits="AdminUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<style>
.mydatagrid
{
width:94%;
background-color:White;
margin-left:0px;
}
.header
{
background-color: #F0F0F0;
font-family: Arial;
color: black;
border: none 0px transparent;
height: 15px;
text-align: center;
font-size: 16px;
}
.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 15px;
text-align: center;
border: none 0px transparent;
}
.rows:hover
{
background-color: lightgrey;
font-family: Arial;
color: #fff;

}
.selectedrow
{
background-color: #ff8000;
font-family: Arial;
color: #fff;
font-weight: bold;

}
.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #fff;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
background-color: #c9c9c9;
color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #646464;
font-family: Arial;
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{

padding-top: 10px;
padding-bottom:10px;
border-bottom:1px solid #F0F0F0;
}
.mydatagrid th
{
padding: 10px;
}
.formbg {
    margin: 0px auto;
    width: 97%;
    padding:30px;
    background: white;
    border-radius: 4px;
    box-shadow: rgba(60, 66, 87, 0.12) 0px 7px 14px 0px, rgba(0, 0, 0, 0.12) 0px 3px 6px 0px;
}

.btnn 
{
    width:130px;
    height:50px;
    background-color:green;
    border:none;
    border-radius:5px;
    color:White;
    font-size:15px;
    margin-bottom:20px;
    margin-left:700px;
}
.btnEdit
{
    width:60px;
    height:30px;
    border-radius:5px;
    border:none;
    background-color:#0099F0;
    color:White;
}
.btnDlt
{width:60px;
    height:30px;
    border-radius:5px;
    border:none;
    background-color:red;
    color:White;
}
    
</style>
</head>
<body>
<div class="formbg">

    <div class="addbtn">
           <asp:Button ID="Button2" class="btnn" runat="server" Text=" +  Add Member " 
               onclick="Button2_Click"     />
         
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="UID" DataSourceID="SqlDataSource1" 
       ForeColor="Black" GridLines="Horizontal" CssClass="mydatagrid" 
        PagerStyle-CssClass="pager" BorderStyle="None" 
        HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
        CommandStyle-cssClass="dlt" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" 
                ReadOnly="True" SortExpression="UID" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
              <asp:BoundField DataField="Addr" HeaderText="Addr" SortExpression="Addr" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" 
                SortExpression="Weight" />
            <asp:BoundField DataField="Height" HeaderText="Height" 
                SortExpression="Height" />
                  <asp:CommandField ButtonType="Button" HeaderText="Edit Record" 
                ShowEditButton="True">
            <ControlStyle CssClass="btnEdit" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
            <ControlStyle CssClass="btnDlt" />
            </asp:CommandField>
        
        </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
      <HeaderStyle CssClass="header"></HeaderStyle>
<PagerStyle CssClass="pager"></PagerStyle>

<RowStyle CssClass="rows"></RowStyle>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        
        SelectCommand="SELECT [UID], [Username], [Email], [Contact], [Addr], [Weight], [Height] FROM [tblUser]"
        UpdateCommand="UPDATE [tblUser] set Username=@Username,Email=@Email,Contact=@Contact,Addr=@Addr,Weight=@Weight,Height=@Height where UID=@UID"
        DeleteCommand="delete from [tblUser] where UID=@UID">
        </asp:SqlDataSource>

</asp:Content>



