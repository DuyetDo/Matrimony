<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<a href="#page-contents" id="test"><b style="font-size:14px;">Signup Now!</b></a> <br />
					<a href="#">Forgot password?</a>
					<img class="form-shadow" src="images/bottom-shadow.png" alt="" />
				</div><!-- Sign In Form End -->

        <svg class="arrows hidden-xs hidden-sm">
          <path class="a1" d="M0 0 L30 32 L60 0"></path>
          <path class="a2" d="M0 20 L30 52 L60 20"></path>
          <path class="a3" d="M0 40 L30 72 L60 40"></path>
        </svg>
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
		
			<div id="page-contents" class="container-fluid slideanim">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div class="contact-us">
								<div class="row">
									<div class="col-md-8 col-sm-7">
										<h4 class="grey">Leave a Message</h4>
										<form class="contact-form">
											<div class="col-md-6 col-sm-6">
												<div class="form-group">
													<i class="icon ion-person"></i> <input id="sso_id"
														type="text" name="username" class="form-control"
														placeholder="Enter your username *" required="required"
														data-error="Username is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-email"></i> <input id="password"
														type="text" name="password" class="form-control"
														placeholder="Enter your password *" required="required"
														data-error="password is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="firstname"
														type="text" name="firstname" class="form-control"
														placeholder="Enter your firstname *" required="required"
														data-error="firstname is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="lastname"
														type="text" name="lastname" class="form-control"
														placeholder="Enter your lastname *" required="required"
														data-error="lastname is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="email"
														type="text" name="email" class="form-control"
														placeholder="Enter your email *" required="required"
														data-error="email is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="birthday"
														class="datepicker form-control" type="text" name="birthday">
												</div>
												<div class="form-group">
													<label>Gender</label><br /> Male: <input id="male"
														type="radio" name="sex"> Female: <input id="female"
														type="radio" name="sex">
												</div>
		
											</div>
		
											<div class="col-md-6 col-sm-6">
		
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="address"
														type="text" name="address" class="form-control"
														placeholder="Enter your address *" required="required"
														data-error="Address is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input
														id="contact_number" type="text" name="contact_number"
														class="form-control"
														placeholder="Enter your contact-number *"
														required="required" data-error="Contact number is required.">
												</div>
												<div class="form-group">
													<i class="icon ion-android-call"></i> <input id="description"
														type="text" name="description" class="form-control"
														placeholder="Enter your description">
												</div>
												<div class="form-group">
													<label for="sel1">Mother Tongue (select one):</label> <select
														class="form-control" id="sel1">
														<option>Australia</option>
														<option>Belgium</option>
														<option>Brazil</option>
														<option>Bulgaria</option>
														<option>Germany</option>
														<option>Hong Kong</option>
														<option>Indonesia</option>
														<option>Italy</option>
														<option>Japan</option>
														<option>Korea, South</option>
														<option>Laos</option>
														<option>Macau</option>
														<option>New Zealand</option>
														<option>USA</option>Australia
														<option>Viet Nam</option>
														<option>France</option>
														<option>England</option>
													</select>
												</div>
												<div class="form-group">
													<label for="sel1">Martial Status (select one):</label> <select
														class="form-control" id="sel1">
														<option>Never Married</option>
														<option>Divorced</option>
														<option>Widowed</option>
													</select>
												</div>
												<div class="form-group">
													<label for="sel1">Select country (select one):</label> <select
														class="form-control" id="sel1">
														<option>Australia</option>
														<option>Belgium</option>
														<option>Brazil</option>
														<option>Bulgaria</option>
														<option>Germany</option>
														<option>Hong Kong</option>
														<option>Indonesia</option>
														<option>Italy</option>
														<option>Japan</option>
														<option>Korea, South</option>
														<option>Laos</option>
														<option>Macau</option>
														<option>New Zealand</option>
														<option>USA</option>Australia
														<option>Viet Nam</option>
														<option>France</option>
														<option>England</option>
													</select>
												</div>
											</div>
		
										</form>
										<br />
		
									</div>
									<div class="col-md-4 col-sm-5">
										<h4 class="grey">Reach Us</h4>
										<div class="reach">
											<span class="phone-icon"><i
												class="icon ion-android-call"></i></span>
											<p>+84 989123465</p>
										</div>
										<div class="reach">
											<span class="phone-icon"><i class="icon ion-email"></i></span>
											<p>team1@fpt.edu.vn</p>
										</div>
										<div class="reach">
											<span class="phone-icon"><i
												class="icon ion-ios-location"></i></span>
											<p>Ton That Thuyet, Nam Tu Liem, Ha Noi</p>
										</div>
										<ul class="list-inline social-icons">
											<li><a href="#"><i class="icon ion-social-facebook"></i></a></li>
											<li><a href="#"><i class="icon ion-social-twitter"></i></a></li>
											<li><a href="#"><i class="icon ion-social-googleplus"></i></a></li>
											<li><a href="#"><i class="icon ion-social-pinterest"></i></a></li>
											<li><a href="#"><i class="icon ion-social-linkedin"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="funkyradio">
									<div class="funkyradio-default">
										<input type="radio" name="radio" id="radio1" /> <label
											for="radio1">Monthly 50$</label>
									</div>
									<div class="funkyradio-primary">
										<input type="radio" name="radio" id="radio2" checked /> <label
											for="radio2">Yearly 500$</label>
									</div>
								</div>
								<button class="btn-primary">Register</button>
							</div>
						</div>
					</div>
				</div>
			</div>
	

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