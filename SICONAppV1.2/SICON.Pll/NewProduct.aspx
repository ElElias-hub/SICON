<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="SICON.Pll.NewProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel='icon' type='image/png' href='img/logo.png'>
    <title>Agregar Producto | S I C O N </title>

      <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div>

            
             <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <a class="navbar-brand mr-1" href="Index.aspx"><p class="navbar-brand mb-0 text-white"><i class="fa d-inline fa-lg fa-stop-circle"></i> S I C O N </p></a>

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
   <div class="input-group">
        
      </div>


    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
     <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="SICON/Index.aspx">Inicio</a>
          <asp:Button ID="UpdateBtn" runat="server" Text="Editar Perfil" class="dropdown-item" OnClick="UpdateBtn_Click"/>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Cerrar Sesión</a>
        </div>
      </li>
    </ul>

  </nav>


<div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="Dashboard.aspx">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Inicio</span>
        </a>
      </li>
      <li class="nav-item dropdown active">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Productos</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <h6 class="dropdown-header">Productos :</h6> 
          <a class="dropdown-item" href="NewProduct.aspx">Agregar Productos</a>
          <a class="dropdown-item" href="ViewProducts.aspx">Ver prodcutos</a>
          <a class="dropdown-item" href="">Ordenes/Ventas</a>
            <a class="dropdown-item" href="Provider.aspx">Proveedores</a>
            <a class="dropdown-item" href="Materials.aspx">Materiales</a>
          <div class="dropdown-divider"></div>
          <h6 class="dropdown-header">Catalogo:</h6>
          <a class="dropdown-item" href="">Catalogo</a>
          <a class="dropdown-item" href="">Productos</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Custom Pagina</span></a>
      </li>
      <li class="nav-item">

        <a class="nav-link" href="Users.aspx">
          <i class="fas fa-fw fa-table"></i>
          <span>Usuarios</span></a>
      </li>
    </ul>



    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="Dashboard.aspx">Inicio</a>
          </li>
          <li class="breadcrumb-item active">Agergar Porducto</li>
        </ol>

       <h1>NUEVO PRODUCTO</h1>
          <hr />
          <div class="row" >
        <div class="col-md-6">

             <label for="">Folio:</label>
					<asp:TextBox ID="txtFolio" runat="server"></asp:TextBox>
                  <br />
					<label for="">Nombre</label>
					<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                  <br />
					<label for="">Descripción:</label>
					<asp:TextBox ID="txtDesc" runat="server" Height="71px" TextMode="MultiLine" Width="188px"></asp:TextBox>
                  <br />
					<label for="">Precio</label>
					<asp:TextBox ID="txtPre" runat="server"></asp:TextBox>
                  <br />
                    <label for="">Imagen</label>
                    <asp:FileUpload ID="fupImgP" runat="server" OnDataBinding="fupImgP_DataBinding" />
                  <br />
                    <label for="">Largo</label>
					<asp:TextBox ID="txtLarg" runat="server"></asp:TextBox>
                  <br />
                    <label for="">Ancho</label>
					<asp:TextBox ID="txtAncho" runat="server"></asp:TextBox>
                 <br />
                    <label for="">Alto</label>
					<asp:TextBox ID="txtAlto" runat="server"></asp:TextBox>
                 <br />
                    <label for="">Material</label>
                    <asp:DropDownList ID="dplMaterial" runat="server"></asp:DropDownList>
    <br />
            <asp:Button ID="Button1" runat="server" Text="Insertar" class="btn btn-warning mt-3" OnClick="Button1_Click" />          

        </div>
        <div class="col-md-6">

            <asp:Image ID="imgPreview" whdth="100" runat="server" />

        </div>
      </div>
                   




      </div>

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Efelasoft 2019</span>
          </div>
        </div>
      </footer>

    </div>

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">¿De verdad te quieres ir?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Selecciono "Cerrar Sesion" esta seguro de cerrar sesión.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
            <asp:Button ID="CerrarSesionBtn" runat="server" Text="Cerrar Sesión" class="btn btn-primary" OnClick="CerrarSesionBtn_Click" />
        </div>
      </div>
    </div>
  </div>


        </div>


        </div>
    </form>


      
      <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>

</body>
</html>
