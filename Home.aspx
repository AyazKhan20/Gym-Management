
<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!DOCTYPE html>
<html>
<head>
    <title>User Home Page</title>
   <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/tooplate-gymso-style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Custom styles for this template -->
    <link href="css/why_us.css" rel="stylesheet" type="text/css" />
    <style>
        .info
        {
           max-width:100%;
          
            background-image: url('home/hero-bg.jpg');
            background-size: cover;
            background-position: top;
            background-repeat: no-repeat;
            vertical-align: middle;
            min-height: 100vh;
            position: relative;
            color:White;
         filter: brightness(50%);
        }
        .detail
        {
             filter: brightness(100%);
             color:White;
         }
       h4
       {
           text-align:center;
           padding-top:300px;
           color:grey;
       }
       h1
       {
           text-align:center;
           padding-top:10px;
           font-weight:bolder;
           font-size:50px;
           font-style:bold;
       }
       h2
       {
           color:White;
           font-weight:bold;
           font-size:40px;
          
           padding-bottom:10px;
       }
       h6
       {
           color:White;
            font-size:24px;
           
              padding-bottom:10px;
       }
    </style>
    </style>
  </head>
<body>
 
<div class="info" >
    <div class="detail">
        <h4 style="color:White" >new way to build a healthy lifestyle!</h4>
        <h1>Upgrade your body at<br /> H.A Fitness Club</h1>
       
     </div>
