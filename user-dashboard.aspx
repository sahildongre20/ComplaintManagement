<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-dashboard.aspx.cs" Inherits="ComplaintManagement.user_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-touch-icon.png"/>
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png"/>
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png"/>
    <link rel="manifest" href="favicon/site.webmanifest"/>
    <link rel="stylesheet" href="/css/user-module.css"/>
    <title>User-Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
        <div class="sidebar">
            <div class="cms-lable"><h2>Complaint Management System</h2></div>
            <div class="user-name-display"><h2>Welcome <asp:Label runat="server" ID="lbl_user_name"></asp:Label></h2></div>
            <div class="side-bar-btn"><h3> <a href="user-dashboard.aspx"> Dashboard </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-add-complaint.aspx">Add Complent </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-history.aspx"> History </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="user-edit-profile.aspx">Edit Profile </a></h3></div>
            <div class="side-bar-btn"><h3> <a href="index.aspx">Logout </a></h3></div>
        </div>
        <div class="headbar">
        </div>
        <div class="card-container">
            <div class="cards">
               
             <h2>New Complaints <br /><asp:Label ID="lbl_new" runat="server"></asp:Label>
</h2>

                    </div>
            <div class="cards">
                <h2>Ongoing Complaints<br/> <asp:Label ID="lbl_ongoing" runat="server"></asp:Label></h2>
            </div>
            <div class="cards">
               <h2>Resolved Complaints<br/> <asp:Label ID="lbl_resolved" runat="server"></asp:Label></h2>
            </div>
            <div class="cards">
                <h2>Rejected Complaints<br/> <asp:Label ID="lbl_rejected" runat="server"></asp:Label></h2>
            </div>
            <div class="cards">
                <h2>Total Complaints<br/> <asp:Label ID="lbl_total" runat="server"></asp:Label></h2>
            </div>
        </div>
        
    <div class="table-box">
        <h2>Ongoing Complaint</h2>
        <div class="table-card">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
                <Columns >
                    <asp:BoundField  DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
                    <asp:BoundField DataField="department_name" HeaderText="department" SortExpression="department"></asp:BoundField>
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                      <asp:BoundField DataField="status" HeaderText="status" SortExpression="status"></asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[]) Eval("image")) %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Complaint_dbConnectionString %>' SelectCommand="SELECT [title], d.[department_name], [description], [address], [status] , [image] FROM  complaints c  join departments d  on d.id = c.department where user_id = @id" >
                <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="user_id" Type="String" />


</SelectParameters>

            </asp:SqlDataSource>
        </div>
    </div>
       
    </div>
    </form>
</body>
</html>
