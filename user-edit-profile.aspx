<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-edit-profile.aspx.cs" Inherits="ComplaintManagement.user_edit_profile" %>

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
    <title>Edit Profile</title>
</head>
<body>
    <form id="form1" runat="server">
          <div>
        <div class="sidebar">
           <div class="cms-lable"><h2>Complaint Management System</h2></div>
            <div class="user-name-display"><h2>Welcome <asp:Label runat="server" ID="lbl_user_name"></asp:Label> </h2></div>
            <div class="side-bar-btn"><h3> <a href="user-dashboard.aspx"> Dashboard </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-add-complaint.aspx">Add Complent </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-history.aspx"> History </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-edit-profile.aspx">Edit Profile </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="index.aspx">Logout </a></h3></div>
        </div>
        <div class="headbar">
        </div>
        
    

    <div class="table-box">
        <h2>Edit Profile</h2>
        <div class="table-card">
            <div class="user-profile-card">
            <div class="user-avatar"></div>
            
            <div class="user-detail-card">
                <h3>Name</h3>
                <h3>Email</h3>
                <h3>D-O-B</h3>
            </div>
        </div>
        <button class="Change-password-btn">Change Password</button>
    </div>
</div>

    <div class="table-box">
      
        <div class="table-card">
            <h2>User Deatils</h2>
            <button class="edit-profile-btn">Edit profile</button>
        </div>
    </div>


       
    </div>
    </form>
</body>
</html>
