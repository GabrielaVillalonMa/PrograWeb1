<%-- 
    Document   : PerfilEdit
    Created on : 25 mar. 2023, 17:42:30
    Author     : Marco A Aguirre G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="imagenes/minbit_logo2.jpg">

    <title>Perfil Editar Usuario</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/blog/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Custom styles for this template -->
    <!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"> -->
    <!-- <link href="blog.css" rel="stylesheet"> -->
    <link href="basicSTYLE.css" rel="stylesheet">


    <style>
        body {margin:0;}
        [class*="navbar sticky-top  flex-md-nowrap p-0"]{
                padding: 1rem;
                background-color: #4e0048;
                
                color: #4d0050;
            }
    
    
        [class*="jumbotron p-3 p-md-5 text-white rounded"]{
            padding: 1rem;
            background-color: #4e0048;
            
            color: #4d0050;
        }

      
    
            [class*="row"]{
              font-family: var(--bs-body-font-family) !important;
            }

            [class*="navbar sticky-top  flex-md-nowrap p-0"]{
              font-family: var(--bs-body-font-family) !important;
            }

            
            
            .sidenav {
            height: 100%;
            width: 310px;
            position: fixed;
            z-index: 1;
            top: 50px;
            left: 0;
            background-color: #E4E4E4;
            overflow-x: hidden;
            padding-top: 20px;
            
            }
    
            .sidenav a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            font-family: var(--bs-body-font-family) !important;
            }
    
            @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
            
            }
    
            .sidenav-right {
            height: 100%;
            width: 310px;
            position: fixed;
            z-index: 1;
            top: 80px;
            left: 5;

            background-color: #E4E4E4;
            overflow-x: hidden;
            padding-top: 20px;
            }
    
            .sidenav-right a {
            padding: 6px 8px 6px 16px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            font-family: var(--bs-body-font-family) !important;
            }
    
            @media screen and (max-height: 450px) {
            .sidenav-right {padding-top: 15px;}
            .sidenav-right a {font-size: 18px;}
            
            }
    
            .btn-outline-primary {
            --bs-btn-color: #4e0048;
            --bs-btn-border-color: #4e0048;
            --bs-btn-hover-color: #888888;
            --bs-btn-hover-bg: #4e0048;
            --bs-btn-hover-border-color: #4e0048;
            --bs-btn-focus-shadow-rgb: 13, 110, 253;
            --bs-btn-active-color: #888888;
            --bs-btn-active-bg: #4e0048;
            --bs-btn-active-border-color: #4e0048;
            --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
            --bs-btn-disabled-color: #4e0048;
            --bs-btn-disabled-bg: transparent;
            --bs-btn-disabled-border-color: #4e0048;
            --bs-gradient: none;
            }
            
            .btn-outline-secondary {
            --bs-btn-color: #888888;
            --bs-btn-border-color: #ececec;
            --bs-btn-hover-color: #ececec;
            --bs-btn-hover-bg: #888888;
            --bs-btn-hover-border-color: #ececec;
            --bs-btn-focus-shadow-rgb: 13, 110, 253;
            --bs-btn-active-color: #ececec;
            --bs-btn-active-bg: #4e0048;
            --bs-btn-active-border-color: #4e0048;
            --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
            --bs-btn-disabled-color: #4e0048;
            --bs-btn-disabled-bg: transparent;
            --bs-btn-disabled-border-color: #4e0048;
            --bs-gradient: none;
            }
    
            [class*="btn btn-primary btn-sm btn-block"]{
          --bs-btn-color: #fff;
        --bs-btn-bg: #4e0048;
        --bs-btn-border-color: #888888;
        --bs-btn-hover-color: #fff;
        --bs-btn-hover-bg: #888888;
        --bs-btn-hover-border-color: #fff;
        --bs-btn-focus-shadow-rgb: 49, 132, 253;
        --bs-btn-active-color: #fff;
        --bs-btn-active-bg: #4e0048;
        --bs-btn-active-border-color: #4e0048;
        --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
        --bs-btn-disabled-color: #fff;
        --bs-btn-disabled-bg: #4e0048;
        --bs-btn-disabled-border-color: #4e0048;
        }
    
    
            .navbar {
            overflow: hidden;
            background-color: #4e0048;
            position: fixed;
            top: 0;
            width: 100%;
            }
    
            .navbar a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px; 
            text-decoration: none;
            /* font-size: 17px; */
            }
    
            .navbar a:hover {
            background: #ddd;
            color: black;
            }
    
        </style> 

