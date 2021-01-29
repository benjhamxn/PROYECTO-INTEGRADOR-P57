<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../estilos/IniciarSesio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body class="main">
<div>
<header class="cabecera">

	<a href="Pagina_Principal.jsp"><img align="left" src="../img/clima.gif" alt="" /></a>
		
		<div style="height: 180px;">
		<a class="titulos">
		 <h1>CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
		 </div>
		
</div>
<div align="center">
<ul id="button" class="listado_2">

	<li><a href="Pagina_Principal.jsp">Inicio</a></li>
	
	<li><a href="Autores.jsp">Autores</a></li>

</ul>
</div>
	
	<form action="Inicio_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Seleccione un Usuario</h1>
			
		<input type="submit" value="INVITADO" />
	
	</form>

	<form action="In_Inv.jsp" method="post">
		<input type="submit" value="ADMINISTRADOR" />
	
	</div>
	</form>
	
</header>
</body>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. 
	<br />Para más información <a href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>