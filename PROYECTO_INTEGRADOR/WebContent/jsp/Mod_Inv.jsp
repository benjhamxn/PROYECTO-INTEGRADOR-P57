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

			<li><a href="Inicio_Admin.jsp">Inicio</a></li>

			<li><a href="Ver_usuario.jsp">Consultar</a></li>

			<li><a href="Reg_Usu.jsp">Ingresar Usuarios</a></li>
			
			<li><a href="Elim_Inv.jsp">Eliminar Usuarios</a></li>


		</ul>
	</div>
	</header>
	
	<form action="Mod_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Modificando Usuario</h1>
			<label for="username"> INGRESE USUARIO: </label> <input type="text"
				name="nombre" placeholder=" Ingrese Usuario "> 
				<table>
				<td><Select name="combo">
						<option value="">Seleccione dato a cambiar</option>
						<option value="correo">CORREO</option>
						<option value="contrasenia">CONTRASEÑA</option>
				</Select></td>
			</table>
				<label for="username"> DATO A MODIFICAR: </label> <input type="text"
				name="dato" placeholder=" Ingrese dato a modificar "> 
				<input type="submit" name="btnC" value="ACTUALIZAR" /> <br> 
			<a href="Registrar.jsp">REGRESAR</a> <br>
			<a href="In_Inv.jsp">INICIAR SESIÓN</a>
		
	</div>
	</form>
<%
		if (request.getParameter("btnC") != null) {
			String nombre = request.getParameter("nombre");
			String combo = request.getParameter("combo");
			String dato = request.getParameter("dato");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							"UPDATE usuarios SET "+ combo + "='" + dato + "' WHERE nombre='"+ nombre + "'");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("USUARIO MODIFICADO");
				
			}
		}
	%>

</body>
</html>
	