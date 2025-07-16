<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminClass.aspx.cs" Inherits="AdminClass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<style>
.mydatagrid
{
width:94%;
background-color:White;
margin-left:50px;
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
.header1
{
    width:80%;
    font-weight: bold;
margin-left:-60px;
background-color: #F0F0F0;
font-family: Arial;
color: black;
border: none 0px transparent;
height: 70px;
padding:30px;
text-align: center;
font-size: 16px;
}
.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
height: 100px;
text-align: center;
border: none 0px transparent;
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
padding: 10px;
width:100%;
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
    margin-left:75%;
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
.Machine
{
    display:flex;
}
img
{
    width:60%;
    height:40%;
    margin-top:10px;
   }
.M
{
    width:30%;
}
</style>
</head>
<body>
<div class="formbg">

    <div class="addbtn">
           <asp:Button ID="Button2" class="btnn" runat="server" Text=" +  Add Class " onclick="Button2_Click"    />
         
    </div>
     <div class="Machine">
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="CID" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Horizontal" CssClass="mydatagrid" 
        PagerStyle-CssClass="pager" BorderStyle="None" 
        HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
        CommandStyle-cssClass="dlt" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                ReadOnly="True" SortExpression="CID" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
            <asp:BoundField DataField="TName" HeaderText="TName" SortExpression="TName" />
            <asp:BoundField DataField="Stime" HeaderText="Stime" SortExpression="Stime" />
            <asp:BoundField DataField="Etime" HeaderText="Etime" SortExpression="Etime" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
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
        SelectCommand="SELECT * FROM [tblClass]"
        UpdateCommand="UPDATE [tblClass] set CName=@CName,TName=@TName,Stime=@Stime,Etime=@Etime,Price=@Price where CID=@CID"
        DeleteCommand="delete from [tblClass] where CID=@CID"></asp:SqlDataSource>

         </div>
        <div class="M">
        <div class="header1">
            IMAGE
        </div>
          <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                 <img src="Images/ClassImages/<%# Eval("CID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"
                                            alt="<%# Eval("Name") %>" />
            </ItemTemplate>
         </asp:Repeater>
        </div>

</asp:Content>


