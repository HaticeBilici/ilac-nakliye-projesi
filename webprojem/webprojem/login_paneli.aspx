<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_paneli.aspx.cs" Inherits="webprojem.login_paneli" %>

<!doctype html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html lang="tr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="login_paneli/fonts/icomoon/style.css">

    <link rel="stylesheet" href="login_paneli/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="login_paneli/css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="login_paneli/css/style.css">

    <title>Login panelim</title>
  </head>
  <body>
  

  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('login_paneli/images/nakliye.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <h3><strong>kullanıcı girişi</strong></h3>
           
            <form action="#" method="post" runat="server">
              <div class="form-group first">
                <label for="username">Kullanıcı Adı</label>
                  <asp:TextBox ID="Txtuser" runat="server" class="form-control" placeholder="kullanici adi"></asp:TextBox>
               
              </div>
              <div class="form-group last mb-3">
                <label for="password">Sifre</label>
                   <asp:TextBox ID="Txtsifre" runat="server" class="form-control" placeholder="sifre"></asp:TextBox>
               
              </div>
              
            
                <asp:Button ID="Button1" runat="server" Text="Giriş" class="btn btn-block btn-secondary" OnClick="Button1_Click"/>
              

            </form>
          </div>
        </div>
      </div>
    </div>

    
  </div>
    
    

    <script src="login_paneli/js/jquery-3.3.1.min.js"></script>
    <script src="login_paneli/js/popper.min.js"></script>
    <script src="login_paneli/js/bootstrap.min.js"></script>
    <script src="login_paneli/js/main.js"></script>
  </body>
</html>