<style>
    [class*="col"]{
        padding: 1rem;
        /* background-color: #E4E4E4; */
        border: 2px;
        color: #000000;
    }
    </style>   

</head>

<!-- Fixed navbar -->
<header>
    <nav class="navbar sticky-top  flex-md-nowrap p-0">
        <form action="DashVacio.jsp" method="get">
            <button class="btn">
                <img class="mb-8" src="imagenes/minbit_logo4.png" alt="" width="72" height="72">
                <!-- <a class="navbar-brand text-white" href="#">MinBit</a> -->
            </button>
        </form>


        <input class="form-control form-control-dark container-search" type="text" placeholder="Search" aria-label="Search">


        <ul class="navbar-nav px-3">

            <div class="btn-toolbar mb-2 mb-md-0">
                <div class="btn-group mr-2">
                    <form action="RegistLog.jsp" method="get">
                        <button class="btn btn-primary btn-sm btn-block" action="RegistLog.jsp">
                            <img src="imagenes/exit_button_w.png" alt="Exit" width="20" height="20">
                            Signout
                        </button>
                    </form>
                </div>
                <button class="btn btn-primary btn-sm btn-block dropdown-toggle">
                    <img src="imagenes/sun_button_w.png" alt="LightDarkMode" width="20" height="20">
                </button>
            </div>
            <!-- <li class="nav-item text-nowrap">
              <a class="nav-link" href="#">Sign out</a>
            </li> -->
        </ul>
    </nav>

</header>

