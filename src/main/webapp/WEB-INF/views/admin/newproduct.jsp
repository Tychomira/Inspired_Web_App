<%-- 
    Document   : newproduct
    Created on : 28 Μαϊ 2020, 8:47:48 πμ
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="windows-1253"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
        <title>New Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>

        <style>
            body {
                height: 100%;
                background-color:rgb(245, 245, 245);
            }

            body, .form-control{
                font-size:12px!important;
            }

            .has-error{
                color:red;
            }

            .generic-container {
                position: fixed;
                width:80%;
                margin-left: 50px;
                margin-top: 20px;
                margin-bottom: 20px;
                padding: 20px;
                background-color: #EAE7E7;
                border: 1px solid #ddd;
                border-radius: 4px;
            }

            .custom-width {
                width: 80px !important;
            }
            #error
            {
                color: red;
            }

            #thead{
                font-size: 15px;
            }

            .panel-heading{
                text-align: center;
            }

            .table{
                font-size: 15px;
            }

            #form{
                font-size: 15px;
            } 

            header.masthead {
                padding-top: 10.5rem;
                padding-bottom: 6rem;
                text-align: center;
                color: rgb(13, 27, 32);

                background-image: url("https://piraeuspress.gr/wp-content/uploads/2020/02/healthy-eating-ingredients-1296x728-header.jpg");
                background-repeat: no-repeat;
                background-attachment: scroll;
                background-position: center center;
                background-size: cover;
            }

            .bloc_left_ {
                color: #c01508;
                text-align: center;
                font-weight: bold;
                font-size: 150%;
            }

            .category_block li:hover {
                background-color: #007bff;
            }

            .category_block li:hover a {
                color: #ffffff;
            }

            .category_block li a {
                color: #343a40;
            }
        </style>
    </head>
    <body id="page-top">
        <!--Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">INSPIRED</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation">Menu<i class="fas fa-bars ml-1"></i></button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Nutrition</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Fitness</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Members section</a> </li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger">About</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Contact</a></li>
                        <li class="nav-item"><a class="nav-link portal-sign-in btn btn--full btn--ghost"></a></li>
                    </ul>
                </div>
            </div>
            <form class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm"
                           placeholder="Search...">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <a class="btn btn-primary btn-sm ml-3">
                    <i class="fa fa-shopping-cart"></i> My Shopping Card
                    <span class="badge badge-light"></span>
                </a>
            </form>
        </nav>
        
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <section class="page-section bg-light">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">New product</h2>
                        </div>
                    </div>
                    
                    <!--New product-->
                    <div class='container' align='center' >
            <div class="row">
                <div class="col-md-8">
                    <div class="generic-container">
                   <!--     <h2 class="text-center">New product</h2>
                    <hr>-->
                   
                        <form:form method="POST" action="new" modelAttribute= "product">
                        <form:input type="hidden" path="id" id="id" />
                         
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="title">Title</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="title" id="title" class="form-control input-sm" maxlength="45"/>
                                        <!--      <div class="has-error"> -->
                                        <form:errors path="title" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="title">Price</label>
                                    <div class="col-md-7">
                                        <form:input type="number" path="price" id="price" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="price" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="shortDescription">Short Description</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="shortDescription" id="shortDescription" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="shortDescription" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="col-md-3 control-lable" for="details">Details</label>
                                    <div class="col-md-7">
                                        <form:input type="text" path="details" id="details" class="form-control input-sm" maxlength="45"/>
                                        <form:errors path="details" cssStyle="color: #ff0000;"/>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-success">Add</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <div id="msg">${message}</div>
                    <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of products</a></div>
                </section>
            </div>
        </header>

        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © Inspired 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" ><i class="fab fa-twitter"></i></a><a
                            class="btn btn-dark btn-social mx-2" ><i class="fab fa-facebook-f"></i></a><a
                            class="btn btn-dark btn-social mx-2" ><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right"><a class="mr-3" >Privacy Policy</a><a >Terms of
                            Use</a></div>
                </div>
            </div>
        </footer>
    </body>
</html>






