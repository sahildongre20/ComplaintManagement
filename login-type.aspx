<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login-type.aspx.cs" Inherits="ComplaintManagement.login_type" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.css' rel='stylesheet' />
    <link rel="stylesheet" href="css/main.css">
    <title>Login</title>
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
                        
                    </ul>
                </div>
            </div>
        </nav>
    </section>

    <section class="p-5 text-dark">
        <div class="container">
            <div class="row">
                <div class="col-md col-md-6 ">
                    <h3 class="py-3">Handling customer complaints is easier now.</h3>
                    <h4 class="pb-5">Why not start with LiveDesk's complaint management sysytem?</h4>
                    <div class="d-sm-flex text-sm-start align-items-center justify-content-center">
                        <div>
                            <h4>Admin login</h4>
                            <p class="lead p-2 py-3  pb-2  ">Registered Admin can login using Username and Password to therir designated Deprtment.</p>
                            <a class="btn btn-dark btn-lg text-light my-5" href="admin-login.aspx"> Admin Login </a>

                        </div>
                        <div>
                            <h4>User login</h4>
                            <p class="lead p-2 py-3  pb-2  ">Welcome, if you are Registered then you can login to your account using your Email and Password </p>
                            <a class="btn btn-dark btn-lg text-light my-5" href="user-login.aspx"> User Login </a>
                        </div>
                        
                </div>
            </div>
            <div class="col-md">
                <img src="img/login.svg" alt="" class="img-fluid my-md-5">

            </div>
        </div>
    </section>

    <section class="p-2 bg-dark text-white text-center position-relative">
        <div class="container ">
            <p class="lead text-start fs-3">Copyright &copy; 2021 LiveDesk </p>
        </div>
    </section>
    

    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </form>
</body>
</html>
