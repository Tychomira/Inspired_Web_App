<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="windows-1253"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1253">

    <body>
    <div class="container-wrapper">
        <div class="container">
            <div class="jumbotron">
                <h1> Admin Page</h1>
                <p class="lead"> System management </p>
            </div>	

            <div class="">
                <a class="btn btn-primary btn-lg btn-block" 
                   href="<c:url value="/admin/productslist"/>"> 
                    <h3> Product Inventory </h3>
                    <section class="visible-lg-block">
                        <p> Here you can view, check and modify the product inventory</p>
                    </section>
                </a>
                <a class="btn btn-primary btn-lg btn-block" 
                   href="<c:url value="/admin/userslist"/>"> 
                    <h3> Customer Management </h3>
                    <section class="visible-lg-block">
                        <p> Here you can view the customer information</p>
                    </section>
                </a>
            </div>

                    
        </body>
        </html>
