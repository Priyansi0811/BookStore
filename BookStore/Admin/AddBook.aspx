<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="BookStore.Admin.AddBook" %>

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
                    <a class="nav-link" href="ALogin.aspx">Login</a>
                </li>--%>
                                <li class="nav-item">
                                    <a class="nav-link" href="register.aspx">Register</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Category.aspx">Add Category</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="AddBook.aspx">Add Book</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Manage_order.aspx">Manage order</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="ARegistration.aspx">Registration</a>
                                </li>

                            </ul>
                            <from class="search_form">
                                <input type="text" class="form-control" placeholder="Search here...">
                                <button class="" type="submit">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </button>
                            </from>
                        </div>
                    </nav>
                </div>
            </header>
            <!-- end header section -->
            <%--</div>--%>

            <!-- contact section -->

            <section class="contact_section layout_padding">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 ">
                            <div class="heading_container ">
                                <h2 class="">Add Prodect Here..
                                </h2>
                            </div>
                            <%--<form action="#">
          <div>
            <input type="text" placeholder="Name" />
          </div>--%>

                            <%--<asp:FileUpload ID="fldimg" runat="server" />
                            <asp:TextBox ID="cnm" placeholder="Categories Name" runat="server"></asp:TextBox>
                            <asp:TextBox ID="cdes" placeholder="Description" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Add Category" BackColor="#44b89d" OnClick="Button1_Click" />--%>


                            <asp:FileUpload ID="fldimg" runat="server" />
                            <asp:TextBox ID="TextBox1" placeholder="Book Title" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" placeholder="Author Name" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" placeholder="ISBN-13" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox4" placeholder="Publish Date" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox5" placeholder="Number Of Page" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox6" placeholder="Award" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox7" placeholder="Language" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox8" placeholder="Category" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox9" placeholder="Price" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" BackColor="#44b89d" Text="Add Book" OnClick="Button1_Click" />







                        </div>
                        <div class="col-md-6">
                            <div class="img-box">
                                <img src="image/contact-img.png" alt="">
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
        </div>
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
