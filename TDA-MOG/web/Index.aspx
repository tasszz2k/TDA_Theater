﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TDA_MOG.web.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <title></title>
    <link
        rel="stylesheet"
        href="./css/bootstrap.min.css"
        type="text/css"
        media="screen"
        title="no title"
        charset="utf-8" />
    <link
        rel="stylesheet"
        href="./css/common.css"
        type="text/css"
        media="screen"
        title="no title"
        charset="utf-8" />
    <link
        rel="stylesheet"
        href="./css/home.css"
        type="text/css"
        media="screen"
        title="no title"
        charset="utf-8" />
    <link
        rel="stylesheet"
        href="./css/star-bg.css"
        type="text/css"
        media="screen"
        title="no title"
        charset="utf-8" />
    <script
        src="https://kit.fontawesome.com/20162b6030.js"
        crossorigin="anonymous"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div id='stars'></div>
        <div id='stars2'></div>
        <div id="wrapper">
            <header class="page-header">
                <nav class="navbar navbar-expand-lg navbar-dark">
                    <div class="container">
                        <a class="navbar-brand" href="#">
                            <img src="./images/logo.jpg" alt="web-logo" />
                            <h1>PLayerAuctions</h1>
                        </a>
                        <button
                            class="navbar-toggler"
                            type="button"
                            data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <form class="form-inline my-2 my-lg-0">
                                <input
                                    class="form-control rounded-lg mr-sm-2"
                                    type="search"
                                    placeholder="Find your games..."
                                    aria-label="Search" />
                                <button
                                    class="btn btn-outline-success my-2 my-sm-0"
                                    type="submit">
                                    Search</button>
                            </form>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="fas fa-shopping-cart"></i>
                                        <span>How to Buy</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="fas fa-dollar-sign"></i>
                                        <span>How to Sell</span>
                                    </a>
                                </li>
                                <div class="account-panel">
                                    <a href="login.html" class="login">LOG IN</a>
                                    <a href="register.html" class="sign-up">SIGN UP</a>
                                </div>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <main class="main">
                <div class="content-wrapper">
                    <section class="page-banner">
                        <div class="container">
                            <h2>LEADING MARKETPLACE FOR GAMERS</h3>
              <p>Trade securely with gamers throughout the world</p>
                                <button class="btn-start">Start Sell & Buying</button>
                                <div class="lines">
                                    <div class="circle">
                                    </div>
                                    <div class="circle">
                                    </div>
                                    <div class="circle">
                                    </div>
                                    <div class="circle">
                                    </div>
                                    <div class="circle">
                                    </div>
                                    <div class="circle">
                                    </div>
                                </div>
                        </div>
                    </section>
                    <section class="page-overview">
                        <div class="container">
                            <div class="row">
                                <div class="top-charge-card col-sm-5 shadow-sm">
                                    <h3>Top Charge Card In Month</h3>
                                    <div class="top-charge-card__content">
                                        <ul class="top-charge-card__items">
                                            <li class="top-charge-card__item">
                                                <i class="fas fa-star">
                                                    <span class="star-num">5</span>
                                                </i>
                                                <span class="account-name">Tokoro</span>
                                                <span class="total-amount">150.000 $</span>
                                            </li>
                                            <li class="top-charge-card__item">
                                                <i class="fas fa-star">
                                                    <span class="star-num">4</span>
                                                </i>
                                                <span class="account-name">Tokoro</span>
                                                <span class="total-amount">150.000 $</span>
                                            </li>
                                            <li class="top-charge-card__item">
                                                <i class="fas fa-star">
                                                    <span class="star-num">3</span>
                                                </i>
                                                <span class="account-name">Tokoro</span>
                                                <span class="total-amount">150.000 $</span>
                                            </li>
                                            <li class="top-charge-card__item">
                                                <i class="fas fa-star">
                                                    <span class="star-num">2</span>
                                                </i>
                                                <span class="account-name">Tokoro</span>
                                                <span class="total-amount">150.000 $</span>
                                            </li>
                                            <li class="top-charge-card__item">
                                                <i class="fas fa-star">
                                                    <span class="star-num">1</span>
                                                </i>
                                                <span class="account-name">Tokoro</span>
                                                <span class="total-amount">150.000 $</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="use-tutorial col-sm-7">
                                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/gdZLi9oWNZg" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="account-display">
                        <div class="container">
                            <div class="account-filter">
                                <header>
                                    <h3>Choose attribute to filter</h3>
                                    <div class="account-filter__actions">
                                        <button class="btn-search">Search</button>
                                        <button class="btn-cancel">Cancel</button>
                                    </div>
                                </header>
                                <div class="account-filter__fields">
                                    <div class="row">
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3 account-filter__field">
                                            <div class="dropdown">
                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Find due to rank
                                                </button>
                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#">Action</a>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                    <a class="dropdown-item" href="#">Something else here</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="account-display__newest">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="card" style="width: 18rem;">
                                            <img src="./images/game.png" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title">Card title</h5>
                                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                <a href="#" class="btn btn-primary">Go somewhere</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="account-display__pagination">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination">
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <i class="right-svg"></i>
                        <i class="left-svg"></i>
                    </section>
                </div>
                <%for (int i = 0; i < 10; i++)
                    {
                %>

                <h1>dasd</h1>
                <%
                    }
                %>
            </main>
            <footer>
                <div class="page-social-contact">
                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                </div>
                <p>Copyright 2000-2020. All rights reserved.</p>
            </footer>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="./js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
