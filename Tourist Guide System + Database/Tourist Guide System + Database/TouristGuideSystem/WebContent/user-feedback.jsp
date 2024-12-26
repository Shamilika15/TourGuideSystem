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
	<%
		if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<link rel="stylesheet"
		href="../../../../../../images/demobar_w3_4thDec2019.css">
	
	<jsp:include page="user-side-header.jsp"></jsp:include>
	
	<section class="w3l-form-34-main">
		<div class="form34-sub">
			<div class="form34">
				<h4 class="form-head">Your Feedback</h4>
				<br>
				<form action="AddFeedback" method="post">
					<div class="">
						<p class="text-head">Feedback Id</p>
						<%
							String fid = DatabaseConnection.generateTourFeedbackId();
						%>
						<input type="text" class="input" placeholder="Feedback Id"
							name="fid" value="<%=fid%>" readonly  />
					</div>
					<div class="">
						<p class="text-head">Your Feedback</p>
						<input type="text" class="input" placeholder="Your Feedback"
							style="height: 100px;" name="feedback" required />
					</div>
					<button type="submit" class="buttonbg signinbutton">Submit
						Feedback</button>
				</form>
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