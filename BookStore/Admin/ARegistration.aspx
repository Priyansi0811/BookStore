<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ARegistration.aspx.cs" Inherits="BookStore.Admin.Registration" %>
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
          <span>
            Bostorek
          </span>
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""> </span>
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
                <%--<li class="nav-item">
                    <a class="nav-link" href="register.aspx">Registeration</a>
                </li>--%>

                <%--<li class="nav-item">
                    <a class="nav-link" href="Registration.aspx">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link pl-lg-0" href="index.aspx">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.aspx"> About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="categories.aspx">Categories</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="blog.aspx"> Blog </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="contact.aspx">Contact Us <span class="sr-only">(current)</span> </a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Product.aspx">Add Product</a>
                </li>--%>
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
          <h2 class="">
            Client Registration
          </h2>
        </div>
        <%--<form action="#">
          <div>
            <input type="text" placeholder="Name" />
          </div>--%>
          


                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
    BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="#333333"
    Width="729px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
    CssClass="data-table" CaptionAlign="Bottom">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#063547" Font-Bold="True" ForeColor="White"
        CssClass="table-header" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    <Columns>
        <asp:TemplateField HeaderText="UId">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("UId") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="PhoneNo">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("PhoneNo") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gender") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Eval("Address") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DateOfBirth">
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("DateOfBirth") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="City">
            <ItemTemplate>
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("City") %>'
                    CssClass="table-cell"></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="table-header-cell" />
            <ItemStyle CssClass="table-cell" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<style>
    .data-table {
        width: 100%; /* Make the table responsive */
        border-collapse: collapse; /* Collapse borders for a cleaner look */
        margin-top: 20px; /* Add some spacing above the table */
        font-family: sans-serif; /* Use a readable font */
        box-shadow: 0 3px 10px rgb(0 0 0 / 0.2); /* Subtle shadow */
        border: 1px solid #ddd; /* Default border */
    }

    .table-header {
        background-color: #44b89d; /* Distinct header background */
        color: white;
        font-weight: bold;
        text-align: left;
    }

    .table-header-cell {
        padding: 12px 15px;
        border-bottom: 2px solid #369780; /* Stronger header bottom border */
    }

    .table-cell {
        padding: 10px 15px;
        border-bottom: 1px solid #eee;
    }

    .table-cell:last-child {
        border-bottom: none; /* Remove border from the last cell in a row */
    }

    .data-table tr:nth-child(even) {
        background-color: #f9f9f9; /* Light background for even rows */
    }

    .data-table tr:hover {
        background-color: #f0f0f0; /* Highlight on hover */
    }
</style>   
          <%--<asp:TextBox ID="TextBox1" placeholder="Categories Name" runat="server"></asp:TextBox>
          <asp:TextBox ID="TextBox2" placeholder="Description" runat="server"></asp:TextBox>
          <asp:Button ID="Button1" runat="server" Text="Add Category" BackColor="#44b89d" />--%>
          
          <%--<div>
            <input type="email" placeholder="Email" />
          </div>
          <div>
            <input type="text" placeholder="Pone Number" />
          </div>
          <div>
            <input type="text" class="message-box" placeholder="Message" />
          </div>--%>

          <%--<div class="btn-box">
            <button>
              SEND
            </button>
          </div>
        </form>--%>
      </div>
      <%--<div class="col-md-6">
        <div class="img-box">
          <img src="image/contact-img.png" alt="">
        </div>
      </div>--%>
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
          <h4>
            About Us
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
          <h4>
            Address
          </h4>
          <div class="contact_link_box">
            <a href="">
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span>
                Location
              </span>
            </a>
            <a href="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
                Call +91 97852 25463
              </span>
            </a>
            <a href="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              <span>
                jakbari@gamil.com
              </span>
            </a>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3 info-col">
        <div class="info_contact">
          <h4>
            Newsletter
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
              <%--</div>--%>
                      </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
                      <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
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
