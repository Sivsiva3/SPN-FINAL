<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SPN.aspx.cs" Inherits="SPN.SPN" %>

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
    <form runat="server">
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

		<!-- Banner -->
			<section id="banner" >
				<div class="inner">
					<h2><img src="SPNSK.png"/></h2>
                    
					<ul class="actions">
						<li><a href="AddFile.aspx" class="button big special">Post Insight</a></li>
						<li><a href="Forum.aspx" class="button big alt">Get Insight</a></li>
					</ul>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="wrapper style1">
				<header class="major">
					<center>
					<h2>Don't have a Bobby? Hit the internet!</h2>
					</center>
				</header>
				<div class="container">
					<div class="row">
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Vampire</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Werewolf</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<a href="JeffersonStarship.aspx" class="nounderline" ><h3>Jefferson Starship</h3></a>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Demon</h3>
							</section>
							</center>
						</div>

						<div class="4u">
							<center>
							<section class="special box">
								<h3>Angel</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Ghost</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Amazon</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Shapeshifter</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Djinn</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Fairy</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Kitsune</h3>
							</section>
							</center>
						</div>
						<div class="4u">
							<center>
							<section class="special box">
								<h3>Leviathan</h3>
							</section>
							</center>
						</div>
					</div>
				</div>
			</section>
				
		
    </form>
</body>
</html>
