﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TDA_MOG.web.Home" %>

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
        href="./css/login.css"
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
        <header>
            <img class="page-logo" src="./images/logo.webp" alt="web-logo" />
            <h1 class="page-title">PLayerAuctions</h1>
        </header>
        <main>
            <section class="login">
                <div class="login-left">
                    <p class="login-left__title">New here?</p>
                    <div class="login-left__actions">
                        <a href="#" class="login-left__item login-left__buy">
                            <div class="left">
                                <span>I want to</span>
                                <p>BUY</p>
                            </div>
                            <div class="right">
                                <i class="fas fa-shopping-cart"></i>
                            </div>
                        </a>
                        <a href="#" class="login-left__item login-left__sell">
                            <div class="left">
                                <span>I want to</span>
                                <p>SELL</p>
                            </div>
                            <div class="right">
                                <i class="fas fa-home"></i>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="login-form">
                    <p class="login-form__title">Log In</p>
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input
                                type="email"
                                class="form-control"
                                id="exampleInputEmail1"
                                aria-describedby="emailHelp" />
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input
                                type="password"
                                class="form-control"
                                id="exampleInputPassword1" />
                        </div>
                        <div class="form-group form-check">
                            <input
                                type="checkbox"
                                class="form-check-input"
                                id="exampleCheck1" />
                            <label class="form-check-label" for="exampleCheck1">
                                Check me out</label>
                        </div>
                        <button type="submit" class="btn btn-primary">LOG IN</button>
                    </form>
                    <p class="account-register">
                        New Player ?
            <a href="register.html">Register</a>
                    </p>
                </div>
            </section>
        </main>
    </form>
</body>
</html>
