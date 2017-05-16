<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JeffersonStarship.aspx.cs" Inherits="SPN.JeffersonStarship" %>

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
    <form runat="server" action="JeffersonStarship.aspx">
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
					<h2>Jefferson Starship</h2>
					<p>Here's everything you need to know.</p>
                        <p class ="p">
                Jefferson Starships, named by Dean Winchester, are new monster hybrids created by Eve as a test subject to see if she could create the ultimate supernatural predator. They are a combination of many of the monsters Sam and Dean have faced. They have the teeth of a vampire and the spike of a wraith. They can also shapeshift into whomever they want.
                To combat Crowley's attacks on her children, Eve decided to turn every human into a monster, thus making every soul on Earth her property. To do this she settled in a town and began building the ultimate monster. Her first creations attacked a club, and started infecting others.
                Since Dean Winchester was the one who discovered these creatures, Bobby Singer told him that he should get to name them. Dean Winchester named them after the band formed in the early 1970s. He stated that his reason was "Because they're horrible and hard to kill."
                    </p>
                    <img src ="css/JS.gif" />
                </center>>
				</header>
			</section>
		
    </form>
</body>
</html>
