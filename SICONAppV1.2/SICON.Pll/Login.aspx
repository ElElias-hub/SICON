<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SICON.Pll.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

     <link rel='icon' type='img/logo.png' href='img/logo.png'>
    <title>Iniciar Sesión | S I C O N </title>

    <link rel="stylesheet" href="css/style.css">
 <script src="js/jquery-3.3.1.slim.js" type="text/javascript"></script>


</head>
 <body>
    <form id="form1" runat="server">
        <div>

           <div class="container-all">

        <div class="ctn-form">
            <img src="img/undraw_male_avatar_323b.svg" alt="" class="logo">
            <h1 class="title">Iniciar Sesión</h1>

            <form>

                <label for="">Usuario</label>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Usuario incorrecto" ControlToValidate="txtUser"></asp:RequiredFieldValidator>
				<asp:TextBox ID="txtUser" runat="server" CssClass="input"></asp:TextBox>
				
                <label for="">Contraseña</label>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Contraseña Incorrecta" ControlToValidate="txtPasw"></asp:RequiredFieldValidator>
				<asp:TextBox ID="txtPasw" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
				

                <asp:Button ID="LoginBtn" runat="server" Text="Ingresar" CssClass="btn" OnClick="LoginBtn_Click" />

            </form>

            <span class="text-footer">¿Aún no te has regsitrado?
                <a href="SICON/Registro.aspx">Registrate</a>
            </span>
        </div>

        <div class="ctn-text">
            <div class="capa"></div>
            <h1 class="title-description">Bienvenido a SICON</h1>
            <p class="text-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat natus dolore ea dicta molestias totam iusto perspiciatis iste obcaecati quod dolor, eaque qui asperiores? Molestias ad nemo placeat est quidem?</p>
        </div>

        </div>

    </div>
    </form>

   <script type="text/javascript">document.oncontextmenu = function(){return false}</script>
  <script type="text/javascript">window.onload = function()
// Para internet Explorer
	  	{document.onselectstart = function(){return false;} 
// Para Firefox
		document.onmousedown = function(){return false;}}
	</script>

</body>
</html>
