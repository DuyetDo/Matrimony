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
    <!--Google Webfont-->
		<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,300italic,400italic,500,500italic,600,600italic,700' rel='stylesheet' type='text/css'>
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="<c:url value='/static/images/fav.png' />" />
    <!-- CSS datatable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />
    <!-- Style custom -->
    <style type="text/css">
    a:link {
    text-decoration: none;
    }

    a:hover {
    text-decoration: none;
    }
    </style>
</head>
<body>
<!-- Header
    ================================================= -->
		<header id="header">
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
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right main-menu">
			  <li class="dropdown"><a href="<c:url value="/" />"> <img
						src="<c:url value='/static/images/users/user-21.jpg' />" alt=""
						class="profile-photo-smm" /> ${loggedinuser}
			  </a></li>
				<sec:authorize access="hasRole('ADMIN')">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
						role="button" aria-haspopup="true" aria-expanded="false">Admin
							<span><img
								src="<c:url value='/static/images/down-arrow.png' />" alt="" /></span>
					    </a>
						<ul class="dropdown-menu newsfeed-home">
							<li><a href="<c:url value="/usersList" />">User Management</a></li>
							<li><a href="<c:url value="/feesList" />">Fee Management</a></li>
						</ul>
					</li>
				</sec:authorize>

				<li class="dropdown"><a href="index.html">Home</a></li>
              
              <li class="dropdown"><a href="<c:url value="/logout" />">Log Out</a></li>
            </ul>
            
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
      </nav>
    </header>
    <!--Header End-->

    <!-- Top Banner
    ================================================= -->
		

    <!-- Features Section
    ================================================= -->
		
    <!-- Download Section
    ================================================= -->
    <section id="app-download">
			<div class="container wrapper">
				<table id="example" class="display" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>Username</th>
                <th>Fee ID</th>
                <th>Value</th>
                <th>Create Date</th>
                <th></th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Username</th>
                <th>Fee ID</th>
                <th>Value</th>
                <th>Create Date</th>
                <th></th>
            </tr>
        </tfoot>
        <tbody>
				<c:forEach items="${aufList}" var="auf">
				<c:set var="create" value="${auf.createDatetime}"></c:set>
					<tr>
						<td>${auf.ssoId}</td>
						<td>${auf.feeId}</td>
						<td>${auf.createDatetime}</td>
						<td><fmt:formatDate pattern="dd-MM-yyyy"
								 value="${create}" /></td>
						<td><a href="<c:url value='/edit-user-${auf.id}' />"
								class="glyphicon glyphicon-pencil"></a></td>
					</tr>
				</c:forEach>
			</tbody>
    </table>
			</div>
		</section>
		

    <!-- Image Divider
    ================================================= -->
    
    <!-- Facts Section
    ================================================= -->
		

    <!-- Live Feed Section
    ================================================= -->
		


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
        <p>copyright @duyetdk-team 2017. All rights reserved</p>
      </div>
		</footer>

    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- Scripts
    ================================================= -->
    <script src="<c:url value='/static/js/jquery-3.1.1.min.js'/>"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="<c:url value='/static/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/static/js/jquery.appear.min.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.incremental-counter.js'/>"></script>
    <script src="<c:url value='/static/js/script.js'/>" src="js/script.js"></script>
    <script src="<c:url value='/static/js/jquery-ui.js'/>"></script>
	<script src="<c:url value='/static/js/jquery.popconfirm.js'/>"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable();
		});

		// Delete confirmation
	    $(".btn-delete").popConfirm({
	        title: "Delete",
	        content: "Are you sure you want to delete this item?",
	        placement: "top"
	    });
	</script>
</body>
</html>