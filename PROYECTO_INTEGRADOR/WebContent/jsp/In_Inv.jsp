<%@page import="CONTROLADOR.*"%>
<%@page session='true'%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="../estilos/IniciarSesio.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../estilos/IniciarSesio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>

<div>
		<header class="cabecera"> <a href="Inicio_Admin.jsp"><img
			align="left" src="../img/clima.gif" alt="" /></a>

		<div style="height: 180px;">
			<a class="titulos">
				<h1>
					CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE
					QUITO
				</h1>
			</a>
		</div>
	</div>
	<div align="center">
		<ul id="button" class="listado_2">

			<li><a href="Inicio_Inv.jsp">Inicio</a></li>

			<li><a href="Con_Inv.jsp">Consultar</a></li>

			<li><a href="Autores.jsp">Autores</a></li>
			
			<li><a href="In_Inv.jsp">Iniciar Sesión</a></li>


		</ul>
	</div>
	</header>
	<form action="Verificar_Usuario_Inv.jsp" method="post">
		<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite pulse faster" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Iniciar Sesion (Usuario)</h1>
			<label for="username">Usuario</label> 
			<input type="text" name="usuario" placeholder="Ingrese su Usuario">
			<input type="text" name="clave" placeholder="Ingrese su contraseña">  
				<input type="submit" value="Registrar"> <br> <br> <br> <br> <br>
				<a href="Pagina_Principal.jsp">REGRESAR</a>
		</div>
	</form>
</body>
</html>