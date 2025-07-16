<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html>
  <head>
    <meta charset="UTF-8">
    <title> Responsive Contact Us Form  | CodingLab </title>
   <style>
   /* Google Font CDN Link */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins" , sans-serif;
}
.container1
{
    margin-bottom:8%;
    margin-top:10%;
  width: 70%;
  background: #fff;
  border-radius: 6px;
  margin-left:250px;
  padding: 20px 60px 30px 40px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.container1 .content{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.container1 .content .left-side{
  width: 25%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  position: relative;
}
.content .left-side::before{
  content: '';
  position: absolute;
  height: 70%;
  width: 2px;
  right: -15px;
  top: 50%;
  transform: translateY(-50%);
  background: #afafb6;
}
.content .left-side .details{
  margin: 14px;
  text-align: center;
}
.content .left-side .details i{
  font-size: 30px;
  color: #3e2093;
  margin-bottom: 10px;
}
.content .left-side .details .topic{
  font-size: 18px;
  font-weight: 500;
}
.content .left-side .details .text-one,
.content .left-side .details .text-two{
  font-size: 14px;
  color: #afafb6;
}
.container1 .content .right-side{
  width: 75%;
  margin-left: 75px;
}
.content .right-side .topic-text{
  font-size: 23px;
  font-weight: 600;
  color: #3e2093;
}
.right-side .input-box{
  height: 50px;
  width: 100%;
  margin: 12px 0;
}
.right-side .input-box input,
.right-side .input-box textarea{
  height: 100%;
  width: 100%;
  border: none;
  outline: none;
  font-size: 16px;
  background: #F0F1F8;
  border-radius: 6px;
  padding: 0 15px;
  resize: none;
}
.right-side .message-box{
  min-height: 110px;
}
.right-side .input-box textarea{
  padding-top: 6px;
}
.right-side .button{
  display: inline-block;
  margin-top: 12px;
}
.right-side .button {
  color: #fff;
  font-size: 18px;
  outline: none;
  border: none;
  padding: 8px 16px;
  border-radius: 6px;
  background: #3e2093;
  cursor: pointer;
  transition: all 0.3s ease;
}
.button:hover{
  background: #5029bc;
}

@media (max-width: 950px) {
  .container1{
    width: 90%;
    padding: 30px 40px 40px 35px ;
  }
  .container1 .content .right-side{
   width: 75%;
   margin-left: 55px;
}
}
@media (max-width: 820px) {
  .container1{
    margin: 40px 0;
    height: 100%;
  }
  .container1 .content{
    flex-direction: column-reverse;
  }
 .container1 .content .left-side{
   width: 100%;
   flex-direction: row;
   margin-top: 40px;
   justify-content: center;
   flex-wrap: wrap;
 }
 .container1 .content .left-side::before{
   display: none;
 }
 .container1 .content .right-side{
   width: 100%;
   margin-left: 0;
 }
}
   
   </style>
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container1">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Ram-Talavdi</div>
          <div class="text-two">Nadiad</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+91 87587 96751</div>
          <div class="text-two">+91 63559 87007</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one"><a href="mailto:ayazkhanpathan31@gmail.com">ayazkhanpathan31@gmail.com</a></div>
          <div class="text-two"><a href="mailto:patelharshil833@gmail.com">patelharshil833@gmail.com</a></div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>If you have any work from me or any types of quries related to my tutorial, you can send me message from here. It's my pleasure to help you.</p>
      <form action="#">
        <div class="input-box" Style="margin-bottom:20px">
            <asp:TextBox ID="txtName"  placeholder="Enter your name" runat="server" ></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Name"  ControlToValidate="txtName"></asp:RequiredFieldValidator>
            
        </div>
        <div class="input-box" Style="margin-bottom:20px">
            <asp:TextBox ID="txtEmail"  placeholder="Enter your email" runat="server"></asp:TextBox><br />
            <div style="display:flex">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Email id is incorrect" ControlToValidate="txtEmail" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                         ></asp:RegularExpressionValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Email"  ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
           </div>
        </div>
     <div class="input-box" Style="margin-bottom:20px">
            <asp:TextBox ID="txtMsg"  placeholder="Enter your Mesg" runat="server" TextMode="MultiLine" Rows="6"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="*Please Enter Message"  ControlToValidate="txtMsg"></asp:RequiredFieldValidator>
        </div>
           <asp:Button ID="Button1" runat="server" Text="Send Now" class="button" 
            onclick="Button1_Click"/>
        
     
      </form>
    </div>
    </div>
  </div>
</body>
</html>
</asp:Content>

