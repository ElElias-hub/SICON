<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SICON.Pll.SICON.Index1" %>

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
        <a class="nav-link" href="Index.aspx">Inicio
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AboutUs.aspx">Sobre nosotros</a>
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

          <asp:Button ID="UpdateBtn" runat="server" Text="Editar Perfil" class="dropdown-item" OnClick="UpdateBtn_Click"/>
          <asp:Button ID="ControlBtn" runat="server" Text="Panel de control" class="dropdown-item" OnClick="ControlBtn_Click"/>
            
            <asp:Button ID="IniciarBtn" runat="server" Text="Inciar Sesión" class="dropdown-item" OnClick="IniciarBtn_Click"/>


            <div class="dropdown-divider"></div>

        <asp:Button ID="CerrarSesionBtn" runat="server" Text="Cerrar Sesión" class="dropdown-item" OnClick="CerrarSesionBtn_Click"/>

        </div>
      </li>
    </ul>
  </div>
</nav>
<!--/.Navbar -->


<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <asp:Image ID="ImageSlide01" class="d-block w-100" src="../img/01.jpg" alt="First slide" runat="server" Width="200px" />
    </div>
    <div class="carousel-item">
        <asp:Image ID="ImageSlide02" class="d-block w-100" src="../img/13.jpg" alt="Second slide" runat="server" Width="200px" />
    </div>
    <div class="carousel-item">
        <asp:Image ID="ImageSlide03" class="d-block w-100" src="../img/14.jpg" alt="Third slide" runat="server" Width="200px" />

    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>




            <div class="py-5" style="background-image: linear-gradient(to bottom, rgba(0, 0, 0, .75), rgba(0, 0, 0, .75)), url(https://static.pingendo.com/cover-bubble-dark.svg); background-position: center center, center center;  background-size: 100%, 100%;  background-repeat: repeat, repeat;" >
    <div class="container">
      <div class="row">
        <div class="text-center mx-auto col-md-12">
          <h1 class="text-light">Conoce nuestros proyectos</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 p-3">
          <div class="card text-center text-dark">
            <div class="card-body p-4">
              
              <h3>Proyecto One</h3>
              <p class="my-3">Among the tall grass by the trickling stream; and, as I lie close to the earth.</p>
                <asp:Image ID="CardImg01" class="card-img-top" src="../img/04.jpg" alt="Card image cap" runat="server" />


              <h2>  </h2> <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>

        <div class="col-md-4 p-3">
          <div class="card text-center text-dark">
            <div class="card-body p-4">
              <h3>Proyecto Two</h3>
              <p class="my-3">I am alone, and feel the charm of existence in this spot.</p>
                <asp:Image ID="CardImg02" class="card-img-top" src="../img/03.jpg" alt="Card image cap" runat="server" />
              <h2> </h2> <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
        <div class="col-md-4 p-3">
          <div class="card text-center text-dark">
            <div class="card-body p-4">
              <h3>Proyecto Three</h3>
              <p class="my-3">The breath of that universal love which bears and sustains us.</p>    
                <asp:Image ID="CardImg03" class="card-img-top" src="../img/11.jpg" alt="Card image cap" runat="server" />
              <h2>  </h2> <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<div class="py-5"  style="background-image: url(../img/07.jpg);position:relative;background-position:center center;background-size:cover;">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-8 text-center">
          <h1>¡Mira nuestro catalogo!</h1>
          <p class="mb-4">O my friend -- but it is too much for my strength -- I sink under the weight of the splendour of these visions!</p>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-3 col-6 p-3">
          <div class="card"> 
              <asp:Image ID="CardImg04" class="card-img-top" src="../img/06.jpg" alt="Card image cap" runat="server" />
            <div class="card-body">
              <h5 class="card-title"> <b>Johann Goethe</b> </h5>
              <p class="card-text">CEO &amp; Founder</p>
            <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6 p-3">
          <div class="card"> 
              <asp:Image ID="CardImg05" class="card-img-top" src="../img/08.jpg" alt="Card image cap" runat="server" />
            <div class="card-body">
              <h5 class="card-title"> <b>George Wolf</b> </h5>
              <p class="card-text">CFO</p>
                <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6 p-3">
          <div class="card"> 
              <asp:Image ID="CardImg06" class="card-img-top" src="../img/09.jpg" alt="Card image cap" runat="server" />
            <div class="card-body">
              <h5 class="card-title"> <b>Jason Weismann</b> </h5>
              <p class="card-text">CTO</p>
                <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-6 p-3">
          <div class="card"> 
              <asp:Image ID="CardImg07" class="card-img-top" src="../img/12.jpg" alt="Card image cap" runat="server" />
            <div class="card-body">
              <h5 class="card-title"> <b>Tyson von Ginzburg</b> </h5>
              <p class="card-text">Sales VP</p>
                <a class="btn btn-warning mt-3" href="#">Ver más</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

            
  <div class="py-5 bg-dark" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe src="https://www.youtube.com/embed/B7lrp4QaHRQ?autoplay=0" allowfullscreen="" class="embed-responsive-item"></iframe>
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
