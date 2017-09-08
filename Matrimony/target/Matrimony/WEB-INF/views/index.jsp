<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>  	    
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>Friend Finder | A Complete Social Network Template</title>

    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />" />
		<link rel="stylesheet" href="<c:url value='/static/css/style.css' />" />
		<link rel="stylesheet" href="<c:url value='/static/css/ionicons.min.css' />" />
    	<link rel="stylesheet" href="<c:url value='/static/css/font-awesome.min.css' />" />
    	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!--Google Webfont-->
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700' rel='stylesheet' type='text/css'>
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="<c:url value='/static/images/fav.png' />" />
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- Header
    ================================================= -->
		<header id="header" class="lazy-load">
      <nav class="navbar navbar-default navbar-fixed-top menu">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="<c:url value='/static/images/logo.png' />" alt="logo" /></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <!-- /.navbar-collapse -->
        </div><!-- /.container -->
      </nav>
    </header>
    <!--Header End-->

    <!-- Top Banner
    ================================================= -->
		<section id="banner">
			<div class="container">

        <!-- Sign In Form
        ================================================= -->
        <div class="sign-up-form">
					<a href="index.html" class="logo"><img src="<c:url value='/static/images/logo.png' />" alt="Friend Finder"/></a>
					<h2 class="text-white">Find My Friends</h2>
					<div class="line-divider"></div>
					<div class="form-wrapper">
						<p class="signup-text">Signin now</p>
						<c:url var="loginUrl" value="/login" />
				<form action="${loginUrl}" id="sign_in" method="POST">
					<c:if test="${param.error != null}">
						<div class="alert alert-danger">
							<p>Username or password invalid</p>
						</div>
					</c:if>
					<c:if test="${param.logout != null}">
						<div class="alert alert-success">
							<p>You are signed out</p>
						</div>
					</c:if>
					<fieldset class="form-group">
						<input type="text" class="form-control" name="ssoId"
							id="example-name" placeholder="Enter username" required autofocus>
					</fieldset>
					<fieldset class="form-group">
						<input type="password" class="form-control" name="password"
							id="example-password" placeholder="Enter a password" required>
					</fieldset>
					    <div class="col-xs-8 p-t-5">
                            <input type="checkbox" name="remember-me" id="rememberme" class="filled-in chk-col-pink">
                            <label for="rememberme">Remember me</label>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
					<button class="btn-secondary">Signin</button>
				</form>
					</div>
					<a href="#">Forgotten account?</a><br/><br/>
					<a href="<c:url value="/registration" />" id="test"><b style="font-size:14px;"> Signup now</b></a> 
					<img class="form-shadow" src="<c:url value='/static/images/bottom-shadow.png' />" alt="" />
				</div><!-- Sign In Form End -->

       
			</div>
		</section>

    <!-- Features Section
    ================================================= -->
		
    <!-- Download Section
    ================================================= -->
		

    <!-- Image Divider
    ================================================= -->
    
    <!-- Facts Section
    ================================================= -->
		

    <!-- Live Feed Section
    ================================================= -->
		
