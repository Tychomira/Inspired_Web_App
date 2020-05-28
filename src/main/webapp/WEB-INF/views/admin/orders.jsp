<%-- 
    Document   : orders
    Created on : 28 Μαϊ 2020, 7:35:55 πμ
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="windows-1253"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>My orders</title>
         <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
        <link href="<c:url value="/resources/css/bootstrap.min.css" />"rel="stylesheet"/>
        <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
         <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="jquery-3.5.1.min.js"></script>
         <link rel="icon" type="image/x-icon" href="assets/img/wellness.png" />
        <!-- Font Awesome icons (free version)
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet"
            type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <!---  <link href="css/styles.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
            integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
       
        --> <title>Orders</title>
        <!--   <style>
               header.masthead {
                   padding-top: 10.5rem;
                   padding-bottom: 6rem;
                   text-align: center;
                   color: rgb(13, 27, 32);
                   background-image: url("../assets/img/back.jpg");
   
                   background-repeat: no-repeat;
                   background-attachment: scroll;
                   background-position: center center;
                   background-size: cover;
               }
           </style>
           <script>
   
   
   
   
               $(document).ready(function () {
                   $(".sum").each(function () {
                       var sum = 0;
                       var qnt = $('.qnt').val();
                       var price = $('.price').val();
                       sum = qnt * price;
                       return sum;
                   });
               });
           </script>
   
        -->

    </head>


    <body id="page-top">


        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                        aria-label="Toggle navigation">Menu<i class="fas fa-bars ml-1"></i></button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Nutrition</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Fitness</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" >Members section</a>
                        </li>
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

        <!--Masthead-->
        <header class="masthead">
            <div class="container"> 
                <section class="page-section bg-light">
                    <div class="container">
                        <div class="text-center">
                            <h2 class="section-heading text-uppercase">ORDERS</h2>
                        </div>
                    </div>
                </section>




                <div class="container mb-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">USER ID</th>
                                            <th scope="col">PRODUCT ID</th>
                                            <th scope="col" class="price text-center">PURCHASE TIME</th>
                                            <th  scope="col" class="text-center">ACTION</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${orders}" var="order">
                                            <tr>

                                                <td>${oder.userId}</td>

                                                <td>${order.productId}</td>
                                                <td>${order.purchaseDate}</td>

                                                <td align="right">
                                                    <a href="<c:url value='${editurl}/${order.id}' />" class="btn btn-warning">
                                                        <span class="fa fa-pencil"></span> Update
                                                    </a>
                                                    <a href="<c:url value='${deleteurl}/${order.id}' />" class="btn btn-danger">
                                                        <span class="fa fa-trash"></span> Delete
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                   
                                </table>
                            </div>


                        </div>
                    </div>
                </div>


           <!--     <div class="row">
                    <div class="col-sm-12  col-md-6">
                        <button class="btn btn-block btn-light">Continue Shopping</button>
                    </div>
                    <div class="col-sm-12  col-md-6">
                        <button class="btn btn-block btn-primary text-uppercase">Checkout</button>
                    </div>
--> 








                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) 
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
                        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
                        crossorigin="anonymous"></script>-->


                </div>

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
