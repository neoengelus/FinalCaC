<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.DAO.PersonaDAO"%>
<%@page import="modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Proyecto Final CaC Listar Personas</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
	<body>
		<!-- Nav -->
		  <nav class="navbar bg-dark bg-body-tertiary navbar-expand-lg" data-bs-theme="dark">
		    <div class="container-fluid">
		      <a class="navbar-brand" href="https://agenciadeaprendizaje.bue.edu.ar/codo-a-codo/">
		        <img src="img/codoacodo.png" alt="Logo" style="max-height:5rem;" class="d-inline-block align-text-center">
		        Proyecto final
		      </a>
		      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
		        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon"></span>
		      </button>
		      <span class="navbar-text">
		        <div class="collapse navbar-collapse" id="navbarText">
		          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		            <li class="nav-item">
		            <form action="Controlador">
		              <a class="nav-link" href="index.jsp">Inicio</a>
		            </form>
		            </li>
		          </ul>
		        </div>
		      </span>
		    </div>
		  </nav>
<!-- 		  Lista de Registrados al evento -->
		  <div class="container col-6">
		  	<h1 class="text-start fs-1">Lista de Personas</h1>
		  	<form action="Controlador" method="get">
		  		<a class ="btn" type="button" style="background-color: #96c93e; color: white; border-radius: 8px;" id="Listar" href="Controlador?accion=listar" name="listar">Listar</a>
		  		<a class ="btn" type="button" style="background-color: #96c93e; color: white; border-radius: 8px;" id="Agregar" href="Controlador?accion=add" name="add">Agregar</a>
		  	</form>
		  </div>
		    <!-- Footer -->
		  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top"
		    style="background-color: #1f5271;">
		    <ul class="nav col justify-content-center">
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Preguntas Frecuentes</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Contáctanos</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Prensa</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Conferencias</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Términos y Condiciones</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Privacidad</a></li>
		      <li class="nav-item"><a href="#" class="nav-link px-2" style="color: white;">Estudiantes</a></li>
		    </ul>
		  </footer>
 		<script src="js/bootstrap.bundle.min.js"></script>
	</body>
</html>