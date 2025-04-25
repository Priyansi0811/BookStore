<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="BookStore.CheckOut" %>

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


        <!-- contact section -->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

<section class="py-5" style="background-color: #e9ecef; min-height: 100vh;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="bg-white shadow rounded p-4 border border-2" style="border-color: #44b89d !important;">
                    <h2 class="mb-4 text-center fw-bold" style="color: #44b89d;">Your Order Summary</h2>
                    <div>
                    <asp:GridView ID="GridViewCheckout" runat="server" AutoGenerateColumns="false"
                        CssClass="table table-bordered mb-4 table-hover">
                        <Columns>
                            <asp:BoundField DataField="B_Title" HeaderText="Book Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-CssClass="text-end" HeaderStyle-CssClass="text-end" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-CssClass="text-center" HeaderStyle-CssClass="text-center" />
                            <asp:BoundField DataField="Total" HeaderText="Total Price" ItemStyle-CssClass="text-end fw-bold" HeaderStyle-CssClass="text-end" />
                        </Columns>
                    </asp:GridView>
                        </div>
                    <asp:Label ID="lblTotalAmount" runat="server" CssClass="fw-bold fs-5 d-block text-end mb-3" style="color: #44b89d;"></asp:Label>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger fw-bold d-block text-end mb-3"></asp:Label>


                    <div class="card p-4 mb-4 border border-1" style="border-color: #44b89d !important;">
                        <h4 class="mb-4 fw-semibold" style="color: #44b89d;">Delivery Address</h4>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Placeholder="Full Name" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Placeholder="Contact Number" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Placeholder="Email ID" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtHouseNo" runat="server" CssClass="form-control" Placeholder="House No. / Flat No." />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtBlock" runat="server" CssClass="form-control" Placeholder="Block No. / Building Name" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" Placeholder="Street Address / Area" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" Placeholder="City" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" Placeholder="State" />
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" Placeholder="Pincode" />
                            </div>
                        </div>
                    </div>

                    <div class="card p-4 mb-4 border border-1" style="border-color: #44b89d !important;">
                        <h4 class="mb-3 fw-semibold" style="color: #44b89d;">Select Payment Method</h4>
                        <div class="form-check mb-2">
                            <asp:RadioButton ID="rdoCOD" runat="server" GroupName="paymentMethod" Checked="true"
                                CssClass="form-check-input" />
                            <label class="form-check-label" for="rdoCOD">Cash on Delivery (COD)</label>
                        </div>
                        <div class="form-check mb-2">
                            <asp:RadioButton ID="rdoCard" runat="server" GroupName="paymentMethod"
                                CssClass="form-check-input" />
                            <label class="form-check-label" for="rdoCard">Debit / Credit Card</label>
                        </div>
                        <div class="form-check mb-3">
                            <asp:RadioButton ID="rdoUPI" runat="server" GroupName="paymentMethod"
                                CssClass="form-check-input" />
                            <label class="form-check-label" for="rdoUPI">UPI / Net Banking</label>
                        </div>

                        <asp:Button ID="btnConfirmOrder" runat="server" Text="Confirm Order"
                            CssClass="btn btn-success w-100 fw-bold" style="background-color: #44b89d; border-color: #44b89d;" OnClick="btnConfirmOrder_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>    <!-- end contact section -->
        </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
