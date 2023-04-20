﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-register.aspx.cs" Inherits="ComplaintManagement.admin_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.css' rel='stylesheet' />
    <link rel="stylesheet" href="css/main.css">
    <title>Admin Registeration</title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
        <nav class="navbar navbar-expand-md bg-dark navbar-dark  fixed-top btn " >
            <div class="container">
                <a href="#" class="navbar-brand  fs-2">LiveDesk</a>
 
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
                    <span class="navbar-toggler-icon"></span>
                </button>
 
                <div class="collapse navbar-collapse " id="navmenu">
                    <ul class="navbar-nav ms-auto">
                         <li class="nav-item">
                            <a href="index.aspx" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item">
                            <a href="login-type.aspx" class="nav-link">Signin</a>
                        </li>
                        <li class="nav-item">
                            <a href="register.aspx" class="nav-link">Signup</a>
                        </li>
                        <li class="nav-item">
                            <a href="about-us.aspx" class="nav-link">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="admin-register.aspx" class="nav-link">Admin Registration</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </section>

    <section class=" text-dark">
        <div class="container">
            <div class="row">
                <div class="col-md col-md-6 ">
                    <img src="img/signup.svg" alt="" class="img-fluid my-md-5">
                </div>
           
            <div class="col-md  g-5">
                <div class="card shadow p-3 mb-5 bg-body rounded">
                        <main>
        <div class="register-box  ">

            <br/><br/>            
            <h2> Admin Registration</h2>
            
               
            <div class="row-sm my-3 ">
              
                    <asp:TextBox placeholder="Email" runat="server"  CssClass="input-group" TextMode="Email" ID="email"></asp:TextBox>  
                </div>
            <div class="row">
            
                 <div class="col-sm">
       <asp:DropDownList ID="department" runat="server" > 
           
            <asp:ListItem Value="">Select Department</asp:ListItem>  
            <asp:ListItem Value="1">Water Department </asp:ListItem>  
            <asp:ListItem Value="2">Education Department</asp:ListItem>  
            <asp:ListItem Value="3">Sewage operations</asp:ListItem>  
            <asp:ListItem Value="4">Land Operation</asp:ListItem>  
            <asp:ListItem Value="5">Health Department</asp:ListItem>  
            <asp:ListItem Value="6">Sanitation Department</asp:ListItem>  
            <asp:ListItem Value="7">Food and Supply Department</asp:ListItem>  

        </asp:DropDownList>  
            </div>
                 <div class="col-sm">
                    <asp:TextBox   placeholder="Secret" runat="server" CssClass="input-group" TextMode="Password" ></asp:TextBox>            

                    </div>
                </div>
                    <br />  
            <div class="row">
                <div class="col-md">
                    <asp:TextBox   placeholder="Password" runat="server" CssClass="input-group" TextMode="Password" ID="pass"></asp:TextBox>            
                </div>
                <div class="col-md">             
                    <asp:TextBox   placeholder="Confirm Password" runat="server" CssClass="input-group" TextMode="Password" ID="cpass"></asp:TextBox>
                </div> 
                </div>
                    <br />
            <asp:Button CssClass="btn btn-info input-group" runat="server" Text="Register" OnClick="Reg_Click"  />
            <br /><br />
            <asp:Label ID="errormsg" runat="server" ForeColor="Red"></asp:Label><br />
            <h2 class="lead">Already Registered ? <a href="user-login.aspx">Login</a> </h2>
            <asp:Label runat="server" ID="successmsg"></asp:Label>


            <asp:HiddenField runat="server" ID="hfuserid" />
            
        </div>
    </main>

                </div>
            </div>
        </div>
      </div>
    </section>

    <section class="p-2 bg-dark text-white  w-100 bottom-0 position-absolute text-center ">
        <div class="container ">
            <p class="lead text-start fs-3">Copyright &copy; 2021 LiveDesk </p>
        </div>
    </section>
    

    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </form>
</body>
</html>
