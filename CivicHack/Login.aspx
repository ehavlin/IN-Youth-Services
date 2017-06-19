<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CivicHack.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title> Login </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/bootstrap-drawer.css" />
        <link rel="stylesheet" href="css/civicHack.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <style>
            h3 {
                color: white;
            }
            form {
                margin: 15px;
            }
        </style>
    </head>
    <body class="has-drawer">
        <nav class="navbar navbar-inverse">
          <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>                        
              </button>
              <a class="navbar-brand" href="#"><img class="logo" src="img/DCSLogoSmall.jpg" alt="Department of Child Services logo" /></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Documents.aspx">Documents</a></li>
                <li><a href="Resources.aspx">Resources</a></li>
                <li class="active"><a href="Login.aspx">Sign in</a></li>
                <li><a href="Support.aspx">Support</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="Account.aspx"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                <li><a href="Registration.aspx"><span class="glyphicon glyphicon-user-add"></span> Register</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <form id="formLogin" runat="server" class="form-horizontal col-sm-offset-3 col-sm-6">
            <h3> Login to your account </h3>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <asp:TextBox ID="TextBoxUserName" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <asp:TextBox ID="TextBoxPassword" textMode="Password" runat="server" Text="" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <hr />
            <a href="Registration.aspx"> Create an Account </a>
            <div class="form-group">
                <br />
                <asp:Button ID="ButtonLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="ButtonLogin_Click"/>
                <asp:Label ID="LabelMessage" runat="server" Text="Label" Visible="false"></asp:Label>
                <asp:LinkButton ID="LinkButtonForgotPassword" runat="server" Enabled="false" Visible="false" PostBackUrl="~/ResetPassword.aspx"> Forgot Password </asp:LinkButton>
            </div>
        </form>
    </body>
</html>