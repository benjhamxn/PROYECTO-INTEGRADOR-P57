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
		<header class="cabecera"> <a href="NewFile.jsf"><img
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

			<li><a href="Mod_Usuario.jsp">Modificar Usuario</a></li>

			<li><a href="Elim_Inv.jsp">Eliminar Usuario</a></li>


		</ul>
	</div>
	</header>
	<main> <br>
	<br>
	<br>
	<br>
	<form action="Reg_Inv.jsp" method="post">
		<div class="login-box">
			<img src="../img/control.jpg" class="avatar animated infinite"
				alt="Avatar Image">
			<label class="animated infinite zoomIn slower">Registro Usuario
				Invitado</label>
			<div>
				<label for="usua"> Seleccione rol de usuario</label> <select
					name="usua" id="usua">
					<option value="usu">Usuario</option>
					<option value="admin">Administrador</option>
				</select>

			</div>
			<label for="username"> DATOS: </label> <input type="text"
				name="Nombre" placeholder=" Ingrese su usuario "> <input
				type="text" name="correo"
				placeholder=" Ingrese su correo electrónico "> <input
				type="text" name="contrasenia" placeholder=" Ingrese una clave ">
			<input type="submit" name="btnC" value="REGISTRAR" /> <br> 

		</div>
	</form>
	<%
		if (request.getParameter("btnC") != null) {
			String nombre = request.getParameter("Nombre");
			String correo = request.getParameter("correo");
			String contra = request.getParameter("contrasenia");
			String usuario = request.getParameter("usua");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "123");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("INSERT INTO usuarios VALUES('"+ nombre +"','"+ correo +"','"+ contra +"','"+usuario+"');"
					+ "INSERT INTO roles VALUES('"+ nombre +"','"+ contra +"','"+usuario+"');");

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
	%> </main>
</body>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. <br />Para más información <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>