<!-- 			<div id="page-contents-sg" class="container-fluid slideanim"> -->
<!-- 				<div class="container"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-md-10 col-md-offset-1"> -->
<!-- 							<div class="contact-us"> -->
<!-- 								<div class="row"> -->
<!-- 									<div class="col-md-8 col-sm-7"> -->
<!-- 										<h4 class="grey">Create a new account</h4> -->
<%-- 										<form:form class="contact-form" method="POST" modelAttribute="signup"> --%>
<!-- 											<div class="col-md-6 col-sm-6"> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="ssoid" path="ssoId" --%>
<%-- 														type="text" class="form-control" --%>
<%-- 														placeholder="User name" required="required" --%>
<%-- 														data-error="User Name is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="password" path="password" --%>
<%-- 														type="text" name="password" class="form-control" --%>
<%-- 														placeholder="Password" required="required" --%>
<%-- 														data-error="Password is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="firstname" path="firstName" --%>
<%-- 														type="text" name="firstName" class="form-control" --%>
<%-- 														placeholder="First name" required="required" --%>
<%-- 														data-error="firstname is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="lastname" path="lastName" --%>
<%-- 														type="text" name="lastName" class="form-control" --%>
<%-- 														placeholder="Last name" required="required" --%>
<%-- 														data-error="Last name is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="email" path="email" --%>
<%-- 														type="text" name="email" class="form-control" --%>
<%-- 														placeholder="Email" required="required" --%>
<%-- 														data-error="Email is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="birthday" path="birthday" --%>
<%-- 														class="datepicker form-control" type="text" name="birthday" --%>
<%-- 														placeholder="Birthday" required="required" --%>
<%-- 														data-error="Birthday is required."/> --%>
<!-- 												</div> -->
<!-- <!-- 												<div class="form-group"> --> -->
<%-- <%-- 													<label>Gender</label><br /><form:input id="male" --%> --%>
<%-- <%-- 														type="radio" name="gender" path="gender" value="Male"/> Male  --%> --%>
<%-- <%-- 														<form:input id="female" --%> --%>
<%-- <%-- 														type="radio" name="gender" path="gender" value="Male"/> Female --%> --%>
<!-- <!-- 												</div> --> -->
		
<!-- 											</div> -->
		