</div>
<section class="feature" id="feature">
        <div class="container">
            <div class="row">

                <div class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
                    <h2 class="description" >New to the HA Fitness?</h2>

                    <h6  class="description" >Your membership is up to 2 months FREE (RS 62.50 per month)</h6>
                    <asp:Button ID="Button1" runat="server" class="btnSend" 
                        Text="Become a Member Today" onclick="Button1_Click"></asp:Button>
                </div>

                <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                     <div class="about-working-hours">
                          <div>

                                <h2  class="description" >Working hours</h2>

                               <bold class="description">Sunday : Closed</bold>
                               <br />
                               <br />
                               <bold class="description" >Monday - Friday</bold>

                                <p class="description">7:00 AM - 10:00 PM</p>

                                <bold class="description" >Saturday</bold>

                                <p  class="description">6:00 AM - 4:00 PM</p>
                               </div>
                          </div>
                     </div>
                </div>

            </div>
        </div>
    </section>

    
  <!-- Us section -->

  <section class="us_section layout_padding" style="background-color: #000000"">
    <div class="container" >
      <div class="heading_container">
        <h2  class="description">
          Why Choose Us
        </h2>
      </div>

      <div class="us_container ">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="box">
              <div class="img-box">
               <img src="why_us/u-1.png" />
              </div>
              <div class="detail-box">
                <h5>
                  QUALITY EQUIPMENT
                </h5>
                <p>
                  ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="box">
              <div class="img-box">
                <img src="why_us/u-4.png" />
              </div>
              <div class="detail-box">
                <h5>
                  NUTRITION
                </h5>
                <p>
                  ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="box">
              <div class="img-box">
              <img src="why_us/u-2.png" />
              </div>
              <div class="detail-box">
                <h5>
                  HEALTHY DIET PLAN
                </h5>
                <p>
                  ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                </p>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="box">
              <div class="img-box">
                <img src="why_us/u-3.png" />
              </div>
              <div class="detail-box">
                <h5>
                  SPORT TRAINING
                </h5>
                <p>
                  ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end us section -->


     <!-- CLASS -->
     <section class="class section" id="class">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center mb-5">
                                <h6 style="color: #000000">Get A Perfect Body</h6>

                                <h2 style="color: #000000">Our Training Classes</h2>
                             </div>
                            <div class="class"></div>
                            <asp:Repeater ID="ClassRepeater" runat="server">
                            <ItemTemplate>
                            <div class="col-lg-4 col-md-6 col-12" >
                            
                                 <div class="class-thumb">
                                        <img  class="img-fluid" src="Images/ClassImages/<%# Eval("CID") %>/<%# Eval("Name") %><%# Eval("Extension") %>"
                                            alt="<%# Eval("Name") %>" />
                                        <div class="class-info">
                                            <h3 class="mb-1">
                                                <%# Eval ("CName") %></h3>
                                            <span><strong>Trained by</strong><%# Eval ("TName") %></span>
                                           
                                            <span class="class-price"> <%# Eval ("Price") %></span>
                                              <p class="mt-3">Start Time :    <%# Eval ("Stime") %>
                                             
                                             <p class="mt-3">
                                                 End Time :     <%# Eval ("Etime") %></p>
                                        </div>
                                </div>
                           </div>
                        </ItemTemplate>
                    </asp:Repeater>
                 </div>
            </div>
     </section>
     
   
     <!-- SCHEDULE -->
     <section class="schedule section" id="schedule">
               <div class="container">
                    <div class="row">

                            <div class="col-lg-12 col-12 text-center">
                                <h6 style="color: #808080">our weekly GYM schedules</h6>

                                <h2 class="text-white" >Workout Timetable</h2>
                             </div>

                             <div class="col-lg-12 py-5 col-md-12 col-12">
                                 <table class="table table-bordered table-responsive schedule-table" >

                                     <thead class="thead-light">
                                         <th><i class="fa fa-calendar"></i></th>
                                         <th>Mon</th>
                                         <th>Tue</th>
                                         <th>Wed</th>
                                         <th>Thu</th>
                                         <th>Fri</th>
                                         <th>Sat</th>
                                     </thead>

                                     <tbody>
                                         <tr>
                                            <td><small>7:00 am</small></td>
                                            <td>
                                                <strong>Cardio</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                            <td>
                                                <strong>Power Fitness</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <strong>Yoga Section</strong>
                                                <span>7:00 am - 9:00 am</span>
                                            </td>
                                         </tr>

                                         <tr>
                                            <td><small>9:00 am</small></td>
                                            <td></td>
                                            <td></td>
                                            <td>
                                                <strong>Boxing</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                            <td>
                                                <strong>Areobic</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>Cardio</strong>
                                                <span>8:00 am - 9:00 am</span>
                                            </td>
                                         </tr>

                                         <tr>
                                            <td><small>11:00 am</small></td>
                                            <td></td>
                                            <td>
                                                <strong>Boxing</strong>
                                                <span>11:00 am - 2:00 pm</span>
                                            </td>
                                            <td>
                                                <strong>Areobic</strong>
                                                <span>11:30 am - 3:30 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>Body work</strong>
                                                <span>11:50 am - 5:20 pm</span>
                                            </td>
                                         </tr>

                                         <tr>
                                            <td><small>2:00 pm</small></td>
                                            <td>
                                                <strong>Boxing</strong>
                                                <span>2:00 pm - 4:00 pm</span>
                                            </td>
                                            <td>
                                                <strong>Power lifting</strong>
                                                <span>3:00 pm - 6:00 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>Cardio</strong>
                                                <span>6:00 pm - 9:00 pm</span>
                                            </td>
                                            <td></td>
                                            <td>
                                                <strong>Crossfit</strong>
                                                <span>5:00 pm - 7:00 pm</span>
                                            </td>
                                         </tr>
                                     </tbody>
                                 </table>
                             </div>

                    </div>
               </div>
     </section>

     
     <!-- CONTACT -->
     <section class="contact section" id="contact">
          <div class="container">
               <div class="row">

                    <div class="ml-auto col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4 pb-2" style="color: #000000">Feel free to ask anything</h2>

                        <form action="#" method="post" class="contact-form webform" role="form">
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Name"> </asp:TextBox>
                           
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Email"></asp:TextBox>
                       
                            <asp:TextBox ID="TextBox3"  class="form-control"  placeholder="Message" runat="server"></asp:TextBox>
                            <asp:Button ID="btnSend" runat="server"  class="btnSend"  Text="Send Message"></asp:Button>
                          </form>
                    </div>

                    <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4" style="color: #000000">Where you can <span>find us</span></h2>

                        <p ><i class="fa fa-map-marker mr-1"></i> Nadiad,Gujarat</p>
<!-- How to change your own map point
	1. Go to Google Maps
	2. Click on your location point
	3. Click "Share" and choose "Embed map" tab
	4. Copy only URL and paste it within the src="" field below
-->
                        <div class="google-map" >
                         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58893.95193156393!2d72.81752649701376!3d22.695808577217115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e5b060b242c55%3A0xc415d383e5344e08!2sNadiad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1702717595401!5m2!1sen!2sin" width="600" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"  width="1920" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </div>
                    
               </div>
          </div>
     </section>



 <hr />
  
    </form>
</body>
</html>
</asp:Content>
