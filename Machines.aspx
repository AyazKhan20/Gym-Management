<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Machines.aspx.cs" Inherits="Machines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style type="text/css">
.panel
{
    margin-top:5%;
    width:96%;
    margin-left:2%;
    margin-right:3%;
    border:1px solid #000;
}
img
{
    width:90%;
}
.formbg 
{
    margin-top:0px;
    margin-left:3%;
    width: 21.5%;
    padding:20px;
    margin-bottom:20px;
    background: white;
    border-radius: 4px;
    box-shadow: rgba(60, 66, 87, 0.12) 0px 7px 14px 0px, rgba(0, 0, 0, 0.12) 0px 3px 6px 0px;
}
.panel-heading
{
    margin-top:px;
    font-size:35px;
    font-weight:bold;
    background-color:#DFDFDF;
    border-bottom:1px solid #000;
}
.CName
{
    font-size:25px;
    color:Black;
}
.Price
{
    margin-left:20%;
    border-radius:400%;
    width:70px;
    height:10%;
    background-color:orange;
    padding:15px;
}
.Stime
{
     margin-top:10px;
}
.abc
{
    display:flex;
}
.caption1
{
    margin-top:-3%;
    display:flex;   
}
.cap
{ padding-left:29%;
  padding-right:80px;
}
.timg
{ margin-top:40%;
  width:400%;
  margin-left:10%;
}
</style>


 <div class="panel panel-primary">
            <div class="panel-heading">
               Available Machines</div>
              <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="MachineRepeater" runat="server">
                        <ItemTemplate>
                            <div class="formbg">
                                <div class="thumbnail">
                                    <div class="img">
                                        <img src="Images/MachinesImages/<%# Eval("MID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"
                                            alt="<%# Eval("Name") %>" />
                                     </div>
                                     <div class="caption">
                                         <div class="CName">
                                                <%# Eval ("MName") %>
                                          </div>
                                          <div class="TName">
                                             <%# Eval ("Descr") %></p>
                                          </div>
                                          <div class="abc">
                                           
                                             <p>  Quantity :    <%# Eval ("Qty") %>
                                          </div>
          ``                          </div>
                                   </div>
                              </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>


</div>
</asp:Content>