<!-- 											<div class="col-md-6 col-sm-6"> -->
		
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="address" path="address" --%>
<%-- 														type="text" name="address" class="form-control" --%>
<%-- 														placeholder="Address" required="required" --%>
<%-- 														data-error="Address is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input path="contactNumber" --%>
<%-- 														id="contact_number" type="text" name="contact_number" --%>
<%-- 														class="form-control" --%>
<%-- 														placeholder="Contact number" --%>
<%-- 														required="required" data-error="Contact number is required."/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:input id="description" path="description" --%>
<%-- 														type="text" name="description" class="form-control" --%>
<%-- 														placeholder="Description"/> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:select path="motherTongue" multiple="false" --%>
<%-- 														class="form-control" id="select"> --%>
<%-- 														<form:option class="form-control" value="" --%>
<%-- 															label="Choose your mother tongue" disabled="true" --%>
<%-- 															selected="true"></form:option> --%>
<%-- 														<form:option class="form-control" value="Af-Soomaali" label="Af-Soomaali"></form:option> --%>
<%-- 														<form:option class="form-control" value="Afrikaans" label="Afrikaans"></form:option> --%>
<%-- 														<form:option class="form-control" value="Azərbaycan dili" label="Azərbaycan dili"></form:option> --%>
<%-- 														<form:option class="form-control" value="Bahasa Indonesia" label="Bahasa Indonesia"></form:option> --%>
<%-- 														<form:option class="form-control" value="Bahasa Melayu" label="Bahasa Melayu"></form:option> --%>
<%-- 														<form:option class="form-control" value="Basa Jawa" label="Basa Jawa"></form:option> --%>
<%-- 														<form:option class="form-control" value="Bisaya" label="Bisaya"></form:option> --%>
<%-- 														<form:option class="form-control" value="Bosanski" label="Bosanski"></form:option> --%>
<%-- 														<form:option class="form-control" value="Brezhoneg" label="Brezhoneg"></form:option> --%>
<%-- 														<form:option class="form-control" value="Corsu" label="Corsu"></form:option> --%>
<%-- 														<form:option class="form-control" value="Cymraeg" label="Cymraeg"></form:option> --%>
<%-- 														<form:option class="form-control" value="Dansk" label="Dansk"></form:option> --%>
<%-- 														<form:option class="form-control" value="Deutsch" label="Deutsch"></form:option> --%>
<%-- 														<form:option class="form-control" value="Eesti" label="Eesti"></form:option> --%>
<%-- 														<form:option class="form-control" value="English (UK)" label="English (UK)"></form:option> --%>
<%-- 														<form:option class="form-control" value="English (US)" label="English (US)"></form:option> --%>
<%-- 														<form:option class="form-control" value="Filipino" label="Filipino"></form:option> --%>
<%-- 														<form:option class="form-control" value="Brezhoneg" label="Brezhoneg"></form:option> --%>
<%-- 														<form:option class="form-control" value="Corsu" label="Corsu"></form:option> --%>
<%-- 														<form:option class="form-control" value="Cymraeg" label="Cymraeg"></form:option> --%>
<%-- 														<form:option class="form-control" value="Dansk" label="Dansk"></form:option> --%>
<%-- 														<form:option class="form-control" value="Deutsch" label="Deutsch"></form:option> --%>
<%-- 														<form:option class="form-control" value="Eesti" label="Eesti"></form:option> --%>
<%--  										</form:select> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:select path="martialStatus" multiple="false" --%>
<%-- 														class="form-control" id="sel1"> --%>
<%-- 														<form:option class="form-control" value="" --%>
<%-- 															label="Martial status" disabled="true" --%>
<%-- 															selected="true"></form:option> --%>
<%-- 														<form:option class="form-control" value="Never Married" label="Never Married"></form:option> --%>
<%-- 														<form:option class="form-control" value="Divorced" label="Divorced"></form:option> --%>
<%-- 														<form:option class="form-control" value="Widowed" label="Widowed"></form:option> --%>
<%-- 													</form:select> --%>
<!-- 												</div> -->
<!-- 												<div class="form-group"> -->
<%-- 													<form:select path="countryLivingIn" multiple="false" --%>
<%-- 														class="form-control" id="sel1"> --%>
<%-- 														<form:option class="form-control" value="" --%>
<%-- 															label="Country living in" disabled="true" --%>
<%-- 															selected="true"></form:option> --%>
<%-- 														<form:option class="form-control" value="Australia" label="Australia"></form:option> --%>
<%-- 														<form:option class="form-control" value="Belgium" label="Belgium"></form:option> --%>
<%-- 														<form:option class="form-control" value="Brazil" label="Brazil"></form:option> --%>
<%-- 														<form:option class="form-control" value="Bulgaria" label="Bulgaria"></form:option> --%>
<%-- 														<form:option class="form-control" value="England" label="England"></form:option> --%>
<%-- 														<form:option class="form-control" value=" France" label=" France"></form:option> --%>
<%-- 														<form:option class="form-control" value="Germany" label="Germany"></form:option> --%>
<%-- 														<form:option class="form-control" value="Hong Kong" label="Hong Kong"></form:option> --%>
<%-- 														<form:option class="form-control" value="Indonesia" label="Indonesia"></form:option> --%>
<%-- 														<form:option class="form-control" value="Italy" label="Italy"></form:option> --%>
<%-- 														<form:option class="form-control" value="Japan" label="Japan"></form:option> --%>
<%-- 														<form:option class="form-control" value="Korea, South" label="Korea, South"></form:option> --%>
<%-- 														<form:option class="form-control" value="Laos" label="Laos"></form:option> --%>
<%-- 														<form:option class="form-control" value="Macau" label="Macau"></form:option> --%>
<%-- 														<form:option class="form-control" value="New Zealand" label="New Zealand"></form:option> --%>
<%-- 														<form:option class="form-control" value="USA" label="USA"></form:option> --%>
<%-- 														<form:option class="form-control" value="Viet Nam" label="Viet Nam"></form:option> --%>
<%-- 													</form:select> --%>
<!-- 												</div> -->
<!-- 											</div> -->
<%-- 										</form:form> --%>
<!-- 										<br /> -->
		
<!-- 									</div> -->
								
