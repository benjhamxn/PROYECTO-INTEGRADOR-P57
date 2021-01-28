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
<link rel="stylesheet" href="../estilos/Registro_Inv.css">
<link rel="stylesheet" href="../estilos/Cabecera.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body class="main">
<div>
<header class="cabecera">

	<a href="NewFile.jsf"><img align="left" src="../img/clima.gif" alt="" /></a>
		
		<div style="height: 180px;">
		<a class="titulos">
		 <h1>CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
		 </div>
		
</div>
<div align="center">
<ul id="button" class="listado_2">

	<li><a href="Inicio.jsp">Inicio</a></li>
	
	<li><a href="Autores.jsf">Autores</a></li>

	<li><a href="Info.jsf">Información</a></li>

	<li><a href="Login.jsf">Iniciar Sesión</a></li>

</ul>
</div>
	<form action="Reg_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/control.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Registro Usuario Invitado</h1>
			<label for="username"> DATOS: </label> <input type="text"
				name="id" placeholder=" Ingrese numero de la suerte "><input type="text"
				name="Nombre" placeholder=" Ingrese su nombre "> <input type="text"
				name="edad" placeholder=" Ingrese su edad "> <input type="text"
				name="correo" placeholder=" Ingrese su correo electrónico "> <input type="text"
				name="clave" placeholder=" Ingrese una clave "> <input
				type="submit" name="btnC" value="REGISTRAR" /> <br> 
			<a href="Registrar.jsp">REGRESAR</a> <br>
			<a href="In_Inv.jsp">INICIAR SESIÓN</a>
		
	</div>
	</form>
<%
		if (request.getParameter("btnC") != null) {
			String id = request.getParameter("id");
			String nombre = request.getParameter("Nombre");
			String edad = request.getParameter("edad");
			String correo = request.getParameter("correo");
			String clave = request.getParameter("clave");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Base_Relacional_PI", "postgres", "123");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("INSERT INTO usuario VALUES('"+ id +"','"+ nombre +"','"+ edad +"','"+ correo +"','"+ clave +"');");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println(e);
			}
		}
	%>

</header>
</body>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. 
	<br />Para más información <a href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>
	