<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro Usuarios</title>
</head>
<body>
<header class="cabecera">

	<a href="Pagina_Principal.jsp"><img align="left" src="../img/clima.gif" alt="" /></a>
		
		<div style="height: 180px;">
		<a class="titulos">
		 <h1>CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
		 </div>
		
</div>
<div align="center">
<ul id="button" class="listado_2">

	<li><a href="Inicio_inv">Inicio</a></li>
	
	<li><a href="Autores.jsp">Autores</a></li>

</ul>
</div>
	
	<form action="In_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Seleccione un Usuario</h1>
			
		<input type="submit" value="USUARIO" />
	
	</form>

	<form action="In_Admin.jsp" method="post">
		<input type="submit" value="ADMINISTRADOR" />
	
	</div>
	</form>
	
</header>

</body>
<footer>

</footer>
</html>