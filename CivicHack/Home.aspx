<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CivicHack.Home" %>

<!DOCTYPE html>
<html>
    <head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Home</title>
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
            .navbar {
              margin-bottom: 50px;
              border-radius: 0;
            }
             .jumbotron {
              margin-bottom: 0;
            }
            footer {
              background-color: #f2f2f2;
              padding: 25px;
            }
      </style>
    </head>
    <body>
        <div class="jumbotron">
          <div class="container text-center">
            <h1>Indiana Department of Child Services</h1>      
            <p>A tool for foster children approaching adulthood.</p>
          </div>
        </div>
        <nav class="navbar navbar-inverse" id="navBar">
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
                <li class="active"><a href="#">Home</a></li>
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
        <div class="container" id="DivResource">
          <asp:Label ID="LabelResources" runat="server" Text="Resources" Font-Bold="True" Font-Italic="false" Font-Names="Century Gothic" Font-Size="20pt" ForeColor="White"></asp:Label>   
          <div class="row">
            <div class="col-sm-4">
              <div class="panel panel-primary">
                <div class="panel-heading">Housing</div>
                <div class="panel-body"><a href="https://affordablehousingonline.com/housing-search/Indiana"><img src="img/housing.jpg" class="img-responsive" style="width:100%; height:153px;" alt="Housing"></a></div>
                <div class="panel-footer">Many housing options are available.</div>
              </div>
            </div>
            <div class="col-sm-4"> 
              <div class="panel panel-danger">
                <div class="panel-heading">Education</div>
                <div class="panel-body"><a href="http://www.doe.in.gov/"><img src="img/education.png" class="img-responsive" style="width:100%; height:153px;" alt="Education"></a></div>
                <div class="panel-footer">Expand your current knowledge.</div>
              </div>
            </div>
            <div class="col-sm-4"> 
              <div class="panel panel-success">
                <div class="panel-heading">Financial Toolkit</div>
                <div class="panel-body"><a href="https://financialaidtoolkit.ed.gov/tk/learn.jsp"><img src="img/finance.png" class="img-responsive" style="width:60%; height:153px;" alt="Fianance"></a></div>
                <div class="panel-footer">Learn to better manage your finances.</div>
              </div>
            </div>
          </div>
        </div><br>
        <div class="container" id="DivDocument">  
          <asp:Label ID="LabelDocuments" runat="server" Text="Documents" Font-Bold="True" Font-Italic="false" Font-Names="Century Gothic" Font-Size="20pt" ForeColor="White"></asp:Label> 
          <div class="row">
            <div class="col-sm-4">
              <div class="panel panel-info">
                <div class="panel-heading">Birth Certificate</div>
                <div class="panel-body"><a href="#"><img src="img/birth_certificate.png" class="img-responsive" style="width:70%; height:153px;" alt="Birth Certificate"></a></div>
                <div class="panel-footer">A digital copy of your birth certificate.</div>
              </div>
            </div>
            <div class="col-sm-4"> 
              <div class="panel panel-warning">
                <div class="panel-heading">Résumé</div>
                <div class="panel-body"><a href="#"><img src="img/resume.jpg" class="img-responsive" style="width:100%; height: 153px;" alt="Résumé"></a></div>
                <div class="panel-footer">Store your résumé for quick access.</div>
              </div>
            </div>
            <div class="col-sm-4"> 
              <div class="panel panel-danger">
                <div class="panel-heading">Medical</div>
                <div class="panel-body"><a href="#"><img src="img/medical.jpg" class="img-responsive" style="width:100%; height: 153px" alt="Medical"></a></div>
                <div class="panel-footer">Forms needed for all medical needs.</div>
              </div>
            </div>
          </div>
            <form runat="server">
              <div id="contact" class="modal fade" role="dialog">
                 <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" aria-label="Close the window" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Contact</h4>
                        </div>
                        <div class="modal-body">
                            <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="control-label" for="TextBoxName"></asp:Label>
                            <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="TextBoxContact" runat="server" CssClass="ckeditor" TextMode="MultiLine"></asp:TextBox>
                        </div>
                        <div class="modal-footer">
                            <asp:Label runat="server" ID="LabelMessage" ForeColor="Red" Visible="False"></asp:Label>
                            <asp:Button ID="ButtonContact" runat="server" Text="Send" CssClass="btn btn-success" OnClick="ButtonContact_Click" />
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
            </form>  
        </div><br><br>
        <footer class="container-fluid text-center">
            <p><a href="#" onclick="startIntro();">Tour the homepage</a></p>
            <a href="#" id="contactFooter" data-toggle="modal" data-target="#contact" role="button">Contact</a>
    
        </footer>
    <script src="js/intro.js"></script>
    <script src="js/civicHack.js"></script>
    </body>
</html>