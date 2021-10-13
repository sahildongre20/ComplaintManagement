<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ComplaintManagement.regsiter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/site.webmanifest">
    <link rel="stylesheet" href="css/style.css">
    <title>Register</title>
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
        <div class="register-box">

            <br/><br/>            
            <h2>Register</h2>
            <asp:TextBox placeholder="First Name" runat="server" ID="fname"></asp:TextBox>
            <asp:TextBox placeholder="Last Name" runat="server" ID="lname"></asp:TextBox>
            <br/><br/>
            <asp:TextBox placeholder="Email" runat="server"  TextMode="Email" ID="email"></asp:TextBox>  
            <asp:TextBox placeholder="Phone Number" runat="server"  TextMode="Number" ID="mobile"></asp:TextBox>  

            <br/><br/>
        
            <asp:TextBox placeholder="Date Of Birth" runat="server" TextMode="Date" ID="dob"></asp:TextBox>
            <br /><br />
            <asp:TextBox placeholder="Address" runat="server" TextMode="MultiLine" ID="addr"></asp:TextBox>
            <br /><br />            
            <asp:TextBox placeholder="City" runat="server" ID="city"></asp:TextBox>
            <asp:TextBox placeholder="Pin Code" runat="server" TextMode="Number" ID="pin"></asp:TextBox>
            <br /><br />                        
            <asp:TextBox   placeholder="Password" runat="server" TextMode="Password" ID="pass"></asp:TextBox>            
            <asp:TextBox   placeholder="Confirm Password" runat="server" TextMode="Password" ID="cpass"></asp:TextBox>
            <br /><br />
            <asp:Button  runat="server" Text="Register" Onclick="Register_Click"  />
            <br />
            <asp:Label ID="errormsg" runat="server" ForeColor="Red"></asp:Label><br />
            <h2>Already Registered ? <a href="login.aspx">Login</a> </h2>
            <asp:Label runat="server" ID="successmsg"></asp:Label>


            <asp:HiddenField runat="server" ID="hfuserid" />
            
        </div>
    </main>
    <footer>
        <div class="footer">
        </div>
    </footer>
    </form>
</body>
</html>
