<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html lang="en">



<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tourist Guide System</title>
<link rel="stylesheet" href="assets/css/style-freedom.css">
</head>

<body>
	<script
		src='../../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
	<script
		src="../../../../../../../m.servedby-buysellads.com/monetization.js"
		type="text/javascript"></script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
			}
		})();
	</script>
	<script>
		(function() {
			if (typeof _bsa !== 'undefined' && _bsa) {
				// format, zoneKey, segment:value, options
				_bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
			}
		})();
	</script>
	
	<div id="codefund">
		
	</div>
	<script src="https://ethicalads.io/?ref=codefund" async="async"></script>

	
	<script async
		src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-149859901-1');
	</script>

	<script>
		window.ga = window.ga || function() {
			(ga.q = ga.q || []).push(arguments)
		};
		ga.l = +new Date;
		ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
		ga('require', 'eventTracker');
		ga('require', 'outboundLinkTracker');
		ga('require', 'urlChangeTracker');
		ga('send', 'pageview');
	</script>
	<script async src='../../../../../../js/autotrack.js'></script>

	<meta name="robots" content="noindex">
<body>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	
	<div class="w3l-headers-9">
		<header>
			<div class="wrapper">
				<div class="header">
					<div>
						<h1>
							<a href="index.jsp" class="logo">Tourist Guide System</a>
							
						</h1>
					</div>
					<div class="bottom-menu-content">
						<input type="checkbox" id="nav" /> <label for="nav"
							class="menu-bar"></label>
						<nav>
							<ul class="menu">
								<li><a href="index.jsp" class="link-nav">Home</a></li>
								<li><a href="user-login.jsp" class="link-nav">User
										Login</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</header>
		
	</div>
	
	<section class="w3l-form-34-main">
		<div class="form34-sub">
			<div class="form34">
				<h4 class="form-head">Admin Login</h4><br>
				<form action="AdminLogin" method="post">
					<div class="">
						<p class="text-head">User Name</p>
						<input type="text" class="input" placeholder="User Name" name="uname"
							required />
					</div>
					<div class="">
						<p class="text-head">Password</p>
						<input type="password" class="input" placeholder="Password" name="upass"
							required />
					</div>
					<%
						String captcha = null;
						ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select captcha from tblcaptcha");
						if (resultset.next()) {
							captcha = resultset.getString(1);
						}
					%>
					<div class="">
						<p class="text-head">Verification Code</p>
						<input type="text" name="vercode" class="input"
							style="width: 350px;" placeholder="Enter Catptcha Here" />&nbsp;<input
							type="text" value="<%=captcha%>" class="input"
							style="width: 80px;" readonly />
					</div>
					<button type="submit" class="buttonbg signinbutton">Login</button>
					
				</form>
			</div>
		</div>
	</section>
	
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
</body>



</html>