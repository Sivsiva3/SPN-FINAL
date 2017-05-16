<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forum.aspx.cs" Inherits="SPN.Forum" %>

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
    <form runat="server" action="Forum.aspx">
		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="SPN.aspx">SPN Starter Kit</a></h1>
				<nav id="nav">
					<ul>
						<li>Hello <%=firstname %>, Let's hunt some creatures!</li>
						<li><a href="SignIn.aspx" class="button special">Disconnect</a></li>
					</ul>
				</nav>
			</header>

		<section id="main" class="wrapper style1">
				<header class="major">
					<center>
					<h2>Ellen's Place</h2>
					<p>She might be gone, but the bar keeps on living.</p>
					</center>
				</header>
			</section>
        <center>
            <table>
                <tr>
                    <td><center>ID</center></td>
                    <td><center>Username</center></td>
                    <td><center>Level</center></td>
                    <td><center>Title</center></td>
                    <td><center>Insight</center></td>
               </tr>
        <%=forumpost %>
            </table>
        </center>
		<!-- Footer -->
			<footer id="footer"><center>
                  If you wish to delete one of your posts, Follow the steps.
                <br />
                Enter here the number of your post and username:
                <br />
                <br />
                <input type="number" name="id" placeholder="Post Id"/>
                <br />
                <input type="text" name="username" placeholder="Username" />
                <br />
                <input type="submit" value="Click Here" />
			</center></footer>
    </form>
</body>
</html>
