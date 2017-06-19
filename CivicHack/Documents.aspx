<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Documents.aspx.cs" Inherits="CivicHack.Documents" %>

<!DOCTYPE html>
<html>
    <head runat="server">
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Documents</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/introjs.css" />
        <link rel="stylesheet" href="css/liquid-slider.css" />
        <link rel="stylesheet" href="css/civicHack.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/ckeditor_4.5.7_standard/ckeditor/ckeditor.js"></script>
        <style type="text/css">
            form {
                color: white;
                padding-top: 40px;
                margin: 15px;
            }
    </style>
    </head>
    <body>
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
            <li class="active"><a href="Documents.aspx">Documents</a></li>
            <li><a href="Resources.aspx">Resources</a></li>
            <li><a href="Login.aspx">Sign in</a></li>
            <li><a href="Support.aspx">Support</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Account.aspx"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
            <li><a href="Registration.aspx"><span class="glyphicon glyphicon-list"></span> Register</a></li>
          </ul>
        </div>
      </div>
    </nav>
        <form runat="server" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="LabelBirth" runat="server" Text="Birth Certificate" CssClass="control-label col-sm-4" for="TextBoxBirth"></asp:Label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxBirth" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="ButtonBirth" runat="server" Text="Submit" class="btn btn-primary" OnClick="ButtonBirth_Click"/>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelHealth" runat="server" Text="Health Records" CssClass="control-label col-sm-4" for="TextBoxHealth"></asp:Label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxHealth" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="ButtonHealth" runat="server" Text="Submit" class="btn btn-primary" OnClick="ButtonHealth_Click"/>   
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LabelEducation" runat="server" Text="Education Records" CssClass="control-label col-sm-4" for="TextBoxEducation"></asp:Label>
                <div class="col-sm-4">
                    <asp:TextBox ID="TextBoxEducation" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-4">
                    <asp:Button ID="ButtonEducation" runat="server" Text="Submit" class="btn btn-primary" OnClick="ButtonEducation_Click"/>   
                </div>
            </div>
        </form>
    </body>
</html>