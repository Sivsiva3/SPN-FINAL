<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFile.aspx.cs" Inherits="SPN.AddFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Supernatural Starter Kit</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
            <link rel="stylesheet" href="css/font-awesome.min.css" />
		</noscript>
</head>
<body id="top">
    <form runat="server" action="AddFile.aspx">
		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="SPN.aspx">SPN Starter Kit</a></h1>
				<nav id="nav">
					<ul>
						<li>Hello <%=firstname %>, Let's hunt some creatures!</li>
						<li><a href="#" class="button special">Disconnect</a></li>
					</ul>
				</nav>
			</header>

		<section id="main" class="wrapper style1">
				<header class="major">
					<center>
					<h2>Something you wanna share?</h2>
					<p>Write it down and millions will thank you. Just fill up this form.</p>
					</center>
				</header>
			</section>
		<center>
        <div>
            <span>Title:</span>
            <input class="input" type="text" name="title" placeholder="Title" />
       </div>	
        <div>
            <span>Your Insight:</span>
            <input class="input" type="text" name="content" placeholder="Write Text Here" />
       </div>
            <br />
            <input type="submit" value="post" />
            <br />
            <br />
        </center>
    </form>
</body>
</html>
