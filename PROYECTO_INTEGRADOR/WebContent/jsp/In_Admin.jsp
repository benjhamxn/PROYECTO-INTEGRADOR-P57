<%@page import="CONTROLADOR.*"%>
<%@page session='true'%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../estilos/IniciarSesio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>
	<form action="Verificar_Usuario_Admin.jsp" method="post">
		<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite pulse faster" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Iniciar Sesion (Administrador)</h1>
			<label for="username">Usuario</label> 
			<input type="text" name="usuario" placeholder="Ingrese su Usuario">
			<input type="text" name="clave" placeholder="Ingrese su contraseña">  
				<input type="submit" value="Iniciar"> <br> <br> <br> <br> <br>
				<a href="Pagina_Principal.jsp">REGRESAR</a>
		</div>
	</form>
</body>
</html>