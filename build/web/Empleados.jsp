<%-- 
    Document   : Empleados
    Created on : 28 jul. 2023, 18:01:25
    Author     : ferna
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <title>Empleados</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Empleados</h5>
                        <p>En este panel podras gestionar los datos de los usuarios empleados del sistema.</p>
                        <form action="Controlador?menu=Empleados" method="post">
                            <div class="form-group">
                                <label>Documento</label>
                                <input type="number" class="form-control" name="txtdocumento" value="${usuarioSeleccionado.getDocumento()}">
                                <small class="form-text text-muted">Ingrese su documento sin espacios ni puntos.</small>
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" class="form-control" name="txtnombre" value="${usuarioSeleccionado.getNombre()}">
                            </div>

                            <div class="form-group">
                                <label>Correo</label>
                                <input type="text" class="form-control" name="txtcorreo" value="${usuarioSeleccionado.getCorreo()}">
                            </div>

                            <div class="form-group">
                                <label>Password</label>
                                <input type="text" class="form-control" name="txtpassword" value="${usuarioSeleccionado.getPassword()}">
                            </div>

                            <div class="form-group">
                                <label>Rol</label>
                                <select class="form-control form-control-sm" name="txtrol">
                                    <option>Empleado</option>
                                    <option>Cliente</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Estado</label>
                                <select class="form-control form-control-sm" name="txtestado">
                                    <option>Activo</option>
                                    <option>Inactivo</option>
                                </select>
                            </div>

                            <input type="submit" class="btn btn-primary" name="accion" value="Agregar"></input>
                            <input type="submit" class="btn btn-success" name="accion" value="Actualizar"></input>
                        </form>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Documento</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Correo</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Rol</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">

                            <tr>
                                <th scope="row">${usuario.getId()}</th>
                                <th>${usuario.getDocumento()}</th>
                                <th>${usuario.getNombre()}</th>
                                <th>${usuario.getCorreo()}</th>
                                <th>${usuario.getPassword()}</th>
                                <th>${usuario.getRol()}</th>
                                <th>${usuario.getEstado()}</th>
                                <td>
                                    <a class="btn btn-warning mb-2" href="Controlador?menu=Empleados&accion=Cargar&id=${usuario.getId()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Empleados&accion=Eliminar&id=${usuario.getId()}">Eliminar</a>
                                </td>
                            </tr>                        
                        </c:forEach>
                    </tbody>
                </table>
            </div>
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