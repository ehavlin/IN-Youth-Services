<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="CivicHack.ResetPassword" %>

<!DOCTYPE html>
 
<html>
    <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Reset Password</title>
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
            color:white;
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
                <li><a href="#">Home</a></li>
                <li><a href="Documents.aspx">Documents</a></li>
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
        <div class="container">
            <br /><br /><br /><br />
            <form id="form1" runat="server" class="form-horizontal">
               <div class="form-group"><asp:Label ID="Label3" runat="server" Text="UserName:" CssClass="control-label col-sm-4" for="TextBoxUserName"></asp:Label>
                        <div class="col-sm-4">
                        <asp:TextBox ID="TextBoxUserName" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Enter your username" ControlToValidate="TextBoxUserName" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                                 <div class="form-group"><asp:Label ID="Label4" runat="server" Text="Email:" CssClass="control-label col-sm-4" for="TextBoxEmail"></asp:Label>
                        <div class="col-sm-4">
                        <asp:TextBox ID="TextBoxEmail" class="form-control" runat="server"></asp:TextBox>
                            </div>
                        <div class="col-sm-4"><asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter your email" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator></div>
                    </div>
                <div class="form-group">
                    <asp:Label ID="LabelMessage" runat="server" Text="" CssClass="col-sm-4 control-label" for="ButtonResetPassword"></asp:Label>
                    <asp:Button ID="ButtonResetPassword" runat="server" class="btn btn-primary btn-lg" Text="NewPassword" OnClick="ButtonResetPassword_Click" /></div>
            </form>
        </div>
        <script src="js/jquery.localize.min.js"></script>
        <script src="js/intro.js"></script>
        <script src="js/drawer.js"></script>
        <script src="js/cardinalParks.js"></script>
        <script type="text/javascript">
            function googleTranslateElementInit() {
                new google.translate.TranslateElement({ pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE }, 'google_translate_element');
            }
        </script>
        <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    </body>
</html>