<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../estilos/Registro_Inv.css">
<link rel="stylesheet" href="../estilos/Cabecera.css">
<link rel="stylesheet" href="../estilos/Inicio.css">
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

			<li><a href="Inicio_Admin.jsp">Inicio</a></li>

			<li><a href="Con_Datos.jsp">Consultar</a></li>

			<li><a href="In_Datos.jsp">Insertar Datos</a></li>
			
			<li><a href="Mod_Datos.jsp">Modificar Datos</a></li>


		</ul>
	</div>
	</header>


	<br>
	<form action="Elim_Datos.jsp" method="post">
		<div class="login-box">

			<label for="username"> DATOS: </label>
			<div>
				<label for="tabla"> Seleccione la tabla a cambiar</label> <select
					name="tabla" id="tabla">
					<option value="vientos_vel">Velocidad de Vientos</option>
					<option value="vientos_dir">Dirección de Vientos</option>
					<option value="huemedad">Humedad</option>
					<option value="precipitacion">Precipitación</option>
				</select>

			</div>

			<input type="text" name="fecha" placeholder=" Ingrese la fecha de la cual eliminara los datos ">
			<input type="submit" name="btnC" value="REGISTRAR" />

		</div>
	</form>
	<%
		if (request.getParameter("btnC") != null) {
			String tabla= request.getParameter("tabla");
			String fecha = request.getParameter("fecha");			
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Base_Relacional_PI", "postgres", "123");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("INSERT INTO "+ tabla+" WHERE (fecha='"+ fecha +"');");

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
	</main>



</body>

<footer class="footer">
<div align="center">
	Licencia Apache 2.0. <br />Para más información <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>