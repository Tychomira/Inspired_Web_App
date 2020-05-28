<%-- 
    Document   : edit
    Created on : 28 Μαϊ 2020, 8:42:54 πμ
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User details!</title>
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
                            <h2 class="section-heading text-uppercase">Edit user</h2>
                        </div>
                    </div>
                    <div class='container' align='center' >
                        <div class="row">
                            <div class="col-md-8">
                                <!--   <h2 class="text-center">Update user</h2>
                                   <hr> -->
                                <form:form method="POST" action="${pageContext.request.contextPath}/edit/${user.id}" modelAttribute="user">
                                    <form:input type="hidden" path="id" id="id"/>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">First Name</label>
                                        <div class="col-sm-10">
                                            <form:input path="firstName" type="text" class="form-control" id="firstName"/>
                                            <form:errors path="firstName" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Last Name</label>
                                        <div class="col-sm-10">
                                            <form:input path="lastName" type="text" class="form-control" id="lastName"/>
                                            <form:errors path="lastName" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Email</label>
                                        <div class="col-sm-10">
                                            <form:input path="email" type="text" class="form-control" id="email"/>
                                            <form:errors path="email" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Age</label>
                                        <div class="col-sm-10">
                                            <form:input path="age" type="number" class="form-control" id="age"/>
                                            <form:errors path="age" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Sex</label>
                                        <div class="col-sm-10">
                                            <form:input path="sex" type="text" class="form-control" id="sex"/>
                                            <form:errors path="sex" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>   
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Weight</label>
                                        <div class="col-sm-10">
                                            <form:input path="weight" type="number" class="form-control" id="weight"/>
                                            <form:errors path="weight" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Height</label>
                                        <div class="col-sm-10">
                                            <form:input path="height" type="number" class="form-control" id="height"/>
                                            <form:errors path="height" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">BMI</label>
                                        <div class="col-sm-10">
                                            <form:input path="bmi" type="number" class="form-control" id="bmi"/>
                                            <form:errors path="bmi" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Know allergies</label>
                                        <div class="col-sm-10">
                                            <form:input path="knownAllergies" type="text" class="form-control" id="knownAllergies"/>
                                            <form:errors path="knownAllergies" cssStyle="color: #ff0000;"/>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-sm-10">
                                            <button type="submit" class="btn btn-success">Done</button>
                                        </div>
                                    </div>
                                </form:form>
                            </div>
                            <div id="msg">${message}</div>
                            <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
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

