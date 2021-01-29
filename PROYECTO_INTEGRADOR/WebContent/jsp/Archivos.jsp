<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="Descarga.js"></script>
<link rel="stylesheet" href="../estilos/Registro_Inv.css">
<link rel="stylesheet" href="../estilos/Cabecera.css">
<link rel="stylesheet" href="../estilos/Inicio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body class="main">
<div>
<header class="cabecera">

	<a href="Inicio_Usuario.jsp"><img align="left" src="../img/clima.gif" alt="" /></a>
		
		<div style="height: 180px;">
		<a class="titulos">
		 <h1>CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
		 </div>
		
</div>
<div align="center">
<ul id="button" class="listado_2">

	<li><a href="Inicio_Inv.jsp">Inicio</a></li>
	
	<li><a href="Con_Inv.jsp">Consultar</a></li>
	
	<li><a href="Autores.jsp">Autores</a></li>
	
	<li><a href="Pagina_Principal.jsp">Iniciar Sesión</a></li>


</ul>
</div>
</header>
</body>

	<div class="login-box">
		<h1>EN MANTENIMIENTO</h1>
	</div>
	<a type="submit" onclick="descargarExcel()">&#10094;</a>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. 
	<br />Para más información <a href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>