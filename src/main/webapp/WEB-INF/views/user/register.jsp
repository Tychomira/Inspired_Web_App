<%-- 
    Document   : register
    Created on : 28 Μαϊ 2020, 4:58:31 μμ
    Author     : user
--%>

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
		<div class="jumbotron">
			<h1> Customer Registration </h1>
			<p class="lead"> Fill the information below to register: </p>		
		</div>	
	
		<div class="container-fluid">
		
			<c:if test="${not empty message }">
				<div class="alert  alert-success  alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" ><span aria-hidden="true">&times;</span></button>
						<span>${message}</span>
				</div>
			</c:if>
		
		   <spring:url value="/customer/register" var="registerUrl" />
	       <form:form method="POST" action="${registerUrl}" modelAttribute="customer">
		        
		        <div class="row">
		       	  	<div class="col-sm-6 form-group">
			            <label for="name">First Name</label> <form:errors path="firstName" cssStyle="color: #c9302c;" />
			            <form:input path="firstName" id="firstName" class="form-control"/>
		        	</div>
		        	
		        	<div class="col-sm-3 form-group pull-right address-panel">
		        		<label for="streetName">Last Name</label> <form:errors path="lastName" cssStyle="color: #c9302c;" />
			            <form:input path="lastName" id="lastName" class="form-control"/>
			        </div>
		        </div>
		<!---
				<div class="row">
					<div class="col-sm-6 form-group">
			            <label for="password">Password</label> <form:errors path="password" cssStyle="color: #c9302c;" />
			            <form:input type="password" path="password" id="password" class="form-control"/>
		        	</div>
		
					<!-- <div class="col-sm-3 form-group pull-right address-panel">
		        		<label for="country">Country</label> <form:errors path="address.country" cssStyle="color: #c9302c;" />
			            <form:input path="address.country" id="country" class="form-control"/>
			        </div>
			       
		        </div>
		       
		        <div class="row">
					<div class="col-sm-6 form-group">
			            <label for="phone">Phone</label> <form:errors path="phone" cssStyle="color: #c9302c;" />
			            
			            <div class="input-group">
				        	<span class="input-group-addon">
				        		<i class="glyphicon glyphicon-earphone"></i>
				        	</span>			            
			            <form:input path="phone" id="phone" class="form-control"/>
			            </div>
		        	</div>
		        	
		        	<div class="col-sm-3 form-group pull-right address-panel">
		        		<label for="state">State</label> <form:errors path="address.state" cssStyle="color: #c9302c;" />
			            <form:select path="address.state" id="states" class="form-control">
			            </form:select>
			        </div>
		        </div>
		-->
				<div class="row">
			        <div class="col-sm-6 form-group">
			            <label for="email">Email</label> <form:errors path="email" cssStyle="color: #c9302c;" />
			            <div class="input-group">
				        	<span class="input-group-addon">
				        		<i class="glyphicon glyphicon-envelope"></i>
				        	</span>			            
			            	<form:input path="email" id="email" class="form-control"/>
			            </div>
		        	</div>
		
				<!---	<div class="col-sm-3 form-group pull-right address-panel">
		        		<label for="city">City</label> <form:errors path="address.city" cssStyle="color: #c9302c;" />
			            <form:select path="address.city" id="cities" class="form-control">
			            </form:select>
			        </div>
			    </div>
			        
			    <div class="row">
			        <div class="col-sm-3 form-group pull-right address-panel">
		        		<label for="zipCode">ZipCode</label> <form:errors path="address.zipCode" cssStyle="color: #c9302c;" />
			            <form:input path="address.zipCode" id="zipCode" class="form-control"/>
			        </div>
			    </div>
			    -->
			    <div class="row">
					<div class="col-sm-6 pull-right">
						<div class="pull-right">
			        		<input type="submit" value="Submit" class="btn btn-primary">
			        		<a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
			    		</div>
			    	</div>
			    </div>
			    	
		        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	        </form:form>
        </div>
</body>

</html>
