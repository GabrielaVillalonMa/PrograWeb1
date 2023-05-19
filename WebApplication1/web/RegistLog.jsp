<%-- 
    Document   : RegistLog
    Created on : 25 mar. 2023, 17:43:11
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

    <title>Registration and Sign-in</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/checkout/">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Custom styles for this template -->
    <link href="form-validation.css" rel="stylesheet">
    <link href="signin.css" rel="stylesheet">

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
  
          [class*="btn btn-primary btn-lg btn-block"]{
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
  

          [class*="col"]{
      padding: 1rem;
      /* background-color: #E4E4E4; */
      border: 2px;
      color: #000000;
  }
      </style> 

      
     <!-- <style>
      [class*="col"]{
          padding: 1rem;
          background-color: #ffffff;
          border: 2px solid #8da6ad;
          color: #000000;
      }
      </style>   -->
  </head>

  

  <header>
    <nav class="navbar sticky-top  flex-md-nowrap p-0">
        <form action="CheckUser" method="get">
            <button class="btn">
                <img class="mb-8" src="imagenes/minbit_logo4.png" alt="" width="72" height="72">
                <!-- <a class="navbar-brand text-white" href="#">MinBit</a> -->
            </button>
        </form>

        <ul class="navbar-nav px-3">
          <div class="row">
            <ul class="navbar-nav mr-auto">
              <!-- <li class="nav-item">
                <a class="nav-link disabled" href="#">Sign-in</a>
              </li> -->
            </ul>
            <form class="form-signin mt-2 mt-md-0 container-eft" action="CheckUser" method="POST">
              <div class="row">
                <div class="col-md-2">
                 
                </div>
                  <div class="col-md-4">
                    <input class="form-control mr-sm-2" type="text" id="correoLogInicioSes" name="correoLogInicioSes" placeholder="Email" aria-label="Email" value="" required>
                  </div>
                  <div class="col-md-4">
                    <input class="form-control mr-sm-2" type="password" id="passwordLogInicioSes" name="passwordLogInicioSes" placeholder="Password" aria-label="Password" value="" required>
                  </div>
                  <div class="col-md-2">
                    <button class="btn btn-primary btn-sm btn-block" href="DashBoard.jsp">Log in</button>
                  </div>
          
                   
                  
              </div>
                
                <div class="invalid-feedback">
                    Ingrese un email/contraseña validos.
                
               
                </div>
                    
    
            </form>
          </div>
           
        </ul>
    </nav>

</header>


  <body class="bg-light">


      
      
    <!-- Registration
    ================================================== -->
    <div class="container">
      <div class="py-5 text-center mx-auto mb-4">
         
        <br><br><br>
        <h2></h2>
        
      </div>
       
      <div class="row">
       
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">Crear usuario nuevo</h4>
          <form class="needs-validation"  method="post" onsubmit="return checkPassword()" action="AddUser">
            
              
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

            

            <!-- Password -->
            <div class="mb-3">

              <form action="/action_page.php">
                <label for="passwordInicioSes">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña"  value="" required
                pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                title="Debe de tener al menos un número, una letra Mayúscula y Minúscula, y al menos 8 letras">
                <div class="invalid-feedback">
                  Contraseña es obligatorio.
              </div>
               

            </div>
            <!-- Password Verification-->
            <div class="mb-3">
                <form action="/action_page.php">
              <label for="passwordInicioSes">Verificación de contraseña</label>
              <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Verificación Contraseña"  value="" required
              pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
              title="Debe de tener al menos un número, una letra Mayúscula y Minúscula, y al menos 8 letras">
              <div class="invalid-feedback">
                Verificación de contraseña es obligatorio.
            </div>
              <error id="alert"></error>

            </div>

           <!-- Fecha de nacimiento-->
                <divst>

                    <label for="birthdate">Fecha de nacimiento</label>
                    <input class="form-control" type="date" id="birthdate" name="birthdateRegist">
                    <script>


                        document.getElementById('birthdate').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];



                    </script>

                    <div class="invalid-feedback">
                        Ingrese una fecha valida.
                    </div>

                </divst>
           
            <br>
             <input class="btn btn-primary btn-sm btn-block" type="submit"  value="Crear cuenta" id="submitButton">
            <br>
             
            
            
          </form>
        </div>
      </div>

      <!-- Footer -->
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
    
 
    <script type="text/javascript">
                      function checkPassword(){
                          var password = document.getElementById("password").value;
                          var confirmPassword = document.getElementById("confirmPassword").value;
                          debugger;
                          
                          if(password !== confirmPassword){
                              document.getElementById("alert").textContent ="Password does not match";
                              return false;
                          }
                      }
                      
                  </script>    
    
    
    
    
    
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
</html>



