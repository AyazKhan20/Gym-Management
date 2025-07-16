<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Trainers.aspx.cs" Inherits="Trainers" %>

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

<div class="panel panel-primary"  style="margin-bottom:5%;">
            <div class="panel-heading">
               Available Trainer</div>
              <div class="panel-body">
                <div class="row" style="padding-top: 50px">
                    <asp:Repeater ID="TrainerRepeater" runat="server">
                        <ItemTemplate>
                          <div class="caption1">
                                <div class="caption">

                                    <div class="thumbnail">
                                        <div class="img">
                                              <img class="timg" src="Images/TrainerImages/<%# Eval("TID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"
                                                alt="<%# Eval("Name") %>" />
                                        </div>
                                      </div>
                               </div>
                               <div class="cap">
                                  <div class="CName">
                                       Name:  <%# Eval ("TName") %>
                                   </div>
                                   <br />
                                   <div class="TName">
                                      Description:<%# Eval ("Descr") %>
                                   </div>
                                   <br />
                                   <div class="TName">
                                       Experience:<%# Eval ("Exp") %>
                                   </div>    
                                   <br />                                   
                                   <div class="TName">
                                       Email:<%# Eval ("Email") %>
                                   </div>
                                   <br />
                                   <div class="TName">
                                        Address: <%# Eval ("Addr") %>
                                   </div>
                                   <br />
                                   <div class="TName">
                                        Mobile NO:<%# Eval ("Mno") %>
                                   </div>
                                   <br />
                                   <div class="TName">
                                        Speciality:<%# Eval ("Spec") %>
                                   </div>
                            </div>
                       </div>
                  </ItemTemplate>
             </asp:Repeater>
         </div>
    </div>
</div>
</asp:Content>

