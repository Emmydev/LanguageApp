<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LanguageSystem.index" %>

<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head>
    <meta charset="utf-8">
    <title>Home Page</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="generator" content="">

    <!-- Favicons -->
    <link href="img/favicon.png" rel="icon">
    
    <link rel="stylesheet" href="landingpage/css/c_style.css" media="screen">
    <link rel="stylesheet" href="landingpage/css/c_style.responsive.css" media="all">
    
    <link href="assets/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Libraries CSS Files -->

  <link href="landingpage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  
    <script src="landingpage/js/jquery.js"></script>
    <script src="landingpage/js/script.js"></script>
    <script src="landingpage/js/script.responsive.js"></script>

<style>.art-content .art-postcontent-0 .layout-item-0 { padding-right: 10px;padding-left: 10px;  }
.art-content .art-postcontent-0 .layout-item-1 { color: #3A3B3A; background: #FFFFFF; padding-right: 10px;padding-left: 10px;  }
.ie7 .art-post .art-layout-cell {border:none !important; padding:0 !important; }
.ie6 .art-post .art-layout-cell {border:none !important; padding:0 !important; }

</style></head>
<body>
<form runat="server">
<div id="art-main">
    <div class="art-sheet clearfix">
<header class="art-header">


    <div class="art-shapes">
<img src="landingpage/img/logo.png" alt="Okun Language Logo" style="padding-top:80px;">
<h2 class="art-slogan" data-left="17.97%"></h2>
            </div>
                    
</header>
<nav class="art-nav">
    <ul class="art-hmenu"><li><a href="index.aspx" class="active"><b>Home</b></a></li><li><a href="#"><b>About</b></a></li><li><a href="#"><b>Contact</b></a></li><li><a href="Account/Login.aspx"><b>Login</b></a></li></ul> 
    </nav>
<div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content">

<div class="col-md-12">

<h3 style="text-align: center; color: #000000;"><b>OKUN LANGUAGE TRANSLATOR</b></h3>
<h4 style="text-align: center; color:#000000">Okun language translator is a machine translation system developed to translate multiple form of text, such as words and phrases between English and Okun language.</h4>
<%--<div class="cont-div">
	<a href="about.html" class="cont-btn">Continue</a>

</div>--%>
</div>

<div class="col-md-12" style="height: auto; width:100%; background-color: #b2dba1; margin: 0px 5px 5px 5px;">
    <div style="padding-top:1px">
    <h3 style="text-align:center; color:#3266b1">English <span class="fa fa-angle-double-right" style="color:#ff0000; padding-left: 20px; padding-right:20px"></span> Okun</h3>
     </div>
      <div class="form-horizontal" role="form" runat="server" id="Div1" style="align-content:center; padding-bottom:10px" >
                        <div class="alert-danger text-center" id="divError" runat="server" visible="false">
                            <asp:Label ID="lblError" runat="server" Text="Input English word to translate"></asp:Label>
                        </div>
                            <div class="form-group" runat="server" >
                                    <label for="lblProductName" class="col-sm-3 control-label"></label>
                                    <div class="col-sm-6 text-center" runat="server">
                                        <textarea id="txtSearch" runat="server" cols="20" rows="5" placeholder="Enter text ..." class="form-control center-block"></textarea>
                                    </div>  
                                 </div>
                            <div class=" form-group">
                                <div class="col-sm-12 text-center">
                                <asp:Button ID="BtnSave" OnClick="BtnSave_Click"  CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Translate"/>
                                </div>
                            </div>
          </div>

</div>

<div class="col-md-12">

    <asp:ListView ID="lstResult" runat="server">
        <EmptyDataTemplate>
            <table>
                <tr>
                    <td>No data found for English word</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("EnglishWord")%>' Font-Italic="true" Font-Size="20px"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("OkunMeaning")%>' Font-Bold="true" Font-Size="20px"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblExplanation" runat="server" Text='<%#Eval("DetailExplanation")%>' Font-Size="15px"></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>

    </asp:ListView>

</div>

</div>
                        <div class="art-layout-cell art-sidebar1"><div class="art-vmenublock clearfix">
        <div class="art-vmenublockcontent">
<ul class="art-vmenu"><li><a href="index.aspx" class="active">Home</a></li><li><a href="#">About</a></li><li><a href="#">Contact</a></li></ul>
                
        </div>
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">How to Use</h3>
        </div>
        <div class="art-blockcontent"><p><span style="font-weight: bold;"><span style="color: rgb(158, 10, 13);">Input text</span></span></p><br>

<p><span style="font-weight: bold;"><span style="color: rgb(158, 10, 13);">Click translate</span></span></p><br>

<p><span style="font-weight: bold;"><span style="color: rgb(158, 10, 13);">Scroll down</span></span>
</p><br>

<p><span style="font-weight: bold;"><span style="color: rgb(158, 10, 13);"></span><br>
<br></span></p>

</div>
</div></div>
                    </div>
                </div>
            </div>
    </div>
    
<footer class="art-footer">
  <div class="art-footer-inner">

 <div class="social-icon">
  <ul>
      
    
          <li style="background-color: #677fb5; border: 2px solid #677fb5; border-radius: 50%;"><a target="_blank" title="Facebook" href="#"><i class="fa fa-facebook"> </i></a></li>
        
          <li style="background-color: #38A1F3; border: 2px solid #38A1F3; border-radius: 50%;"><a target="_blank" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></li>
      
    
    
          <li style="background-color: #3daccf; border: 2px solid #3daccf; border-radius: 50%;"><a target="_blank" title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>

          <li style="background-color: #cc1014; border: 2px solid #cc1014; border-radius: 50%;"><a target="_blank" title="Instagram" href="#"><i class="fa fa-instagram"></i></a></li>
      
  </ul>
  <div style="clear:both"></div>
</div>
      <div>
<p>Copyright © 2019, Okun Language System. All Rights Reserved</p>
          </div>
  </div>
</footer>

</div>

 <!-- JavaScript Libraries -->
  <script src="js/main.js"></script>
</form>
</body>
</html>