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
            <div class="user-name-display"><h2>Welcome @User-Name </h2></div>
            <div class="side-bar-btn"><h3> <a href="user-dashboard.aspx"> Dashboard </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-add-complaint.aspx">Add Complent </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-history.aspx"> History </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-edit-profile.aspx">Edit Profile </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="index.aspx">Logout </a></h3></div>
        </div>
        <div class="headbar">
        </div>
        
    <div class="complaint-conatiner">
        <h2>Add Complaint</h2>
        <div class="complaint-card">
            <div class="complaint-card-img"></div>
            <div class="complaint-card-form">
                <h2>Register</h2>
            <asp:TextBox placeholder="Complaint title" runat="server" ></asp:TextBox>
            <br/><br/>
       <asp:DropDownList ID="DropDownList1" runat="server" >  
            <asp:ListItem Value="">Select Department</asp:ListItem>  
            <asp:ListItem>Water Department </asp:ListItem>  
            <asp:ListItem>Education Department</asp:ListItem>  
            <asp:ListItem>Sewage operations</asp:ListItem>  
            <asp:ListItem>Land Operation</asp:ListItem>  
            <asp:ListItem>Health Department</asp:ListItem>  
            <asp:ListItem>Sanitation Department</asp:ListItem>  
            <asp:ListItem>Food and Supply Department</asp:ListItem>  

        </asp:DropDownList>  
            <br/><br/>

            <asp:TextBox placeholder="Complaint Description" runat="server" TextMode="MultiLine" ></asp:TextBox>
        
            <br /><br />
            <asp:TextBox placeholder="Address" runat="server" TextMode="MultiLine" ID="addr"></asp:TextBox>
            <br /><br />            
            <asp:TextBox placeholder="City" runat="server" ></asp:TextBox>
            <asp:TextBox placeholder="Pin Code" runat="server" TextMode="Number" ></asp:TextBox>
            <br /><br />   
            <asp:FileUpload runat="server" ></asp:FileUpload>
            <br /><br />
            <asp:Button Text="Add Complaint" runat="server" ></asp:Button>
            </div>
        </div>
    </div>


       
    </div>
    </form>
</body>
</html>
