<%@tag description="Overall Page template" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>

<!DOCTYPE html>
<html lang="da">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Olsker Cupcakes</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="./css/forside.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        // Prevent dropdown menu from closing when click inside the form
        $(document).on("click", ".action-buttons .dropdown-menu", function (e) {
            e.stopPropagation();
        });
    </script>
    <title><jsp:invoke fragment="header"/></title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a href="#" class="navbar-brand">Olsker<b>Cupcakes</b></a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collection of nav links, forms, and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
        <div class="navbar-nav">
            <a class="active" href="#"><i class ="fa fa-fw fa-home"></i>Hjem</a>
            <a class="active" href="#"><i class ="fa fa-fw fa-info"></i> Om os</a>
            <div class="nav-item dropdown">
                <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle">Services</a>
                <div class="dropdown-menu">
                    <a href="#" class="dropdown-item">Vores Cupcakes</a>
                    <a href="#" class="dropdown-item">Bryllup</a>
                    <a href="#" class="dropdown-item">Fødselsdage</a>
                    <a href="#" class="dropdown-item">Andet</a>
                </div>
            </div>
            <a class="active" href="#"><i class ="fa fa-fw fa-image"></i>Galleri</a>
            <a class="active" href="#"><i class ="fa fa-fw fa-phone"></i>Kontakt</a>
            <ul class="navbar-nav sm-icons mr-0">
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-facebook"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-instagram"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-twitter"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-pinterest"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fa fa-snapchat"></i></a></li>
            </ul>

        </div>
        <div class="navbar-nav ml-auto action-buttons">
            <div class="nav-item dropdown">
                <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle mr-4">Login</a>
                <div class="dropdown-menu action-form">
                    <form action="/examples/actions/confirmation.php" method="post">
                        <p class="hint-text">Sign in with your social media account</p>
                        <div class="form-group social-btn clearfix">
                            <a href="#" class="btn btn-secondary facebook-btn float-left"><i class="fa fa-facebook"></i>
                                Facebook</a>
                            <a href="#" class="btn btn-secondary twitter-btn float-right"><i class="fa fa-twitter"></i>
                                Twitter</a>
                        </div>
                        <div class="or-seperator"><b>or</b></div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" required="required">
                        </div>
                        <input type="submit" class="btn btn-primary btn-block" value="Login">
                        <div class="text-center mt-2">
                            <a href="#">Forgot Your password?</a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="nav-item dropdown">
                <a href="#" data-toggle="dropdown" class="btn btn-primary dropdown-toggle sign-up-btn">Sign up</a>
                <div class="dropdown-menu action-form">
                    <form action="/examples/actions/confirmation.php" method="post">
                        <p class="hint-text">Fill in this form to create your account!</p>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Username" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password" required="required">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Confirm Password"
                                   required="required">
                        </div>
                        <div class="form-group">
                            <label class="form-check-label"><input type="checkbox" required="required"> I accept the <a
                                    href="#">Terms &amp; Conditions</a></label>
                        </div>
                        <input type="submit" class="btn btn-primary btn-block" value="Sign up">
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>

<!--Overskrift + forside billede-->
<div class="header" align="center">
    <img src="/images/pink-cupcake-bakery-logo-template-design-75d763689af62f5a26974cf54604c9623_screen.jpg" alt="logo" />
    <h1>Olsker Cupcakes</h1>
</div>

<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

    <br>
    <br>

    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
        <li data-target="#multi-item-example" data-slide-to="1"></li>

    </ol>
    <!--/.Indicators-->

    <!--Slides-->
    <div class="carousel-inner" role="listbox">

        <!--First slide-->
        <div class="carousel-item active">

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/caramel3.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Chai Latte Cupcake m. Creme Brulée frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/chokolade.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Chokolade Cupcake m. Chokolade frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/jordbær2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Chokolade Cupcake m. Jordbær frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/cookiesncreme.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Chokolade Cupcake m. Cookies 'n' Creme </h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

        </div>
        <!--/.First slide-->

        <!--Second slide-->
        <div class="carousel-item">

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/blueberry2.png" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Vanilje Cupcake m. Blåbær frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/lemon3.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Lemon Cupcake m. Lemon frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/pistacio2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Vanilje Cupcake m. Pistacio frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float:left">
                <div class="card mb-2">
                    <img class="card-img-top"
                         src="/images/vanilje2.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Vanilje Cupcake m. Vanilje frosting</h4>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                            card's content.</p>
                    </div>
                </div>
            </div>

        </div>
        <!--/.Second slide-->



    </div>
    <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->


<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Page 1</a>
                <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Page 2</a>
                <a class="nav-item nav-link" href="${pageContext.request.contextPath}/">Page 3</a>
                <c:if test="${sessionScope.user == null }">
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/login.jsp">Login</a>
                </c:if>
                <c:if test="${sessionScope.user != null }">
                    <a class="nav-item nav-link" href="${pageContext.request.contextPath}/logout">Log out</a>
                </c:if>
            </div>
        </div>
    </div>
</nav>--%>

<div id="body" class="container mt-4" style="min-height: 400px;">
    <h1><jsp:invoke fragment="header"/></h1>
    <jsp:doBody/>
</div>

<!-- Footer -->
<div class="container mt-3">
    <hr/>
    <div class="row mt-4">
        <div class="col">
            Kuregårdsvej 7<br/>
            3782 Klemensker
        </div>
        <div class="col">
            <jsp:invoke fragment="footer"/><br/>
            <p>&copy; 2022 Olsker Cupcakes</p>
        </div>
        <div class="col">
            Olsker Cupcakes 2022
        </div>
    </div>

</div>

</div>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

</body>
</html>