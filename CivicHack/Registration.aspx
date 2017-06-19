<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CivicHack.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Registration</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-drawer.css" />
    <link rel="stylesheet" href="css/civicHack.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        form {
            color: white;
            padding-top: 40px;
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
            <li><a href="Login.aspx">Sign in</a></li>
            <li><a href="Support.aspx">Support</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Account.aspx"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
            <li class="active"><a href="Registration.aspx"><span class="glyphicon glyphicon-user-add"></span>Register</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="control-label col-sm-4" for="TextBoxFName"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxFName" runat="server" CssClass="form-control"></asp:TextBox>   
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="TextBoxFName"></asp:RequiredFieldValidator>    
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="control-label col-sm-4" for="TextBoxLName"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxLName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator2" runat="server" ClientIDMode="AutoID" ControlToValidate="TextBoxLName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="User Name" CssClass="control-label col-sm-4" for="TextBoxUsername"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name is required" ControlToValidate="TextBoxUsername"></asp:RequiredFieldValidator>    
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" runat="server" Text="Email" CssClass="control-label col-sm-4" for="TextBoxEmail"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is required." ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>   
                <br /><asp:RegularExpressionValidator foreColor="Red" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>   
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" runat="server" Text="Password" CssClass="control-label col-sm-4" for="TextBoxPassword"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator foreColor="Red" ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Use at least 6 characters with numbers." ValidationExpression="[a-zA-Z0-9]{6,}"></asp:RegularExpressionValidator>
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" runat="server" Text="Confirm Password" CssClass="control-label col-sm-4" for="TextBoxConfirmPassword"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Confirm Password is required."></asp:RequiredFieldValidator>
                <br /><asp:CompareValidator foreColor="Red" ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Passwords must match."></asp:CompareValidator>
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" runat="server" Text="Age" CssClass="control-label col-sm-4" for="TextBoxAge"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="TextBoxAge" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator foreColor="Red" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="Age is required."></asp:RequiredFieldValidator>
                <br /><asp:RangeValidator foreColor="Red" ID="RangeValidator1" runat="server" ControlToValidate="TextBoxAge" ErrorMessage="You must be at least 13 years old." MaximumValue="120" MinimumValue="13" Type="Integer"></asp:RangeValidator>
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" runat="server" Text="Gender" CssClass="control-label col-sm-4" for="RadioButtons"></asp:Label>
            <div id="RadioButtons" class="col-sm-4 radio-inline">
                <asp:RadioButton ID="RadioButtonMale" runat="server" GroupName="Gender" Text="Male" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButtonFemale" runat="server" Checked="True" GroupName="Gender" Text="Female" />
                <br />
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LabelWelcome" runat="server" Text="Welcome" CssClass="control-label col-sm-4" for="SubmitButtons"></asp:Label>
            <div id="SubmitButtons" class="col-sm-4">
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="ButtonSubmit_Click"/>
            </div>
        </div>
    </form>
</body>
</html>