<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ComplaintManagement.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="stylesheet" href="css/style.css">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <head>
        <div class="navbar">
            <h1>Complent management system</h1>
            <h3> <a href="index.aspx"> Home</a></h3>
            <h3> <a href="login.aspx"> Login</a></h3>
            <h3> <a href="register.aspx"> Register</a></h3>
        </div>
    </head>
    <main>
        <div class="login-box">
            <h2>Login</h2>
            <asp:TextBox ID="username"  placeholder="Enter Username" runat="server"></asp:TextBox><br><br>
            <asp:TextBox ID="txtpass"  placeholder="Enter Password" runat="server" TextMode="Password"></asp:TextBox><br>
            <asp:Label ID="errormsg" runat="server" ForeColor="Red"></asp:Label><br>
            <asp:Button ID="blogin" runat="server" Text="Login" onclick="blogin_Click"   /><br><br>
            <asp:label ID="successmsg" runat="server"></asp:label>
            <h2>Not Registered ? <a href="register.aspx">Register</a> </h2>
            <h2>Can't  Remember Password ? <a href="#">Forgot Password</a> </h2>

        </div>
    </main>
    <footer>
        <div class="footer">
        </div>
    </footer>
    </form>
</body>
</html>
