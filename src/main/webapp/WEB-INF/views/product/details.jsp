<%-- 
    Document   : details
    Created on : 28 Μαϊ 2020, 4:40:39 μμ
    Author     : user
--%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="windows-1253"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1253">
        <title>JSP Page</title>
  
 <div class="container-wrapper">
	<div class="container">
		<div class="jumbotron">
			<h1> Product Detail</h1>
			<p class="lead"> Here is the detail information! </p>
		</div>	
		
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<c:choose>
						<c:when test="${not empty product.image }">
							<img src="<c:url value='/product/image/${product.id }'/>" alt="image" style="witdh: 100%; height: 300px"/>
						</c:when>
						<c:when test="${empty product.image }">
							<img src="<c:url value="/resources/images/mockup.jpg" /> " alt="image" style="witdh: 100%; height: 300px"/>
						</c:when>
					</c:choose>
				</div>
				<div class="col-md-5">
					<h3> ${product.title} </h3>
					
					<p> 
						<strong> Price: </strong> ${product.price} 
					</p>
					<p> 
						<strong> Short description: </strong> ${product.shortDescription} 
					</p>
					<p> 
						<strong> Details :  </strong> ${product.details} 
					</p>
					<p> 
						<strong> Expires:  </strong> ${product.expire} 
					</p>
                                        <p> 
						<strong> Duration(in days):  </strong> ${product.durationInDays} 
					</p>
                                        <p> 
						<strong> Category:  </strong> ${product.category} 
					</p>
					
					<c:if test="${pageContext.request.userPrincipal.name  != 'admin'}">
						<a href="#" class="btn btn-warning"> Add to cart 
		            		<i class="glyphicon glyphicon-shopping-cart"></i>	
						</a>
					    <input type="number" min="1" name="quantity" id="quantity" class="item-quantity" value="1"/>
					</c:if>
				</div>
			</div>
		</div>
	<a class="btn btn-default" href="<c:url value="javascript:history.back()" />" > Back </a> 
