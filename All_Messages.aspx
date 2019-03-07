<%@ Page Language="C#" AutoEventWireup="true" CodeFile="All_Messages.aspx.cs" Inherits="All_Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <a href="AddNewMessage.aspx">Add New Message</a>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>


    </div>
    </form>
</body>
</html>
