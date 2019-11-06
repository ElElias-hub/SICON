<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="SICON.Pll.SICON.Catalog1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

   <link rel='icon' type='image/png' href='img/logo.png'>
    <title> S I C O N </title>

<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.1.3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <script src="../js/jquery-3.3.1.slim.js" type="text/javascript"></script>

      <!-- Script: Animated entrance -->
  <script src='https://d33wubrfki0l68.cloudfront.net/js/fe6311b3c294cba469a3939f21603640522c41e5/aquamarine/js/animate-in.js'></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div>


            
            <!--Navbar -->
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark transparent fixed-top">
     <p class="navbar-brand mb-0 text-white"><i class="fa d-inline fa-lg fa-stop-circle"></i> S I C O N </p>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
    aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Inicio
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Sobre nosotros</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">Catalogo
        </a>
        <div class="dropdown-menu dropdown-default" aria-labelledby="navbarDropdownMenuLink-333">
          <a class="dropdown-item" href="Catalog.aspx">Proyectos</a>
          <a class="dropdown-item" href="Catalog.aspx">Trabajos</a>
        </div>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto nav-flex-icons">
      <li class="nav-item">
        <a class="nav-link waves-light">
          <i class="fab fa-facebook"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link waves-light">
          <i class="fab fa-whatsapp"></i>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right dropdown-default"
          aria-labelledby="navbarDropdownMenuLink-333">

          <asp:Label ID="UserLbl" runat="server" Text="." class="dropdown-item"></asp:Label>
            <div class="dropdown-divider"></div>

          <asp:Button ID="UpdateBtn" runat="server" Text="Editar Perfil" class="dropdown-item"/>
          <asp:Button ID="ControlBtn" runat="server" Text="Panel de control" class="dropdown-item"/>
            
            <asp:Button ID="IniciarBtn" runat="server" Text="Inciar Sesión" class="dropdown-item" />


            <div class="dropdown-divider"></div>

        <asp:Button ID="CerrarSesionBtn" runat="server" Text="Cerrar Sesión" class="dropdown-item" />

        </div>
      </li>
    </ul>
  </div>
</nav>

<!--/.Navbar -->
            <br />
            <br />

            <div class="">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-4 col-md-4 col-12" >
          <ul class="navbar-nav">
            <%--<li class="nav-item dropdown p-2">
              <button class="btn dropdown-toggle btn-danger" data-toggle="dropdown"> MUJER </button>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="CatalogoM.html">Blusa</a>
                <a class="dropdown-item" href="CatalogoM.html">Camisa</a>
              </div>
            </li>
            <li class="nav-item dropdown p-2">
              <button class="btn dropdown-toggle btn-danger" data-toggle="dropdown"> HOMBRE </button>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="CatalogoH.html">Blusa</a>
                <a class="dropdown-item" href="CatalogoH.html">Camisa</a>
              </div>
            </li>
            <li class="nav-item dropdown p-2">
              <button class="btn dropdown-toggle btn-danger" data-toggle="dropdown"> TENDENCIA </button>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="LineaEspecial.html">Boos 2018</a>
                <a class="dropdown-item" href="LineaEpecialH.html">Another 2018</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Jeans Crown</a>
              </div>
            </li>
            <li class="nav-item dropdown p-2">
              <button class="btn dropdown-toggle btn-danger" data-toggle="dropdown"> REBAJAS </button>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item disabled" href="#">Hombre</a>
                <a class="dropdown-item disabled" href="#">Mujer</a>
              </div>
            </li>--%>
          </ul>
          <div class="card">
            <div class="card-body">
              <h4>Colors</h4>
              <hr>
              <button class="btn btn-icon " type="button" style="background:#4286f4">·</button>
              <button class="btn btn-icon " style="background:#2acc4b" type="button">·</button>
              <button class="btn btn-icon " type="button" style="background:#343534">·</button>
              <button class="btn btn-icon " type="button" style="background:#5f605f">·</button>
              <button class="btn btn-icon " type="button" style="background:#929392">·</button>
              <br><br>
              <button class="btn btn-icon " type="button" style="background:#9e8045">·</button>
              <button class="btn btn-icon " style="background:#d3d3d3" type="button">·</button>
              <button class="btn btn-icon " type="button" style="background:#6b6666">·</button>
              <button class="btn btn-icon " type="button" style="background:#999797">·</button>
              <button class="btn btn-icon " type="button" style="background:#923476">·</button>
            </div>
          </div>
          <br>
          <%--<div class="card">
            <div class="card-body">
              <h4>SIZE</h4>
              <hr>
              <button class="btn btn-icon rounded btn-danger" type="button">XS</button>
              <button class="btn btn-icon rounded btn-danger" type="button"> S </button>
              <button class="btn btn-icon rounded btn-danger" type="button"> M </button>
              <button class="btn btn-icon rounded btn-danger" type="button"> L </button>
              <button class="btn btn-icon rounded btn-danger" type="button">XL</button>
            </div>
          </div>--%>
          <br>
          <div class="card" >
            <div class="card-body">
              <h4>PRICE</h4>
              <hr>
              <h5 class="text-danger"><b>PRICE</b></h5>
              <input type="range" min="50" max="5000" class="slider form-control-lg" id="myRange" value="500"> </div>
          </div>
        </div>
        <div class="col-md-8 col-12 bg-dark">
          <div class="row">
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="img/07.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">MESA</li>
                  <li class="list-group-item"></li>
                  <li class="list-group-item">$79.90</li>
                </ul>
                <div class="card-body">
                  <a href="Product.aspx" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="Producto.php" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                  <!--<a href="#" class="card-link">Another link</a>-->
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="row">
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card">
                <img class="card-img-top" src="https://pingendo.com/assets/photos/wireframe/photo-1.jpg" alt="Card image cap">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-shopping-bag"></i>
                  </a>
                  <a href="#" class="btn btn-outline-warning">
                    <i class="fas fa-question-circle"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 




              <div class="py-5 text-white" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg);  background-position: center center, center center;  background-size: cover, cover;  background-repeat: repeat, repeat;">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-center align-self-center p-4">
          <p class="mb-5"> <strong>Pingendo Inc.</strong> <br>795 Folsom Ave, Suite 600 <br>San Francisco, CA 94107 <br> <abbr title="Phone">P:</abbr> (123) 456-7890 </p>
          <div class="row">
            <div class="col-md-12 d-flex align-items-center justify-content-around"> 
                <a href="#">
                <i class="fab fa-facebook"></i>
              </a> <a href="#">
                <i class="fab fa-whatsapp"></i>
              </a> <a href="#">
                <i class="fas fa-address-card"></i>
              </a> 
            </div>
          </div>
        </div>
        <div class="col-md-6 p-0"> <iframe width="100%" height="350" src="https://maps.google.com/maps?hl=en&amp;q=New%20York&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" scrolling="no" frameborder="0"></iframe></div>
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
