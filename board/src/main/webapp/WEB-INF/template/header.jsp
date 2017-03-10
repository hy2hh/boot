<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous" ></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<title>spring jpa test</title>
	<style type="text/css">
		body {
		  padding-top: 20px;
		}
		
		.footer {
		  padding-top: 40px;
		  padding-bottom: 40px;
		  margin-top: 40px;
		  border-top: 1px solid #eee;
		}
		
		/* Main marketing message and sign up button */
		.jumbotron {
		  text-align: center;
		  background-color: transparent;
		}
		.jumbotron .btn {
		  padding: 14px 24px;
		  font-size: 21px;
		}
		
		/* Customize the nav-justified links to be fill the entire space of the .navbar */
		
		.nav-justified {
		  background-color: #eee;
		  border: 1px solid #ccc;
		  border-radius: 5px;
		}
		.nav-justified > li > a {
		  padding-top: 15px;
		  padding-bottom: 15px;
		  margin-bottom: 0;
		  font-weight: bold;
		  color: #777;
		  text-align: center;
		  background-color: #e5e5e5; /* Old browsers */
		  background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#e5e5e5));
		  background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e5e5e5 100%);
		  background-image:      -o-linear-gradient(top, #f5f5f5 0%, #e5e5e5 100%);
		  background-image:         linear-gradient(to bottom, #f5f5f5 0%,#e5e5e5 100%);
		  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f5f5f5', endColorstr='#e5e5e5',GradientType=0 ); /* IE6-9 */
		  background-repeat: repeat-x; /* Repeat the gradient */
		  border-bottom: 1px solid #d5d5d5;
		}
		.nav-justified > .active > a,
		.nav-justified > .active > a:hover,
		.nav-justified > .active > a:focus {
		  background-color: #ddd;
		  background-image: none;
		  -webkit-box-shadow: inset 0 3px 7px rgba(0,0,0,.15);
		          box-shadow: inset 0 3px 7px rgba(0,0,0,.15);
		}
		.nav-justified > li:first-child > a {
		  border-radius: 5px 5px 0 0;
		}
		.nav-justified > li:last-child > a {
		  border-bottom: 0;
		  border-radius: 0 0 5px 5px;
		}
		
		@media (min-width: 768px) {
		  .nav-justified {
		    max-height: 52px;
		  }
		  .nav-justified > li > a {
		    border-right: 1px solid #d5d5d5;
		    border-left: 1px solid #fff;
		  }
		  .nav-justified > li:first-child > a {
		    border-left: 0;
		    border-radius: 5px 0 0 5px;
		  }
		  .nav-justified > li:last-child > a {
		    border-right: 0;
		    border-radius: 0 5px 5px 0;
		  }
		}
		
		/* Responsive: Portrait tablets and up */
		@media screen and (min-width: 768px) {
		  /* Remove the padding we set earlier */
		  .masthead,
		  .marketing,
		  .footer {
		    padding-right: 0;
		    padding-left: 0;
		  }
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="masthead">
			<h3 class="text-muted">Spring boot Demo</h3>
			<nav>
				<ul class="nav nav-justified">
					<li class="nav-main"><a href="/">Home</a></li>
					<li class="nav-task"><a href="/alltasks">AllTest</a></li>
					<li class="nav-manage"><a href="/newtask">Test Task Manage</a></li>
					<li class="nav-download"><a href="#">Download</a></li>
					<li class="nav-about"><a href="#">About</a></li>
				</ul>			
			</nav>
		</div>
	</div>
	<script>
		var $nav  = $('.nav');
		
		switch (location.pathname) {
			case "/newtask": case "/updatetask": case "/savetask": case "/deletetask":
				$nav.children('.nav-manage').addClass('active');						
				break;
			case "/alltasks":
				$nav.children('.nav-task').addClass('active');
				break;
			default:
				$nav.children('.nav-main').addClass('active');
				break;
		}
	</script>