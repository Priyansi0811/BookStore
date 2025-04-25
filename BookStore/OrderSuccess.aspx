<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="BookStore.OrderSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>


<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <link rel="icon" href="images/favicon.png" type="image/gif" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Bostorek</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <!-- font awesome style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />

</head>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <body>

        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="index.html">
                            <span>Bostorek
                            </span>
                        </a>

                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <%--<li class="nav-item">
    <a class="nav-link" href="login.aspx">Login</a>
</li>--%>
                                <%--<li class="nav-item">
    <a class="nav-link" href="Registration.aspx">Registration</a>
</li>--%>
                                <li class="nav-item">
                                    <a class="nav-link pl-lg-0" href="index.aspx">Home </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.aspx">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="categories.aspx">Categories</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="blog.aspx">Blog </a>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="contact.aspx">Contact Us <span class="sr-only">(current)</span> </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="Product.aspx">Buy Product</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Display_Book.aspx">Display Book</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="AddToCart.aspx">Cart</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Registration.aspx">Registration</a>
                                </li>
                            </ul>
                            <%--<from class="search_form">
              <input type="text" class="form-control" placeholder="Search here...">
              <button class="" type="submit">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
            </from>--%>
                            <asp:Label ID="lbl_welcome" class="nav-link" runat="server" Text="" ForeColor="White"></asp:Label>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end header section -->

            <!-- ORDER CONFIRMATION -->
<div class="container mt-5">
    <div class="card shadow-lg text-center p-5">
        <h2 class="text-success">🎉 Thank You for Your Order!</h2>
        <p class="mt-3">Your payment was successful, and your order has been placed.</p>
        <p class="fw-bold">We will send a confirmation email and deliver your items soon.</p>
        <a href="index.aspx" class="btn btn-primary mt-4">Back to Home</a>
    </div>
</div>
            </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
