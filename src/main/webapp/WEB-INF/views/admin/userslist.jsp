<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="<c:url value='/resources/css/styles.css' />" rel="stylesheet"></link>
        <title>Customer Management Page</title>
    </head>

    <style>

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
                    <i class="fa fa-shopping-cart"></i> My Shopping Cart
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
                            <h2 class="section-heading text-uppercase">USERS</h2>
                            <h3 class="section-subheading text-muted">Check details</h3>
                        </div>
                    </div>
                    <!--Search filter-->
                    <form className ="border border-primary p-3" onkeyup ="searchTable()">
                        <input type ="text" id ="myInput"  name = "myInput" placeholder="Lastname/Firstname..." />
                        <button  >Search</button>
                    </form>
                    <br>

                    <!--Users's List-->
                    <div class="container mb-4">

                        <div class="row">

                            <div class="table-responsive">
                                <table class="table table-striped" id="myTable">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">First name</th>
                                            <th scope="col" class="text-center">Last name</th>
                                            <th scope="col" class="text-center">Email</th>
                                            <th scope="col" class="text-center"> Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${users}" var="user">
                                            <tr>
                                                <td scope="col" class="text-center">${user.firstName}</td>
                                                <td scope="col" class="text-center">${user.lastName}</td>
                                                <td scope="col" class="text-center">${user.email}</td>
                                                <td align="right">
                                                    <a href="<c:url value='${editurl}/${user.id}' />" class="btn btn-warning">
                                                        <span class="fa fa-pencil"></span> Update
                                                    </a>
                                                    <a href="<c:url value='${deleteurl}/${user.id}' />" class="btn btn-danger">
                                                        <span class="fa fa-trash"></span> Delete
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <a href="new" class="btn btn-primary">
                                    <span class="fa fa-plus"></span> Add
                                </a>
                            </div>

                            <div id="msg">${msg}</div>
                        </div>
                    </div>
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
