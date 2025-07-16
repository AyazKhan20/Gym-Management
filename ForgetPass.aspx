<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ForgetPass.aspx.cs" Inherits="ForgetPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<!-- Coding By CodingNepal - www.codingnepalweb.com -->
<html>
<!DOCTYPE html>
<!-- Coding By CodingNepal - www.codingnepalweb.com -->
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix Login Page | CodingNepal</title>
    <style>
  @import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap");

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Roboto', sans-serif;
}

body {
    background: #000;
    
}

body::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    opacity: 0.5;
    
}

nav {
    position: fixed;
    padding: 25px 60px;
    z-index: 1;
}

nav a img {
    width: 167px;
}

.form-wrapper {
    position: absolute;
    left: 50%;
    top: 50%;
    border-radius: 4px;
    padding-top: 70px;
    padding-left: 70px;
    padding-right: 70px;
    width: 450px;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0, .75);
}

.form-wrapper h2 {
    color: #fff;
    font-size: 2rem;
}

.form-wrapper form {
    margin: 25px 0 65px;
}

form .form-control {
    height: 50px;
    position: relative;
    margin-bottom: 16px;
     background: #333;
     border: none;
    outline: none;
}

.form-control input {
    height: 100%;
    width: 100%;
    background: #333;
    border: none;
    outline: none;
    border-radius: 4px;
    color: #fff;
    font-size: 1rem;
    padding: 0 20px;
}

.form-control .textbox {
    height: 100%;
    width: 100%;
    background: #333;
    border: none;
    outline: none;
    border-radius: 4px;
    color: #fff;
    font-size: 1rem;
    padding: 0 20px;
}


.form-control label {
    position: absolute;
    left: 20px;
    top: 50%;
    transform: translateY(-50%);
    font-size: 1rem;
    pointer-events: none;
    color: #8c8c8c;
    transition: all 0.1s ease;
}
.form-control .textbox:is(:focus, :valid)~label {
    font-size: 0.75rem;
    transform: translateY(-130%);
}
.form-control input:is(:focus, :valid)~label {
    font-size: 0.75rem;
    transform: translateY(-130%);
}

form .button {
    width: 100%;
    padding: 16px 0;
    font-size: 1rem;
    background: #e50914;
    color: #fff;
    font-weight: 500;
    border-radius: 4px;
    border: none;
    outline: none;
    margin: 25px 0 10px;
    cursor: pointer;
    transition: 0.1s ease;
}

form .button:hover {
    background: #c40812;
}

.form-wrapper a {
    text-decoration: none;
}

.form-wrapper a:hover {
    text-decoration: underline;
}

.form-wrapper :where(label, p, small, a) {
    color: #b3b3b3;
}

form .form-help {
    display: flex;
    justify-content: space-between;
}

form .remember-me {
    display: flex;
}

form .remember-me input {
    margin-right: 5px;
    accent-color: #b3b3b3;
}

form .form-help :where(label, a) {
    font-size: 0.9rem;
}

.form-wrapper p a {
    color: #fff;
}

.form-wrapper small {
    display: block;
    margin-top: 15px;
    color: #b3b3b3;
}

.form-wrapper small a {
    color: #0071eb;
}

@media (max-width: 740px) {
    body::before {
        display: none;
    }

    nav, .form-wrapper {
        padding: 20px;
    }

    nav a img {
        width: 140px;
    }

    .form-wrapper {
        width: 100%;
        top: 43%;
    }

    .form-wrapper form {
        margin: 25px 0 40px;
    }
}
.for-img img
{
    width:199vh;
    height:100vh;
     filter: brightness(50%);
}
    </style>
</head>
<body>
<div class="for-img">
    <img src="home/frgt.jpg" />
    <div class="form-wrapper">
        <h2>Forget Password ?</h2>
        <form action="#">
       

        <div class="form-control">
             <asp:TextBox ID="txtEmailID" runat="server" class="textbox"></asp:TextBox>
                   <label>Email</label>
              </div>

        <asp:Button ID="btnForget" runat="server" Text="Send Link" class="button" 
            onclick="btnForget_Click" />
          
        <small>
            <asp:Label ID="lblResetPassMsg" runat="server" Text="Label"></asp:Label>
        </small>
           
    </div>
    </div>
</body>
</html>
</asp:Content>