<body>


    <div class="row">
        <!-- SIDEBAR LEFT -->
        <div class="col-md-2" style="position: relative; background-color: #E4E4E4;">
            <div class="row">
                <div class="sidenav">
                    <br>
                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Buscar publicaciónes por:</span>
                        <a class="d-flex align-items-center text-muted" href="#">
                            <span data-feather="plus-circle"></span>
                        </a>
                    </h6>
                    <ul class="nav flex-column mb-2">

                    <form>
  
                        <!-- Likes/Dislikes -->
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Likes y Dislikes
                            </a>

                            <div class="row-md-2">
                                <div class="col-md-7  container-card">
                                    <form>
                                        <input type="radio" id="html" name="fav_language" value="HTML">
                                        <label for="html">Más Likes</label><br>
                                        <input type="radio" id="css" name="fav_language" value="CSS">
                                        <label for="css">Más Dislikes</label>
                                    </form>
                                </div>
                            </div>
                        </li>

                        <!-- Categorias/Tags -->
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Categorías (Tags)
                            </a>
                            <div class="row">
                                <div class="col-md-7  container-card">
                                    <form>
                                        <input type="checkbox" id="discussion" name="discussion" value="Discussion">
                                        <label for="discussion"> Discusión</label><br>
                                        <input type="checkbox" id="videogames" name="videogames" value="Videogames">
                                        <label for="videogames"> Videojuegos</label><br>
                                        <input type="checkbox" id="photos" name="photos" value="Photos">
                                        <label for="photos"> Fotos</label><br>
                                        <input type="checkbox" id="videos" name="videos" value="Videos">
                                        <label for="videos"> Videos</label><br>
                                        <input type="checkbox" id="files" name="files" value="Files">
                                        <label for="files"> Archivos</label>
                                    </form>


                                </div>
                            </div>

                        </li>

                        <!-- Fecha -->
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Fecha
                            </a>

                            <div class="row">
                                <div class="col-md-9  container-card">
                                    <form>

                                        <label for="fechaANTES">Antes de: </label><br>
                                        <input  class="form-control" type="date" id="fechaANTES" name="fechaANTES">
                                        <div class="invalid-feedback">
                                            Ingrese una fecha valida.
                                        </div>


                                        <div class="mb-3">
                                            <label for="fechaDESP">Después de: </label><br>
                                            <input  class="form-control" type="date" id="fechaDESP" name="fechaDESP">
                                            <div class="invalid-feedback">
                                                Ingrese una fecha valida.
                                            </div>

                                    </form>

                                </div>
                            </div>



                        </li>
                        
                        

                        <input class="btn btn-primary btn-sm btn-block" type="submit" id="bucarFiltro" value="Buscar">
                    </form>

                    </ul>
                </div>

            </div>
        </div>

        <!-- MIDDLE -->
        
        <div class="col-md-8">
            <br />
            <div class="row">
                
                <div class="col-sm-12"  >
                    <div class="album py-5 bg-light" >
                     
                <!-- HEADER -->
                <div class="jumbotron p-3 p-md-5 text-white rounded ">
                                    
                    <div class="row">
                        <div style="">
                            <img src="" class="round_img" alt="Profile Picture" width="200" height="200">
                        </div>
                        <div>
                            <h1 class="display-4 font-italic">Nombre de Usuario </h1>
                            <small class="text">@username</small>

                            <div class="form-group">
                                        <!-- <label for="comment">Comment:</label> -->
                                        <textarea class="form-control" rows="5" placeholder="Descripción del perfil" id="comment"></textarea>
                                    </div>
                            
                            <div>
                                
                                
                                <input type="file" id="real-file" hidden="hidden"/>
                                <button type="button" id="custom-button" class="btn btn-primary btn-sm btn-block" >Cambiar Foto</button>
                                <span id="custom-text">Aún no se elige foto.</span>
                                
                                <script type="text/javascript">
                                    
                                    const realFileBtn = document.getElementById("real-file");
                                    const customBtn = document.getElementById("custom-button");
                                    const customTxt = document.getElementById("custom-text");
                                    
                                    
                                     customBtn.addEventListener("click", function(){
                                         realFileBtn.click();
                                        });
                                        
                                     realFileBtn.addEventListener("change", function(){
                                         if(realFileBtn.value){
                                             customTxt.innerHTML = realFileBtn.value;
                                         }
                                         else{
                                             customTxt.innerHTML = "No se eligió una imagen";
                                         }
                                     });
                                
                                </script>
                                
                               
                                
                                
                                
                            </div>
                        </div>
                    </div>

                </div>

                <!-- CAMBIAR INFO -->

                  <div class="container-card-md-10">
                <main role="main" class="container">
                    <div class="row">
                        
                        <div class="col-md-8 blog-main" style="width:100%">
                            <br>
                            <h3 class="pb-3 mb-4 font-italic border-bottom">
                                Cambiar información personal
                            </h3>
                            

                            <form class="needs-validation"  >
            
                                    <!-- Name -->
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                      <label for="nombreInicioSes">Nombre(s)</label>
                                      <input type="text" class="form-control" id="nombreInicioSes" name="nombreRegist" placeholder="" value="" required>
                                      <div class="invalid-feedback">
                                        Nombre(s) son obligatorios.
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                      <label for="apellidoInicioSes">Apellido(s)</label>
                                      <input type="text" class="form-control" id="apellidoInicioSes" name="apellidoRegist" placeholder="" value="" required>
                                      <div class="invalid-feedback">
                                          Apellidos son obligatorios.
                                      </div>
                                    </div>
                                </div>

                                <!-- Username -->
                                <div class="mb-3">
                                  <label for="usernameInicioSes">Nombre de cuenta</label>
                                  <div class="input-group">
                                    <div class="input-group-prepend">
                                      <span class="input-group-text">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="usernameInicioSes" name="usernameRegist" placeholder="Nombre de cuenta" required>
                                    <div class="invalid-feedback" style="width: 100%;">
                                      Tu nombre de cuenta es obligatorio.
                                    </div>
                                  </div>
                                </div>

                                <!-- Email -->
                                <div class="mb-3">
                                  <label for="correoInicioSes">Email </label>
                                  <input type="email" class="form-control" id="correoInicioSes" name="correoRegist" placeholder="you@example.com" required>
                                  <div class="invalid-feedback">
                                    Correo electrónico es obligatorio.
                                </div>

              
            </div>

                                <!-- Fecha de nacimiento-->
                                <divst>

                                    <label for="birthdateRegist">Fecha de nacimiento</label>                     
                                   <input  class="form-control" type="date" id="birthdate" name="birthdateRegist">
                                   
                                        <div class="invalid-feedback">
                                            Ingrese una fecha valida.
                                        </div>

                                    <br>

                                    
                                </divst>
             
                                <input class="btn btn-primary btn-sm btn-block" type="submit" value="Cambiar" action="PerfilPropioVacio.jsp">
                                
                            </form>
                            
                            
                            <div class="col-md-8 blog-main" style="width:100%">
                            <form action="PerfilPropioVacio.jsp">
                                <input class="btn btn-primary btn-sm btn-block" type="submit" value="Cancelar" >
                            </form>
                            </div>
                                                    
                            
                        
             <br>


                        </div><!-- /.perfil-main -->
                        


                    </div><!-- /.row -->

                </main><!-- /.container -->

                        </div>
                  <!---->




                    </div> 

                    
                </div>

                

            </div>
        </div>


         <!-- SIDEBAR RIGHT -->
         <div class="col-md-2" style="position: relative">
            <br />
            <div class="row">
                <div class="sidenav-right">
                    <ul class="nav flex-column">
                        <li class="nav-item">

                            <!-- INFO ACTUAL -->
                            <aside class="col-md-12 blog-sidebar">
                                <div class="p-3 mb-3 bg-light rounded">
                                    
                                    <form action="PerfilPropioVacio.jsp">
                                        <img src="" class="round_img" c lass="a_center" alt="Profile Picture" width="30" height="30" >
                                        <button class="btn"> Perfil </button>
                                    </form>
                                    
                                    <form action="PerfilEditVacio.jsp" method="get">

                                        
                                    
                                        <h6 class="font-italic"><b>Información Actual del usuario</b></h6>
                                    <p class="firstName" class="lastName">Nombre: <em>Nombre Apellido</em> </p>
                                    <p class="username">Username: <em>username</em> </p>
                                    <p class="email" id="email">Email: <em>you@example.com</em> </p>

                                    <div class="btn-group" >
                                        <button class="btn btn-primary btn-sm btn-block" type="submit">Editar Perfil</button>
                                        <!-- <form>
                                        <input type="image" src="imagenes/camera_button.png" alt="Submit" width="48" height="48">
                                        <input type="text" alt="Submit">
                                        </form> -->
                                    </div>

                                    </form>
                                    

                            </aside><!-- /.blog-sidebar -->

                        </li>


                    </ul>

                </div>

            </div>
        </div>






        </main>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2023 MinBit</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacidad</a></li>
            <li class="list-inline-item"><a href="#">Terminos</a></li>
            <li class="list-inline-item"><a href="#">Atención al Cliente</a></li>
        </ul>
    </footer>
    </div>




    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>

     <!-- Validaciones fechas -->
      <script>

        document.getElementById('birthdate').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
        document.getElementById('fechaANTES').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
       
       
       var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0');
    var yyyy = today.getFullYear();

    today = yyyy + '-' + mm + '-' + dd;
    $('#fechaDESP').attr('min',today);

        </script>
    
    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
        feather.replace()
    </script>

    <!-- Album cards -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>

    <script>
        var ctx = document.getElementById("myChart");
        var myChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                datasets: [{
                    data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
                    lineTension: 0,
                    backgroundColor: 'transparent',
                    borderColor: '#007bff',
                    borderWidth: 4,
                    pointBackgroundColor: '#007bff'
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: false
                        }
                    }]
                },
                legend: {
                    display: false,
                }
            }
        });
    </script>
</body>
</html>