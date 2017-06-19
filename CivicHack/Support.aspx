<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="CivicHack.Support" %>

<!DOCTYPE html>
<html>
    <head runat="server">
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Support</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/introjs.css" />
        <link rel="stylesheet" href="css/bootstrap-drawer.css" />
        <link rel="stylesheet" href="css/liquid-slider.css" />
        <link rel="stylesheet" href="css/civicHack.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/ckeditor_4.5.7_standard/ckeditor/ckeditor.js"></script>
        <style>
            h4, #Label1 {
                color: white;
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
                <li><a href="Documents.aspx">Documents</a></li>
                <li><a href="Resources.aspx">Resources</a></li>
                <li><a href="Login.aspx">Sign in</a></li>
                <li class="active"><a href="Support.aspx">Support</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="Account.aspx"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                <li><a href="Registration.aspx"><span class="glyphicon glyphicon-user-add"></span> Register</a></li>
              </ul>
            </div>
          </div>
        </nav>
        <form runat="server">
          <div id="contact" class="container" role="dialog">
                <div class="content">
                    <div class="header">
                        <button type="button" class="close" aria-label="Close the window" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Contact us!</h4>
                    </div>
                    <div class="body">
                        <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="control-label" for="TextBoxName"></asp:Label>
                        <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="TextBoxContact" runat="server" CssClass="ckeditor" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="footer">
                        <asp:Label runat="server" ID="LabelMessage" ForeColor="Red" Visible="False"></asp:Label>
                        <asp:Button ID="ButtonContact" runat="server" Text="Send" CssClass="btn btn-success" OnClick="ButtonContact_Click" />
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </form>  
    </body>
</html>