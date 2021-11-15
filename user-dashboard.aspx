<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-dashboard.aspx.cs" Inherits="ComplaintManagement.user_dashboard" %>

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
    <link rel="stylesheet" href="/css/user-module.css">
    <title>User-Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
        <div class="sidebar">
            <div class="cms-lable"><h2>Complaint Management System</h2></div>
            <div class="user-name-display"><h2>Welcome @User-Name </h2></div>
            <div class="side-bar-btn"><h3> <a href="user-dashboard.aspx"> Dashboard </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-add-complaint.aspx">Add Complent </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-history.aspx"> History </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-edit-profile.aspx">Edit Profile </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="index.aspx">Logout </a></h3></div>
        </div>
        <div class="headbar">
        </div>
        <div class="card-container">
            <div class="cards"></div>
            <div class="cards"></div>
            <div class="cards"></div>
            <div class="cards"></div>
            <div class="cards"></div>
        </div>
        
    <div class="table-box">
        <h2>Ongoing Complaint</h2>
        <div class="table-card">
        </div>
    </div>

       
    </div>
    </form>
</body>
</html>
