<%-- 
    Document   : Principal
    Created on : 28 jul. 2023, 14:31:24
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">
        <title>Tienda</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Sistema de Ventas</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
<!--                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                   
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Productos" target="miContenedor">Productos <span class="sr-only">(current)</span></a>
                    </li>-->
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Empleados&accion=Listar" target="miContenedor">Empleados <span class="sr-only">(current)</span></a>
                    </li>
                    
<!--                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Clientes" target="miContenedor">Clientes <span class="sr-only">(current)</span></a>
                    </li>-->
                    
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?menu=Ventas&accion=default" target="miContenedor">Ventas <span class="sr-only">(current)</span></a>
                    </li>
                </ul>

                <div class="btn-group">
                    
                    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${usuario.getNombre()}
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#"><i class="fas fa-user"></i></a>
                        <a class="dropdown-item" href="#">${usuario.getDocumento()}</a>
                        <a class="dropdown-item" href="#">${usuario.getCorreo()}</a>
                        <div class="dropdown-divider"></div>
                        <form class="dropdown-item" method="post" action="Validar">
                            <button class="btn btn-danger center-block" type="submit" name="accion" value="Salir">Cerrar Sesión</button>
                        </form>
                    </div>
                </div>
                    
            </div>
        </nav>

        <div class="m-3" style="height: 900px;">
            <iframe name="miContenedor" style="height: 100%; width: 100%;" frameBorder="1"></iframe>
        </div>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        -->
    </body>
</html>
