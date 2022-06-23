<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Verb Searcher</title>
  <!-- ICONO -->
  <link rel="icon" href="footage/favicon.ico" type="image/x-icon" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400&display=swap">
  <!-- Bootstrap core CSS -->
  <link href="mdb/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="mdb/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="mdb/css/style.min.css" rel="stylesheet">
  <style type="text/css">
    html, body, header, .view
    {
      font-family: 'Roboto Condensed', sans-serif;
      font-weight: 300;
      font-size: 15px;
      height: 100%;
      background-image: url('footage/fondo_02.jpg');
      background-repeat: repeat-y;
      background-size: cover;
      background-color: rgb(255,0,28);
    }

    .h4
    {
      font-family: 'Roboto Condensed', sans-serif;
      font-weight: 400;
    }

    @media (max-width: 740px)
    {
      html, body, header, .view
      {
        height: 1000px;
      }
    }

    @media (min-width: 800px) and (max-width: 850px)
    {
      html, body, header, .view
      {
        height: 650px;
      }
    }

    @media (min-width: 800px) and (max-width: 850px)
    {
      .navbar:not(.top-nav-collapse)
      {
        background: #1C2331!important;
      }
    }
  </style>
</head>

<body>

  <!-- CONTENIDO GENERAL <div class="d-flex justify-content-center" style="background-image: url('footage_img/fondo_01.jpg'); background-repeat: repeat-y; background-size: cover;"> -->
  <div class="d-flex justify-content-center">
    <!-- FLEXBOX -->
    <div class="d-flex">

      <!-- CONTENIDO -->
      <div class="container">
      
        <!-- ROW -->
        <div class="row">

          <!--COLUMNA CENTRAL-->
          <div class="col-sm-12 col-md-12 col-lg-12 mb-4 white-text text-center">

          <img src="footage/logo.png" class="img-fluid" width="300" alt="">
          <br>
          <input type="text" id="busqueda" name="busqueda" value="" autocomplete="off" onKeyUp="buscar();">
          <div id="resultado" class="text-white" name="resultado"></div>

          </div>
          <!--COLUMNA CENTRAL-->

        </div>
        <!-- ROW -->
      </div>
      <!-- CONTENIDO -->

    </div>
    <!-- FLEXBOX -->
  </div>
  <!-- CONTENIDO GENERAL -->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="mdb/js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="mdb/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="mdb/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="mdb/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript"></script>
  <script src="js/buscar.js"></script>
</body>

</html>