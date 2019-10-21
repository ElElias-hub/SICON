<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SICON.Pll.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link rel='icon' type='img/logo.png' href='img/logo.png'>
    <title> S I C O N </title>

    <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script src="js/jquery-3.3.1.slim.js" type="text/javascript"></script>


</head>

 <body class="py-5 text-center" style="background-image: url('img/01.jpg');background-size:100% 150%;">
    <form id="form1" runat="server">
        <div>

            <div >
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5"  >
            <%--          <h1 class="mb-4"></h1>--%>
          <img src="img/logo.png" height="100"/>
            <br />
            <br />
          <form>
            <div class="form-group"> 
                
          
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Usuario incorrecto" Display="Dynamic"></asp:RequiredFieldValidator>  

                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-dark text-white"> <i class="fa fa-user"> </i></span>
                    </div>
                    <asp:TextBox ID="txtUser" class="form-control" placeholder="UserName" runat="server" AutoCompleteType="Disabled" MaxLength="20"></asp:TextBox>
                </div>
                
            </div>
            <div class="form-group mb-3">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPasw" ErrorMessage="Password incorrecta" Display="Dynamic"></asp:RequiredFieldValidator>

                <div class="input-group">
                    <div class="input-group-prepend">
                   
                        <span class="input-group-text bg-dark text-white"> <i class="fa fa-lock"></i> </span>
                    </div>
                    <asp:TextBox ID="txtPasw" class="form-control" placeholder="Password" runat="server" TextMode="Password" AutoCompleteType="Disabled" MaxLength="20"></asp:TextBox>
                </div>
                
                <small class="form-text text-muted text-right">
                <a href="#"> Recover password</a>
              </small>

            </div> 
              <asp:Button ID="LoginBtn" runat="server" Text="Ingresar" class="btn btn-dark" OnClick="LoginBtn_Click" />
          </form>
        </div>
      </div>
    </div>
  </div>

        </div>
    </form>

         
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



   <script type="text/javascript">document.oncontextmenu = function(){return false}</script>
  <script type="text/javascript">window.onload = function()
// Para internet Explorer
	  	{document.onselectstart = function(){return false;} 
// Para Firefox
		document.onmousedown = function(){return false;}}
	</script>

</body>
</html>
