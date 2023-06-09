<%-- 
    Document   : DashVacio
    Created on : 15 may 2023, 7:21:59
    Author     : Gabriela Saraí Villalón Martínez
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="imagenes/minbit_logo2.jpg">

        <title>Dashboard Minbit</title>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/dashboard/">

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">


        <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet">

        <style>
            body {
                margin:0;
            }
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
                .sidenav {
                    padding-top: 15px;
                }
                .sidenav a {
                    font-size: 18px;
                }

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
                .sidenav-right {
                    padding-top: 15px;
                }
                .sidenav-right a {
                    font-size: 18px;
                }

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

            img.selected {
                background-color: gray;
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
            .category {
                list-style-type: none;
                margin: 25px 0 0 0;
                padding: 0;
            }

            .category li {
                float: left;
                margin: 0 0px 0 0;
                width: 100px;
                height: 30px;
                position: relative;
                text-align: center;
                vertical-align: middle;
            }

            .category label,
            .category input {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
            }

            .category input[type="radio"] {
                opacity: 0.01;
                z-index: 100;
            }

            .category input[type="radio"]:checked+label,
            .Checked+label {
                background: #888888;
            }

            .category label {
                padding: 5px;
                border: 1px solid #CCC;
                cursor: pointer;
                z-index: 90;
                vertical-align: middle;
            }

            .category label:hover {
                background: #DDD;
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

        <!--   <style>
             [class*="col"]{
                 padding: 1rem;
                 background-color: #ffffff;
                 border: 2px solid #8da6ad;
                 color: #000000;
             }
             </style>    -->


    </head>


    <!-- Fixed navbar -->
    <header>
        <nav class="navbar sticky-top  flex-md-nowrap p-0 ">
            <form action="DashVacio.jsp" method="get"> 
                <div class="row">
                    <button class="btn">
                        <img class="mb-8" src="imagenes/minbit_logo4.png" alt="" width="72" height="72">

                        <!-- <a class="navbar-brand text-white" href="#">MinBit</a>   -->
                    </button>


                </div>

            </form> 



            <ul class="navbar-nav px-3">

                <div class="btn-toolbar mb-2 mb-md-0">
                    <div class="btn-group mr-2">
                        <form action="ExitAccount" method="Post">
                            <button class="btn btn-primary btn-sm btn-block">
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


    <body >


        <div class="row">
            <%@ page import="java.util.List" %>
            <%@ page import="java.util.ArrayList" %>
            <%@ page import="Classes.Publicacion" %>
            <%@ page import="Classes.User" %>
            <%
               List<Publicacion> publications = new ArrayList<>();
               publications = (List<Publicacion>) request.getAttribute("publicaciones");
                int category=0;
                
            List<User> usuarios = new ArrayList<>();
               usuarios = (List<User>) request.getAttribute("usuarioActual");

            %>

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


                            <form action="FancySearch" method="post" >

                                <!--Search -->
                                <li>
                                    <a class="nav-link" href="#">
                                        <span data-feather="file-text"></span>
                                        Search 
                                    </a>
                                    <input class="form-control form-control-dark container-search " name="search" type="text" placeholder="Search" aria-label="Search">

                                </li>

                                <!-- Categorias/Tags -->
                                <li class="nav-item">

                                    <a class="nav-link" href="#">
                                        <span data-feather="file-text"></span>
                                        Categorías (Tags)
                                    </a>
                                    <div class="row">
                                        <div class="col-md-7  container-card">

                                            <input type="checkbox" id="discussion" name="discussion" value="1">
                                            <label for="discussion"> Discusión</label><br>
                                            <input type="checkbox" id="videogames" name="videogames" value="2">
                                            <label for="videogames"> Videojuegos</label><br>
                                            <input type="checkbox" id="photos" name="photos" value="3">
                                            <label for="photos"> Fotos</label><br>
                                            <input type="checkbox" id="videos" name="videos" value="4">
                                            <label for="videos"> Videos</label><br>
                                            <input type="checkbox" id="files" name="files" value="5">
                                            <label for="files"> Archivos</label>



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


                                            <label for="fechaANTES">Antes de: </label><br>
                                            <input  class="form-control" type="date" id="fechaANTES" name="fechaANTES">
                                            <div class="invalid-feedback">
                                                Ingrese una fecha valida.
                                            </div>


                                            <div class="mb-3">
                                                <label for="fechaDESP">Después de: </label><br>
                                                <input  class="form-control" type="date" id="fechaDESP" name="fechaDESP" >
                                                <div class="invalid-feedback">
                                                    Ingrese una fecha valida.
                                                </div>



                                            </div>
                                        </div>



                                </li>



                                <input class="btn btn-primary btn-sm btn-block" type="submit" id="bucarFiltro" value="Buscar" href="RegistLog.jsp">

                            </form>

                        </ul>
                    </div>

                </div>
            </div>



            <!-- MIDDLE -->
            <div class="col-md-8" >
                <div class="row">
                    <div class="col-sm-12 center" > <br>
                        <!-- <h1 class="h2">Dashboard</h1> -->
                    </div>
                    <div class="col-sm-12"  >
                        <div class="album py-5 bg-light" >


                            <!-- Publicar-->
                            <div class="container-card">
                                <div class="card mb-4 box-shadow" >
                                    <form action="CrearPubli" method="post" enctype="multipart/form-data">

                                        <!-- Card Upper -->
                                        <div class="container-md align-items-center" >
                                            <div class="row">
                                                <div class="col-sm-2" >


                                                    <button action="PerfilPropioVacio.jsp"class="btn">
                                                        <img  src="data:image/jpeg;base64, <%= session.getAttribute("ImageData") %>"  class="round_img" c lass="a_center" alt="Profile Picture" width="72" height="72"  >
                                                    </button>

                                                </div>

                                                <div class="col-md-10">
                                                    <p class="card-text"><b><%= session.getAttribute("Nombr")  %> <%= session.getAttribute("Apellido")  %> </b><br>
                                                        <small class="text">@<%= session.getAttribute("User") %> </small></p>
                                                    <div class="container">
                                                        <div class="row justify-content-center">


                                                            <ul class="category">
                                                                <li>
                                                                    <input type="radio" id="Pdiscusion" name="CatInput" value="1" />
                                                                    <label for="Pdiscusion"><img src="imagenes/write_button.png" alt="Like" width="20" height="20" href="#Discusion"></label>
                                                                </li>
                                                                <li>
                                                                    <input type="radio" id="Pvideojuegos" name="CatInput" value="2" />
                                                                    <label for="Pvideojuegos"><img src="imagenes/control_button.png" alt="Like" width="20" height="20" href="#VideoJuegos"></label>
                                                                </li>
                                                                <li>
                                                                    <input type="radio" id="Pfotos" name="CatInput" checked="checked" value="3" />
                                                                    <label for="Pfotos"><img src="imagenes/camera_button.png" alt="Like" width="20" height="20" href="#Fotos"></label>
                                                                </li>
                                                                <li>
                                                                    <input type="radio" id="Pvideos" name="CatInput" value="4" />
                                                                    <label for="Pvideos"><img src="imagenes/video_button.png" alt="Like" width="20" height="20" href="#Videos"></label>
                                                                </li>
                                                                <li>
                                                                    <input type="radio" id="Parchivos" name="CatInput" value="5" />
                                                                    <label for="Parchivos"><img src="imagenes/folder_button.png" alt="Like" width="20" height="20" href="#Archivos" ></label>
                                                                </li>

                                                            </ul>


                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>

                                        <!--input buttons -->

                                        <div class="form-group">
                                            <!-- <label for="comment">Comment:</label> -->
                                            <textarea class="form-control" rows="5" placeholder="Write a bit?" id="comment" name="Pcontenido"></textarea>
                                        </div>
                                        <input class="btn btn-primary btn-sm btn-block" type="submit" id="publicar" value="Publicar" href="DashVacio.jsp">
                                        <input type="file" id="myfile" name="myfile">

                                    </form>
                                </div>


                            </div>




                            <% for (Publicacion publication : publications) { %>

                            <!-- Publicado-->
                            <div class="container-card">
                                <div class="card mb-4 box-shadow">


                                    <!-- Card Upper -->
                                    <div class="container-md align-items-center">
                                        <div class="row">
                                            <div class="col-sm-2">
                                                <form action="PerfilAjenoVacio.jsp" method="get">

                                                    <button class="btn">
                                                        <img  src="data:image/jpeg;base64, <%= publication.Dueno.ImageData %>"  class="round_img" c lass="a_center" alt="Profile Picture" width="72" height="72"  >
                                                    </button>
                                                </form>
                                            </div>

                                            <div class="col-md-10">
                                                <p class="card-text"><b><%= publication.Dueno.Nombre  %> <%= publication.Dueno.Apellido  %> </b><br>
                                                    <small class="text">@<%= publication.Dueno.User %> </small></p>
                                                <div class="container">
                                                    <div class="row justify-content-center">
                                                        <ul class="category" >

                                                            <% category = publication.Categoria;%>

                                                            <% if (category== 1) { %>
                                                            <li  >
                                                                <input  type="radio" id="discusionP" checked="checked" disabled/>
                                                                <label for="discusionP"><img  src="imagenes/write_button.png" alt="Like" width="20" height="20" ></label>
                                                            </li>
                                                            <%}else{%>                    
                                                            <li> 
                                                                <input type="radio" id="discusionP"   disabled/>
                                                                <label for="discusionP"><img  src="imagenes/write_button.png" alt="Like" width="20" height="20" ></label>
                                                            </li>
                                                            <%}%>
                                                            <% if(category==2) { %>
                                                            <li class="selected">
                                                                <input   type="radio" id="videojuegosP"checked="checked" disabled/>
                                                                <label   for="videojuegosP"><img src="imagenes/control_button.png" alt="Like" width="20" height="20"  href="#VideoJuegos" id="2" value="2"></label>
                                                            </li>
                                                            <%}else{%> 
                                                            <li>
                                                                <input type="radio" id="videojuegosP"  disabled/>
                                                                <label for="videojuegosP"><img src="imagenes/control_button.png" alt="Like" width="20" height="20" href="#VideoJuegos" id="2" value="2"></label>
                                                            </li>
                                                            <%}%>

                                                            <% if (category==3) { %>
                                                            <li >
                                                                <input type="radio" id="fotosP" checked="checked" disabled/>
                                                                <label   for="fotosP"><img src="imagenes/camera_button.png" alt="Like" width="20" height="20" href="#Fotos" id="3" value="3"></label>
                                                            </li>
                                                            <%}else{%> 
                                                            <li>
                                                                <input type="radio" id="fotosP"  disabled/>
                                                                <label for="fotosP"><img src="imagenes/camera_button.png" alt="Like" width="20" height="20" href="#Fotos" id="3" value="3"></label>
                                                            </li>
                                                            <%}%>

                                                            <% if (category ==4) { %>
                                                            <li  >
                                                                <input  type="radio" id="videosP"  checked="checked" disabled/>
                                                                <label   for="videosP"><img  src="imagenes/video_button.png" alt="Like" width="20" height="20" href="#Videos" id="4" value="4"></label>
                                                            </li>
                                                            <%}else{%> 
                                                            <li>
                                                                <input type="radio" id="videosP" disabled/>
                                                                <label for="videosP"><img src="imagenes/video_button.png" alt="Like" width="20" height="20" href="#Videos" id="4" value="4"></label>
                                                            </li>
                                                            <%}%>

                                                            <% if(category ==5) { %>

                                                            <li  >
                                                                <input  type="radio" id="archivosP" checked="checked" disabled/>
                                                                <label   for="archivosP"><img  src="imagenes/folder_button.png" alt="Like" width="20" height="20" href="#Archivos" id="5" value="5"></label>
                                                            </li>
                                                            <%}else{%> 

                                                            <li>
                                                                <input type="radio" id="archivosP"   disabled/>
                                                                <label for="archivosP"><img src="imagenes/folder_button.png" alt="Like" width="20" height="20" href="#Archivos" id="5" value="5"></label>
                                                            </li>
                                                            <%}%>



                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                    </div>

                                    <!--Card publication 1 comment -->
                                    <div class="card-body">
                                        <p class="card-text"><%= publication.Content  %></p>
                                        <%//if(publication.Content)%>
                                        <img src="" alt="Thumbnail" class="center">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-sm btn-outline-secondary"><img src="imagenes/like_button.png" alt="Like" width="20" height="20"></button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary"><img src="imagenes/dislike_button.png" alt="Dislike" width="20" height="20"></button>
                                                <button type="button" class="btn btn-sm btn-outline-secondary">Comentarios</button>
                                            </div>
                                            <small class="text-muted"></small>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <!---->
                            <% } %>


                            <!--PAGINATION -->


                            <nav class="blog-pagination center">
                                <%  
   String paginacionStr = (String) request.getAttribute("Paginas");
   int paginacion = Integer.parseInt(paginacionStr);                             

                                %> 

                                <nav class="blog-pagination center">
                                    <% for (int i=0; i<paginacion; i++) { %>
                                    <!-- <button class="btn btn-outline-primary" href="#">1</button> -->
                                    <td><a href="Pagina?p=<%=i%>" class="btn btn-outline-primary"><%=i + 1%></a></td> 
                                        <% } %>
                                </nav>





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




                                        <form action="PerfilEditVacio.jsp" method="get">



                                            <div class="row">


                                                <div class="col-md-5">
                                                    <button class="btn">
                                                        <img  src="data:image/jpeg;base64, <%= session.getAttribute("ImageData") %>"  class="round_img" class="a_center" alt="Profile Picture" 
                                                              width="50" height="50">
                                                    </button>                     
                                                </div>    


                                                <div class="col-md-7">
                                                    <p class="card-text"><b><%= session.getAttribute("Nombre")  %> <%= session.getAttribute("Apellido")  %> </b><br>
                                                        <small class="text">@<%= session.getAttribute("User") %> </small></p>             

                                                </div>  




                                            </div>
                                            <div class="row ">


                                                <p class="card-text"><b>Nombre:</b> <br><em><%= session.getAttribute("Nombre")  %> <%= session.getAttribute("Apellido")  %></em> </p>
                                                <p class="text"><b>Username:</b> <br><em>@<%= session.getAttribute("User") %></em> </p>
                                                <p class="email" id="email"><b>Email:</b> <br><em><%= session.getAttribute("Correo") %></em> </p>

                                                <div class="btn-group" >
                                                    <button class="btn btn-primary btn-sm btn-block" type="submit">Editar Perfil</button>
                                                    <!-- <form>
                                                    <input type="image" src="imagenes/camera_button.png" alt="Submit" width="48" height="48">
                                                    <input type="text" alt="Submit">
                                                    </form> -->
                                                </div>

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

    <!-- FOOTER -->
    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
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


    document.getElementById('fechaANTES').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];


    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0');
    var yyyy = today.getFullYear();

    today = yyyy + '-' + mm + '-' + dd;
    $('#fechaDESP').attr('max', today);

</script>

<!-- Button color change -->
<script>
    const btn = document.querySelector('btn btn-outline-primary');

    btn.addEventListener('click', () => ){
        btn.style.backgroundColor = '#ffac09';
    }

</script>

<!--         Button color change 
      <script>
        const formulario = document.querySelector('#fotmulario');
        //crear evento
        formulario.addEventListener("submit".validarFormulario);
        //mis funciones
        function validarFormulario(e){
            e.PreventDefault();
            const nombre = document.querySelector("#nombre").value;
            const username = document.querySelector("#username").value;
        }

        </script>-->

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
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