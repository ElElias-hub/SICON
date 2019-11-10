<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SICON.Pll.SICON.Registro1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    
    <link rel='icon' type='img/logo.png' href='img/logo.png'>
    <title>Registro | S I C O N </title>

    <script src="../js/jquery-3.3.1.slim.js" type="text/javascript"></script>

    <link rel="stylesheet" href="../css/style.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="container-all">
				<div class="ctn-form">
				<img src="../img/undraw_male_avatar_323b.svg" alt="" class="logo">
				<h1 class="title">Registrarse</h1>
					
				<form>
					<label for="">Nombre de Usuario</label>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingresa un nombre de usuario" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
					<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

					<label for="">Nombres</label>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtName"></asp:RequiredFieldValidator>
					<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

					<label for="">Apellidos</label>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="txtApell"></asp:RequiredFieldValidator>
					<asp:TextBox ID="txtApell" runat="server"></asp:TextBox>

					<label for="">Contraseña</label>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contraseña invalida" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
					<asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>

					<asp:Button ID="btnRegis" runat="server" Text="Registrarse" CssClass="btn" OnClick="btnRegis_Click1" />
				</form>

				<span class="text-footer">¿Ya te has registrado?
                    
					<a href="../Login.aspx">Iniciar Sesión</a>
				</span>
			</div>

			<div class="ctn-text">
				<div class="capa"></div>
					<h1 class="title-description">Unete a SICON.</h1>
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
