<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNewMessage.aspx.cs" Inherits="AddAnItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>SMS Spam Classification</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script src="js/mobile.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
  
	<div id="page">
		<div id="header">
			<div>
				<a href="SMS.aspx" class="logo"><img src="images/logo.jpg" alt="" /></a>
				<ul id="navigation">
						<li class="selected">
						<a href="SMS.aspx">Home</a>
					</li>
					<li class="menu">
						<a href="About.aspx">About</a>
					</li>
					<li class="menu">
						<a href="blog.html">Blog</a>
					</li>
					<li>
						<a href="Contact.aspx">Contact</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="body" class="home">
		
			<div class="bodyAdd">
				<div>
					<div>
						<h1>Add A New Item</h1>
						<h2>You are going to decide a message SPAM OR NOT</h2>
						<p>
                        
            <table>
        <tr>
            <td>Spam or Ham</td>
            <td class="auto-style1">
            <asp:DropDownList ID="DropDownList1" runat="server" >
            <asp:ListItem>ham</asp:ListItem>
            <asp:ListItem>spam</asp:ListItem>
            </asp:DropDownList>            </td>
        </tr>

          <tr>
            <td>Enter a Message</td>
            <td class="auto-style1">
                <asp:TextBox ID = "TextBox1" runat="server" Width="226px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan = "5" align="center">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

                </td>
        </tr>
    </table>
                            </p>

					</div>
				</div>
			</div>
			<div class="footer">
				<div>
					<ul>
						<li>
							<a href="All_Messages.aspx" class="product"></a>
							<h1>DATASET</h1>
						</li>
                        	<li>
							<a href="AddNewMessage.aspx" class="flavor"></a>
							<h1>ADD NEW MESSAGE</h1>
						</li>
						<li>
							<a href="Azure.aspx" class="about"></a>
							<h1>RESULT PAGE</h1>
						</li>
						<li>
							<a href="Contact.aspx" class="contact"></a>
							<h1>CONTACT</h1>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div id="footer">
			<div>
				<div class="connect">
					<a href="http://freewebsitetemplates.com/go/facebook/" class="facebook">facebook</a>
					<a href="http://freewebsitetemplates.com/go/twitter/" class="twitter">twitter</a>
					<a href="http://freewebsitetemplates.com/go/googleplus/" class="googleplus">googleplus</a>
					<a href="http://pinterest.com/fwtemplates/" class="pinterest">pinterest</a>
				</div>
				<p>&copy; SMS Spam Classification. All Rights Reserved.</p>
			</div>
		</div>
	</div>

    </div>
            </form>

</body>
</html>

