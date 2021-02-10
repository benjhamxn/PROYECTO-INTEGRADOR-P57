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
			
			<li><a href="Elim_Datos.jsp">Eliminar Datos</a></li>


		</ul>
	</div>
	</header>
	<form action="Elim_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Eliminando Usuario</h1>
			<label for="username"> Usuario </label> <input type="text"
				name="Nombre" placeholder=" Ingrese el Usuario a eliminar "> <input
				type="submit" name="btnC" value="ELIMINAR" /> <br> <br> <br> <br>
			
		
	</div>
	</form>
<%
		if (request.getParameter("btnC") != null) {
			String nombre = request.getParameter("Nombre");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("Delete FROM usuarios WHERE nombre='"+ nombre +"';");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("USUARIO INVITADO ELIMINADO");
				
			}
		}
	%>

</body>
</html>
	