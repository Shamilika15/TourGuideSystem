<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="com.algorithm.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">



<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Curfew E-Pass Travelling System</title>
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
	<!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
	<div id="codefund">
		<!-- fallback content -->
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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="admin-side-header.jsp"></jsp:include>
	<!-- inner banner -->

	<!-- //covers -->
	<!-- form 34-2 -->
	<section class="w3l-form-34-main">
		<div class="w3l-book-9">
			<div class="main-top">
				<div class="wrapper padding-bord">
					<p class="form-para">
						<strong>Change Password</strong>
					</p>
					<%
						final String secretKey = "%@ajdhdklddf";
						ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='" + session.getAttribute("uname") + "'");
						if (rs.next()) {
							String password=rs.getString("password");
							String decryptPassword=AES.decrypt(password, secretKey);
					%>
					<form action="AdminPasswordChange" method="post">
						<div class="d-grid grid-col-4">
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Current Password
								</p>
								<input type="password" name="cpassword" class="input"
									value="<%=decryptPassword%>" readonly />
							</div>
							
						</div>
						<div class="d-grid grid-col-2">
						<div class="ele-9its_grid">
								<p class="text-left">
									<strong>New Password</strong>
								</p>
								<input type="password" name="password" class="input"
									value="" />
							</div>
							<div class="ele-9its_grid">
								<p class="text-left">
									<strong>Confirm Password</strong>
								</p>
								<input type="password" name="confpass" class="input"
									value="" />
							</div>
						</div>
						<div class="ele-9its_grid">
								<input type="submit" class="btn btn-primary"
									value="Change Password"/>
						</div>
					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="admin-side-footer.jsp"></jsp:include>
	<%
		} else {
	response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>