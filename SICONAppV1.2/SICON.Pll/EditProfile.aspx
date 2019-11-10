<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="SICON.Pll.EditProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <link rel='icon' type='img/logo.png' href='img/logo.png'>
    <title>Editar Perfil | S I C O N </title>

    <script src="../js/jquery-3.3.1.slim.js" type="text/javascript"></script>

    <link rel="stylesheet" href="../css/style.css" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container-all">
				<div class="ctn-form">
				<img src="../img/undraw_male_avatar_323b.svg" alt="" class="logo">
				<h1 class="title">Editar Perfil</h1>
					
				<form>
					
                    <label for="">Tu Nombre</label>
					<asp:TextBox ID="txtName" runat="server"></asp:TextBox>

					<label for="">Apellidos</label>
					<asp:TextBox ID="txtApe" runat="server"></asp:TextBox>

					<label for="">Contraseña</label>
					<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>

                    <asp:Button ID="btnEdit" type="submit" runat="server" Text="Editar Perfil" />
				</form>

				<span class="text-footer">¿No quieres editar tu información?
                    
					<a href="SICON/Index.aspx">Regresar al Inicio</a>
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
