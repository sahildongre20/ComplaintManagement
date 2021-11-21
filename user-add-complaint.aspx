<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-add-complaint.aspx.cs" Inherits="ComplaintManagement.user_add_complaint" %>

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
    <title>Add Complaint</title>
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
            <asp:HiddenField  runat="server" ID="hfuserid"/>
        
    <div class="complaint-conatiner">
        <h2>Add Complaint</h2>
        <div class="complaint-card">
            <div class="complaint-card-img"></div>
            <div class="complaint-card-form">
                <h2>Register</h2>
            <asp:TextBox placeholder="Complaint title" runat="server" ID="title" ></asp:TextBox>
            <br/><br/>
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
            <br/><br/>

            <asp:TextBox placeholder="Complaint Description" runat="server" TextMode="MultiLine"  ID="description"></asp:TextBox>
        
            <br /><br />
            <asp:TextBox placeholder="Address" runat="server" TextMode="MultiLine" ID="address"></asp:TextBox>
            <br /><br />            
            <asp:TextBox placeholder="City" runat="server"  ID="city"></asp:TextBox>
            <asp:TextBox placeholder="Pin Code" runat="server" TextMode="Number" ID="pincode" ></asp:TextBox>
            <br /><br />   
            <asp:FileUpload ID="imgUpload" runat="server" ></asp:FileUpload>
            <br /><br />
            <asp:Button Text="Add Complaint" runat="server"  OnClick="Add_complaint"></asp:Button>
            </div>
        </div>
    </div>


       
    </div>
    </form>
</body>
</html>
