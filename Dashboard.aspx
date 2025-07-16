<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
<head >
    <link href="css/admin_dashboard.css" rel="stylesheet" type="text/css" />
    <link href="css/admin_dashboard_responsive.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
 .mydatagrid
{
width:100%;
background-color:White;
}
.header
{
background-color: #F0F0F0;
font-family: Arial;
color: black;
border: none 0px transparent;
height: 10%;
text-align: center;
font-size: 16px;
}
.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 10%;
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
height: 10%;
text-align: left;
}

.mydatagrid td
{
padding: 10px;
border-bottom:1px solid #F0F0F0;
}
.mydatagrid th
{
padding: 10px;
}
.formbg {
    margin: 50px auto;
    width: 100%;
    background: white;
    border-radius: 4px;
    box-shadow: rgba(60, 66, 87, 0.12) 0px 7px 14px 0px, rgba(0, 0, 0, 0.12) 0px 3px 6px 0px;
}
.btnEdit
{
    width:60px;
    height:30px;
    border-radius:5px;
    border:none;
    background-color:green;
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
 <div class="box-container"> 
      <div class="box box1"> 
                    <div class="text"> 
                        <h2 class="topic-heading">4</h2> 
                        <h2 class="topic">Member</h2> 
                    </div> 
  
               </div> 
  
                <div class="box box2"> 
                    <div class="text"> 
                        <h2 class="topic-heading">5</h2> 
                        <h2 class="topic">Available Plans</h2> 
                    </div> 
                </div> 
  
                <div class="box box3"> 
                    <div class="text"> 
                        <h2 class="topic-heading">Rs. 9000</h2> 
                        <h2 class="topic">Income</h2> 
                    </div> 
           </div> 
  
                 
            <br />
</div>
     </body>
</html>
</asp:Content>

