<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="BookStore.blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>

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
    <body class="sub_page">

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
                                <li class="nav-item active">
                                    <a class="nav-link" href="blog.aspx">Blog <span class="sr-only">(current)</span> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.aspx">Contact Us</a>
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
        </div>

        <!-- blog section -->

        <section class="blog_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>From Our Blog
                    </h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/b1.jpg" alt="">
                                <h4 class="blog_date">
                                    <span>19 January 2025
                                    </span>
                                </h4>
                            </div>
                            <div class="detail-box">
                                <h5>His pain? Or he wants but pain
                                </h5>
                                <p>
                                    I will explain the big events that will result in that? Is it hard for the pain from not? To be and those pains here due to desire, to the blissful pleasure never more worthy
                                </p>
                                <a href="">Read More
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/b2.jpg" alt="">
                                <h4 class="blog_date">
                                    <span>19 January 2025
                                    </span>
                                </h4>
                            </div>
                            <div class="detail-box">
                                <h5>At least a little bit else I'm going to fly right
                                </h5>
                                <p>
                                    By the services of truth he repels that of choosing the easy mind of the present. At the time when they provide for that, from the blinded, they are blinded to follow pleasure. I will forgive them unless they are distinguished! Further, by rejecting it.
                                </p>
                                <a href="">Read More
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end blog section -->

        <!-- info section -->

        <section class="info_section layout_padding2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_detail">
                            <h4>About Us
                            </h4>
                            <p>
                                Life, I will explain, makes other distinctions;
                            </p>
                            <div class="info_social">
                                <a href="">
                                    <i class="fa fa-facebook" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-twitter" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-instagram" aria-hidden="true"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_contact">
                            <h4>Address
                            </h4>
                            <div class="contact_link_box">
                                <a href="">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span>Location
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <span>Call +91 97852 25463
                                    </span>
                                </a>
                                <a href="">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span>jakbari@gamil.com
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_contact">
                            <h4>Newsletter
                            </h4>
                            <form action="#">
                                <input type="text" placeholder="Enter email" />
                                <button type="submit">
                                    Subscribe
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="map_container">
                            <div class="map">
                                <div id="googleMap"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end info section -->
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <!-- footer section -->
    <footer class="footer_section">
        <div class="container">
            <p>
                &copy; <span id="displayYear"></span>All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
            </p>
        </div>
    </footer>
    <!-- footer section -->

    <!-- jQery -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.js"></script>
    <!-- custom js -->
    <script src="js/custom.js"></script>
    <!-- Google Map -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
    </script>
    <!-- End Google Map -->

    </body>

</html>
</asp:Content>