<!-- 								</div> -->
<!-- 								<div class="funkyradio"> -->
<!-- <!-- 									<div class="funkyradio-default"> --> -->
<!-- <!-- 										<input type="radio" name="radio" id="radio1" /> <label --> -->
<!-- <!-- 											for="radio1"> Monthly 50$</label> --> -->
<!-- <!-- 									</div> --> -->
<!-- <!-- 									<div class="funkyradio-primary"> --> -->
<!-- <!-- 										<input type="radio" name="radio" id="radio2" checked /> <label --> -->
<!-- <!-- 											for="radio2"> Yearly 500$</label> --> -->
<!-- <!-- 									</div> --> -->
<!-- 								</div> -->
<!-- 								<button class="btn-primary">Register</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
	

    <!-- Footer
    ================================================= -->
		<footer id="footer">
      <div class="container">
      	<div class="row">
          <div class="footer-wrapper">
            <div class="col-md-3 col-sm-3">
              <a href=""><img src="<c:url value='/static/images/logo-black.png' />" alt="logo" class="footer-logo" /></a>
              <ul class="list-inline social-icons">
              	<li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
              	<li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For individuals</h6>
              <ul class="footer-links">
                <li><a href="">Signup</a></li>
                <li><a href="">login</a></li>
                <li><a href="">Explore</a></li>
                <li><a href="">Finder app</a></li>
                <li><a href="">Features</a></li>
                <li><a href="">Language settings</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For businesses</h6>
              <ul class="footer-links">
                <li><a href="">Business signup</a></li>
                <li><a href="">Business login</a></li>
                <li><a href="">Benefits</a></li>
                <li><a href="">Resources</a></li>
                <li><a href="">Advertise</a></li>
                <li><a href="">Setup</a></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>About</h6>
              <ul class="footer-links">
                <li><a href="">About us</a></li>
                <li><a href="">Contact us</a></li>
                <li><a href="">Privacy Policy</a></li>
                <li><a href="">Terms</a></li>
                <li><a href="">Help</a></li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-3">
              <h6>Contact Us</h6>
                <ul class="contact">
                	<li><i class="icon ion-ios-telephone-outline"></i>+1 (234) 222 0754</li>
                	<li><i class="icon ion-ios-email-outline"></i>info@thunder-team.com</li>
                  <li><i class="icon ion-ios-location-outline"></i>228 Park Ave S NY, USA</li>
                </ul>
            </div>
          </div>
      	</div>
      </div>
      <div class="copyright">
        <p>copyright @thunder-team 2016. All rights reserved</p>
      </div>
		</footer>

    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- Scripts
    ================================================= -->
    <script src="<c:url value='/static/js/jquery-3.1.1.min.js'/>"></script>
    <script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/static/js/jquery.appear.min.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.incremental-counter.js'/>"></script>
    <script src="<c:url value='/static/js/script.js'/>" src="js/script.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
		$( document ).ready(function() {
			$(".datepicker").datepicker({
				altFormat: "yy-mm-dd",
				maxDate: "0d",
				changeMonth : true,
				changeYear : true,
				showButtonPanel : true
			});
			
			$("#test").on('click', function(event) {
			    // Make sure this.hash has a value before overriding default behavior
			    if (this.hash !== "") {
			      // Prevent default anchor click behavior
			      event.preventDefault();

			      // Store hash
			      var hash = this.hash;

			      // Using jQuery's animate() method to add smooth page scroll
			      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
			      $('html, body').animate({
			        scrollTop: $(hash).offset().top
			      }, 900, function(){
			   
			        // Add hash (#) to URL when done scrolling (default click behavior)
			        window.location.hash = hash;
			      });
			    } // End if
			  });
			
			$(window).scroll(function() {
			    $(".slideanim").each(function(){
			      var pos = $(this).offset().top;

			      var winTop = $(window).scrollTop();
			        if (pos < winTop + 600) {
			          $(this).addClass("slide");
			        }
			    });
			  });
		});
		
	</script>
</body>
</html>