<%-- 
    Document   : success
    Created on : 28 Μαϊ 2020, 4:54:06 μμ
    Author     : user
--%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="windows-1253"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1253">
        <title>JSP Page</title>
    </head>
    <body>
    <div class="container-wrapper">
	<div class="container">
		<div class="starter-template">
			<div class="jumbotron">
				<h1>Registration done!</h1>
				<p class="lead">
					You were successfully registrated.<br>
				</p>
			</div>
			<p>
				Go to <a href="<c:url value="/login" />" class="btn btn-link">Login</a>
				page to access the application and continue shopping.
			</p>
		</div>
</body>
</html>
