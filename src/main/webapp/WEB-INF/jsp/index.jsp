<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>Book Store</title>
		
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />

	</head>
	<body>
	
		<!-- 
		=========================================================================================
		Bar Navigation
		=========================================================================================
		-->
		
		<header>
			<div class="container">
				<div class="row">
					<div class="left-header col-xs-12- col-sm-6 col-md-6 col-lg-6">
						Book Store 
						&nbsp;
						<a class="left-header-link" href="${pageContext.request.contextPath}/home">
							Home
						</a>
						&nbsp;
						<a class="left-header-link" href="${pageContext.request.contextPath}/promo">
							Promo
						</a>
					</div>
					<div class="right-header col-xs-12- col-sm-6 col-md-6 col-lg-6 vam">
						<a href="${pageContext.request.contextPath}/signup">
							<button class="btn btn-sm btn-primary">Sign Up</button>
						</a>
						<a href="${pageContext.request.contextPath}/login">
							<button class="btn btn-sm btn-success">Sign In</button>
						</a>
					</div>
				</div>
			</div>
		</header>
    	
    	<!-- 
		=========================================================================================
		Container
		=========================================================================================
		-->
		<div class="container">
			<section class="row">
				<article class="col-xs-12- col-sm-4 col-md-3 col-lg-3">
					<p>
						Categories
					</p>
					<ul>
						<li>Java SE</li>
						<li>Java EE</li>
						<li>Spring Core</li>
						<li>Spring MVC</li>
						<li>JPA</li>
						<li>Hibernate</li>
					</ul>
				</article>
				<aside class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos placeat voluptate itaque, recusandae dolore animi ipsa perferendis velit, nam veritatis. Necessitatibus illum molestiae voluptates ipsum magnam veritatis quidem nesciunt ab!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos placeat voluptate itaque, recusandae dolore animi ipsa perferendis velit, nam veritatis. Necessitatibus illum molestiae voluptates ipsum magnam veritatis quidem nesciunt ab!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos placeat voluptate itaque, recusandae dolore animi ipsa perferendis velit, nam veritatis. Necessitatibus illum molestiae voluptates ipsum magnam veritatis quidem nesciunt ab!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos placeat voluptate itaque, recusandae dolore animi ipsa perferendis velit, nam veritatis. Necessitatibus illum molestiae voluptates ipsum magnam veritatis quidem nesciunt ab!
						<br/><br/>
					</p>
				</aside>
			</section>
		</div>
		
		<!-- 
		=========================================================================================
		Footer
		=========================================================================================
		-->
		
		<footer class="footer">
			<div class="container">
				<p>Book Store - 2016</p>
			</div>
		</footer>
		
		
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	</body>
</html>