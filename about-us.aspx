<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about-us.aspx.cs" Inherits="ComplaintManagement.about_us" %>

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
    <title>About Us</title>
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
   

    <section class="p-5 " id="about-us">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-md">
                    <img src="img/why.svg" alt="" class="img-fluid">
                </div>
                <div class="col-md p-5" >
                    <h2>What is LiveDesk?</h2>
                    <p class="lead">
                        LiveDesk is a Complaint management system. Its (also known as a conflict management system, internal conflict management system, integrated conflict management system, or dispute system) is a set of procedures used in organizations to address complaints and resolve disputes.
                    </p>
                </div>
            </div>
    </section>
    <section class="bg-info py-5">
            <div class="container bg-dar">
            <div class="row align-items-center  justify-content-between">
                <div class="col-md p-5">
                    <h2>What is Complaint Management software?</h2>
                    <p class="lead">
                        Complaint management is the process of handling, managing, responding to, and reporting customer grievances. This process requires a streamlined approach and constant monitoring to ensure faster resolutions.
                    </p>
                </div>
                <div class="col-md">
                    <img src="img/collab.svg" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>
    
    <section class="p-5">
    </section>

    <section class="p-5 py-5"  id="contact-us">
        <div class="container">
            <div class="row g-4">
                <div class="col-md">
                    <h2 class="text-center mb-4">Contact US</h2>
                    <ul class="list-group list-group-flush lead">
                        <li class="list-group-item"><span class="fw-bold">Main Location: </span>Navi Mumbai Munciple Corporation, Belapur, 410210, Maharashtra</li>
                        <li class="list-group-item"><span class="fw-bold">Mail: </span>NavimumbaiMCP@MCP.gov
                         </li>
                        <li class="list-group-item"><span class="fw-bold">Contact Number: </span>+91 25840 30644, 90827 90955</li>
                   
                    </ul>
                </div>
                <div class="col-md" >
                    <div class="" id="map"></div>
                </div>
            </div>
        </div>
    </section>
        
    <section class="p-5">
    </section>
    <section class="p-2 bg-dark text-white text-center position-relative">
        <div class="container ">
            <p class="lead text-start fs-3">Copyright &copy; 2021 LiveDesk </p>

        

        </div>
    </section>

   


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script src='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.js'></script>
    <script>
        mapboxgl.accessToken = 'pk.eyJ1Ijoic2FoaWxkb25ncmUyMCIsImEiOiJja3c4NjZoZnMwY2t1MndsZjh2bnNlMTlsIn0.mywo8bbLvejNK6VVgXzLtA';
        var map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v11',
            center: [73.0140, 19.0691],
            zoom: 18
        });
    </script>
    </form>
</body>
</html>
