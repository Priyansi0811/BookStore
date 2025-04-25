<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BookStore.Admin.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%--<!DOCTYPE html>
<html>--%>

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
        <%--<body>--%>

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
              <li class="nav-item ">
                <a class="nav-link" href="contact.aspx"> Contact Us </a>
              </li>
              
              <li class="nav-item active">
                <a class="nav-link" href="Product.aspx">Add Product <span class="sr-only">(current)</span> </a>
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
              Registration Form
            </h2>
          </div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your full name"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your email"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your password"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Gender"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Address"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Birthdate"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter City"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" BackColor="#44b89d" Text="Submit" />                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="If You Have Already an Acoount?" Font-Bold="False" Font-Italic="True" Font-Size="Medium"></asp:Label>
                            &nbsp;<asp:LinkButton ID="LinkButton3" href="ALogin.aspx" runat="server" Font-Underline="True">Log In</asp:LinkButton>
            &nbsp;
            <%--<asp:LinkButton ID="LinkButton1" href="ALogin.aspx" runat="server">Log In</asp:LinkButton>--%>
          <%--<form action="#" class="contact_form">
              <div class="form-group">
                  <asp:TextBox ID="TextBox1" placeholder="Customer Name" runat="server" CssClass="form-control"></asp:TextBox>
          </div>
              <div class="form-group">
            <label>Gender:</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
              <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
          </div>

          <div class="form-group">
            <asp:TextBox ID="TextBox2" placeholder="Phone Number" runat="server" CssClass="form-control"></asp:TextBox>
          </div>

          <div class="form-group">
            <asp:TextBox ID="TextBox3" placeholder="Address" runat="server" CssClass="form-control"></asp:TextBox>
          </div>

          <div class="form-group">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
              <asp:ListItem>-- Select Country --</asp:ListItem>
              <asp:ListItem>India</asp:ListItem>
              <asp:ListItem>US</asp:ListItem>
              <asp:ListItem>Thailand</asp:ListItem>
              <asp:ListItem>UK</asp:ListItem>
              <asp:ListItem>Japan</asp:ListItem>
              <asp:ListItem>USA</asp:ListItem>
            </asp:DropDownList>
          </div>

          <div class="form-group">
            <label>Book Category:</label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" CssClass="checkbox-group">
              <asp:ListItem>Fiction</asp:ListItem>
              <asp:ListItem>Non-fiction</asp:ListItem>
              <asp:ListItem>Science</asp:ListItem>
              <asp:ListItem>History</asp:ListItem>
            </asp:CheckBoxList>
          </div>

          <div class="form-group">
            <asp:TextBox ID="TextBox4" placeholder="Book Name" runat="server" CssClass="form-control"></asp:TextBox>
          </div>

          <div class="form-group">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
              <asp:ListItem>-- Select Language --</asp:ListItem>
              <asp:ListItem>English</asp:ListItem>
              <asp:ListItem>Hindi</asp:ListItem>
              <asp:ListItem>Gujarati</asp:ListItem>
              <asp:ListItem>Sanskrit</asp:ListItem>
              <asp:ListItem>Spanish</asp:ListItem>
              <asp:ListItem>Bengali</asp:ListItem>
            </asp:DropDownList>
          </div>

          <div class="form-group">
            <asp:TextBox ID="TextBox5" placeholder="Quantity" runat="server" CssClass="form-control" ></asp:TextBox>
          </div>

          <%--<div class="form-group">
                  <asp:TextBox ID="TextBox6" placeholder="Book Name" runat="server" CssClass="form-control"></asp:TextBox>
            <%--<asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
              <asp:ListItem>-- Select Option --</asp:ListItem>
              <asp:ListItem>Standard</asp:ListItem>
              <asp:ListItem>Express</asp:ListItem>
            </asp:DropDownList>
          </div>

          <div class="form-group">
            <label>Payment Method:</label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem>Credit Card</asp:ListItem>
              <asp:ListItem>Debit Card</asp:ListItem>
              <asp:ListItem>Cash On Delivery</asp:ListItem>
            </asp:RadioButtonList>
          </div>

          <div class="form-group text-center">
            <asp:Button ID="Button1" runat="server" Text="Save" class="btn-box" OnClick="Button1_Click" />
          </div>
        </form>--%>
      </div>
          <div class="col-md-6">
  <div class="img-box">
    <img src="image/contact-img.png" alt="Contact Image">
  </div>
</div>
<%--          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand1">
              <Columns>
                  <asp:TemplateField HeaderText="Id">
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Customer_Name">
                      <ItemTemplate>
                          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Customer_Name") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Gender">
                      <ItemTemplate>
                          <asp:Label ID="Label3" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Phone_No">
                      <ItemTemplate>
                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("Phone_No") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Address">
                      <ItemTemplate>
                          <asp:Label ID="Label5" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Country">
                      <ItemTemplate>
                          <asp:Label ID="Label6" runat="server" Text='<%# Eval("Country") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="C1">
                      <ItemTemplate>
                          <asp:Label ID="Label7" runat="server" Text='<%# Eval("C1") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="C2">
                      <ItemTemplate>
                          <asp:Label ID="Label8" runat="server" Text='<%# Eval("C2") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="C3">
                      <ItemTemplate>
                          <asp:Label ID="Label9" runat="server" Text='<%# Eval("C3") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="C4">
                      <ItemTemplate>
                          <asp:Label ID="Label10" runat="server" Text='<%# Eval("C4") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Book_Name">
                      <ItemTemplate>
                          <asp:Label ID="Label11" runat="server" Text='<%# Eval("Book_Name") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Language">
                      <ItemTemplate>
                          <asp:Label ID="Label12" runat="server" Text='<%# Eval("Language") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Quantity">
                      <ItemTemplate>
                          <asp:Label ID="Label13" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Method">
                      <ItemTemplate>
                          <asp:Label ID="Label14" runat="server" Text='<%# Eval("Method") %>'></asp:Label>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Edit">
                      <ItemTemplate>
                          <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:TemplateField HeaderText="Delete">
                      <ItemTemplate>
                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>--%>
      <%--<div class="col-md-6">
        <div class="img-box">
          <img src="images/contact-img.png" alt="Contact Image">
        </div>
      </div>--%>




    </div>
  </div>
</section>
<!-- End Contact Section -->
                

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
              Vitae aut explicabo fugit facere alias distinctio, exem commodi mollitia minusem dignissimos atque asperiores incidunt vel voluptate iste
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

<%--</body>

</html>--%>
</asp:Content>
