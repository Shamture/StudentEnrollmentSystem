<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>Student Enrollment System</title>
		
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />

	</head>
	<body>
	
		<!-- ============================================================ -->
		<!--                         Bar Navigation                       -->
		<!-- ============================================================ -->
		
		<header>
			<div class="container">
				<div class="row">
					<div class="left-header col-xs-12- col-sm-6 col-md-6 col-lg-6">
						Student Enrollment System 
						&nbsp;
					</div>
					<div class="right-header col-xs-12- col-sm-6 col-md-6 col-lg-6 vam">
					</div>
				</div>
			</div>
		</header>
    	
    	<!-- ============================================================ -->
		<!--                            Container                         -->
		<!-- ============================================================ -->
		
		<div class="container">
			<section class="row">
				<article class="col-xs-12- col-sm-12 col-md-4 col-lg-4 article1">
					
				</article>
				<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4 article2-login">
					<h2>
						Sign In
					</h2>
					<form action="${pageContext.request.contextPath}/login" method="get">
						<div class="form-group">
							<input class="form-control" type="text" name="txt-username" placeholder="Username"/>
						</div>
						<div class="form-group">
							<input class="form-control" type="text" name="txt-password" placeholder="Password"/>
						</div>
						<div class="form-group checkbox">
							<label>
								<input type="checkbox" name="chk-remember" value="Remember Me"/> Remember Me<br/>
							</label>
						</div>
						<div class="form-group">
							<input class="btn btn-success btn-block" type="submit" name="signin" value="Sign In"/>
						</div>
					</form>
				</article>
				<article class="col-xs-12 col-sm-12 col-md-4 col-lg-4 article3">
					
				</article>
			</section>
		</div>
		
		<!-- ============================================================ -->
		<!--                              Footer                          -->
		<!-- ============================================================ -->
		
		<footer class="footer">
			<div class="container">
				<p>Book Store - 2016</p>
			</div>
		</footer>
		
		
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.js" type="text/javascript"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	</body>
</html>