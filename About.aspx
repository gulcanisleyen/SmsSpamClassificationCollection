<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>SMS Spam Classification</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />

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
		
			<div class="bodya">
				<div>
					<div>

						<h2>What is SPAM?</h2>
						<p>Nowadays, Most of the people sending mails or communication with each others. Some of the messages contains bad words which is called spam. This is kind of message harm your devices. People sending this kind of messages to attract receiver ideas. 

						</p>
                        <p>
                            We have done lots of researches and written an article about SPAM and HAM messages. We have used Naive Bayes algorithm to guess prediction given test. You can read more in article...
                        </p>
                        <a href="AddNewMessage.aspx">You can download here</a>

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

