<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View_Book.aspx.cs" Inherits="BookStore.View_Book" %>

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

                            <asp:Label ID="lbl_welcome" class="nav-link" runat="server" Text="" ForeColor="White"></asp:Label>
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
                                <h2 class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Book..
                                </h2>
                            </div>

                            <div>

                                <asp:Panel ID="pnlDataListContainer" runat="server" Style="display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%;">

                                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" Style="display: flex; flex-wrap: wrap; justify-content: center; gap: 20px; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff0f5;">
                                        <ItemTemplate>
                                            <div style="text-align: center; border: 1px solid #eee; padding: 15px; border-radius: 5px; background-color: white; width: 350px; box-shadow: 4px 4px 8px rgba(0, 0, 0, 0.2);">
                                                <asp:Image ID="Image1" runat="server" Height="250px" Width="250px" ImageUrl='<%# "Admin/" + Eval("Image") %>' Style="display: block; margin: 0 auto; border-radius: 5px; box-shadow: 2px 2px 5px #ddd;" />
                                                <br />
                                                <h2 style="margin-bottom: 10px;">
                                                    <asp:Label ID="Label1" Font-Bold="True" runat="server" Text='<%# Eval("B_Title") %>'></asp:Label>
                                                </h2>
                                                <br />
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label6" runat="server" Text="A_Name: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("A_Name") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label8" runat="server" Text="ISBN-13: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label10" runat="server" Text="P_Date: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("P_Date") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label12" runat="server" Text="NOP: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("NOP") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label14" runat="server" Text="Award: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("Award") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label16" runat="server" Text="Language: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;
                                                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("Language") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label4" runat="server" Text="Category: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: left; margin-bottom: 20px;">
                                                    <asp:Label ID="Label5" runat="server" Text="Price: " Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                </p>
                                                <p style="text-align: center; margin-bottom: 20px;">
                                                </p>
                                                <div style="display: flex; justify-content: space-around; margin-top: 10px;">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("PId") %>' CommandName="cmd_atc" BackColor="#FFE4B5" BorderStyle="None" Font-Bold="True" Font-Italic="False" ForeColor="Black" Height="35px" Width="150px" Style="display: inline-block; text-decoration: none; line-height: 35px; text-align: center; border-radius: 18px; box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);" OnClick="LinkButton1_Click">Add to Cart</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("PId") %>' CommandName="cmd_bn" BackColor="#FFE4B5" BorderStyle="None" Font-Bold="True" Font-Italic="False" ForeColor="Black" Height="35px" Width="150px" Style="display: inline-block; text-decoration: none; line-height: 35px; text-align: center; border-radius: 18px; box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);" OnClick="LinkButton2_Click">Checkout</asp:LinkButton>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:DataList>

                                </asp:Panel>


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
