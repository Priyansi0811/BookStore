﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BookStore.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                
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
        <meta name="author" content="" /><title>Bostorek</title>

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

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <div class="hero_area">
    <!-- header section strats -->
            <header class="header_section">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="index.html"><span>Bostorek </span></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class=""></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a> </li>
                                <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a> </li>
                                <li class="nav-item"><a class="nav-link" href="about.aspx">About</a> </li>
                                <li class="nav-item"><a class="nav-link" href="categories.aspx">Categories</a> </li>
                                <li class="nav-item"><a class="nav-link" href="blog.aspx">Blog </a></li>
                                <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact Us</a> </li>
                                <li class="nav-item"><a class="nav-link" href="Product.aspx">Add Prodect</a> </li>
                                <li class="nav-item"><a class="nav-link" href="Display_Book.aspx">Display Book</a> </li>
                                <li class="nav-item"><a class="nav-link" href="AddToCart.aspx">Cart</a> </li>
                                <li class="nav-item"><a class="nav-link" href="Registration.aspx">Registration</a> </li>
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
    <!-- slider section -->
            <section class="slider_section ">
                <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h5>Bostorek Bookstore </h5>
                                            <h1>For All Your
                                                <br>Reading Needs </h1>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                                            </p>
                                            <a href="">Read More </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h5>Bostorek Bookstore </h5>
                                            <h1>For All Your
                                                <br>Reading Needs </h1>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                                            </p>
                                            <a href="">Read More </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container ">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="detail-box">
                                            <h5>Bostorek Bookstore </h5>
                                            <h1>For All Your
                                                <br>Reading Needs </h1>
                                            <p>
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quam velit saepe dolorem deserunt quo quidem ad optio.
                                            </p>
                                            <a href="">Read More </a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="img-box">
                                            <img src="images/slider-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel_btn_box">
                        <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev"><i class="fa fa-angle-left" aria-hidden="true"></i><span class="sr-only">Previous</span> </a><a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next"><i class="fa fa-angle-right" aria-hidden="true"></i><span class="sr-only">Next</span> </a>
                    </div>
                </div>
            </section>
    <!-- end slider section -->
        </div>


  <!-- catagory section -->

        <section class="catagory_section layout_padding">
            <div class="catagory_container">
                <div class="container ">
                    <div class="heading_container heading_center">
                        <h2>Books Categories </h2>
                        <p>
                            There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat1.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>Textbooks </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat2.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>Science </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat3.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>History </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat4.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>Biography </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat5.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>Adventure </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-4 ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/cat6.png" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>Fantasy </h5>
                                    <p>
                                        fact that a reader will be distracted by the readable content of a page when looking at its layout.
                  The
                  point of using
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end catagory section -->

  <!-- about section -->

        <section class="about_section layout_padding">
            <div class="container ">
                <div class="row">
                    <div class="col-md-6">
                        <div class="img-box">
                            <img src="images/about-img.png" alt="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="detail-box">
                            <div class="heading_container">
                                <h2>About Our Bookstore </h2>
                            </div>
                            <p>
                                At cumque tenetur iste molestiae, vel eum reiciendis assumenda! Numquam, repudiandae. Consequuntur obcaecati recusandae aliquam, amet doloribus eius dolores officiis cumque? Quibusdam praesentium pariatur sapiente mollitia, amet hic iusto voluptas! Iusto quo earum vitae excepturi, ipsam aliquid deleniti assumenda culpa deserunt.
                            </p>
                            <a href="">Read More </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end about section -->

  <!-- client section -->

        <section class="client_section layout_padding">
            <div class="container ">
                <div class="heading_container heading_center">
                    <h2>What Says Customers </h2>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="client_container ">
                            <div class="detail-box">
                                <p>
                                    Editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
                                </p>
                                <span><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                            </div>
                            <div class="client_id">
                                <div class="img-box">
                                    <img src="images/c1.jpg" alt="">
                                </div>
                                <div class="client_name">
                                    <h5>Jone Mark </h5>
                                    <h6>Student </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mx-auto">
                        <div class="client_container ">
                            <div class="detail-box">
                                <p>
                                    Editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
                                </p>
                                <span><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                            </div>
                            <div class="client_id">
                                <div class="img-box">
                                    <img src="images/c2.jpg" alt="">
                                </div>
                                <div class="client_name">
                                    <h5>Anna Crowe </h5>
                                    <h6>Student </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mx-auto">
                        <div class="client_container ">
                            <div class="detail-box">
                                <p>
                                    Editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by
                                </p>
                                <span><i class="fa fa-quote-left" aria-hidden="true"></i></span>
                            </div>
                            <div class="client_id">
                                <div class="img-box">
                                    <img src="images/c3.jpg" alt="">
                                </div>
                                <div class="client_name">
                                    <h5>Hilley James </h5>
                                    <h6>Student </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end client section -->

  <!-- blog section -->

        <section class="blog_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>From Our Blog </h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/b1.jpg" alt="">
                                <h4 class="blog_date"><span>19 January 2021 </span></h4>
                            </div>
                            <div class="detail-box">
                                <h5>Eius, dolor? Vel velit sed doloremque </h5>
                                <p>
                                    Incidunt magni explicabo ullam ipsa quo consequuntur eveniet illo? Aspernatur nam dolorem a neque? Esse eaque dolores hic debitis cupiditate, ad beatae voluptatem numquam dignissimos ab porro
                                </p>
                                <a href="">Read More </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="box">
                            <div class="img-box">
                                <img src="images/b2.jpg" alt="">
                                <h4 class="blog_date"><span>19 January 2021 </span></h4>
                            </div>
                            <div class="detail-box">
                                <h5>Minus aliquid alias porro iure fuga </h5>
                                <p>
                                    Officiis veritatis id illo eligendi repellat facilis animi adipisci praesentium. Tempore ab provident porro illo ex obcaecati deleniti enim sequi voluptas at. Harum veniam eos nisi distinctio! Porro, reiciendis eius.
                                </p>
                                <a href="">Read More </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end blog section -->

  <!-- contact section -->

        <section class="contact_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="heading_container ">
                            <h2 class="">Contact Us </h2>
                        </div>
                        <form action="#">
                            <div>
                                <input type="text" placeholder="Name" />
                            </div>
                            <div>
                                <input type="email" placeholder="Email" />
                            </div>
                            <div>
                                <input type="text" placeholder="Pone Number" />
                            </div>
                            <div>
                                <input type="text" class="message-box" placeholder="Message" />
                            </div>
                            <div class="btn-box">
                                <button>
                                    SEND
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <div class="img-box">
                            <img src="images/contact-img.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end contact section -->

  <!-- info section -->

        <section class="info_section layout_padding2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_detail">
                            <h4>About Us </h4>
                            <p>
                                Vitae aut explicabo fugit facere alias distinctio, exem commodi mollitia minusem dignissimos atque asperiores incidunt vel voluptate iste
                            </p>
                            <div class="info_social">
                                <a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a><a href=""><i class="fa fa-linkedin" aria-hidden="true"></i></a><a href=""><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_contact">
                            <h4>Address </h4>
                            <div class="contact_link_box">
                                <a href=""><i class="fa fa-map-marker" aria-hidden="true"></i><span>Location </span></a><a href=""><i class="fa fa-phone" aria-hidden="true"></i><span>Call +01 1234567890 </span></a><a href=""><i class="fa fa-envelope" aria-hidden="true"></i><span>demo@gmail.com </span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 info-col">
                        <div class="info_contact">
                            <h4>Newsletter </h4>
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
                                <div id="googleMap">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

  <!-- end info section -->


</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 <!-- footer section -->
    <footer class="footer_section">
        <div class="container">
            <p>
                &copy; <span id="displayYear"></span>All Rights Reserved By <a href="https://html.design/">Free Html Templates</a>
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


