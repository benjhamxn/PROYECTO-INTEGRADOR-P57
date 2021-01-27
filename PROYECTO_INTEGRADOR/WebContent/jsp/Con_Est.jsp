<!-- Los import -->
<%@ page language="java"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="../estilos/Index.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 0) {
				$('header').addClass('header2');
			} else {
				$('header').removeClass('header2');
			}
		});
	});
</script>
<body>
	<h1></h1>

	<form action="Con_Est.jsp" method="post">
		<header>
		<div class="wrapper">
			<div class="logo1">
				<img src="../img/gi.gif" width="146" height="134" alt=logo1 />
			</div>
			<div class="logo">Consulta a la Base</div>
			 <input
				type="submit" name="btnC" value="VER USUARIOS ESTUDIANTES" /> <br> <br>
	</form>
	
	<form action="Con_Est.jsp" method="post">
			<label for="username"> Cedula: </label> <input type="text"
				name="cedula" placeholder="Ingrese su N° de cédula"> <br> <br>
				 <input
				type="submit" name="btnC1" value="VER MATRICULAS INSCRITAS" /> <br> <br>
	</form>
	
	<form action="Con_Est.jsp" method="post">
			<label for="username"> Cedula: </label> <input type="text"
				name="cedula1" placeholder="Ingrese su N° de cédula"> 
			<table>  
				<td><Select name="combo">
						<option value="">Seleccione un Día</option>
						<option value="LUNES">LUNES</option>
						<option value="MARTES">MARTES</option>
						<option value="MIERCOLES">MIERCOLES</option>
						<option value="JUEVES">JUEVES</option>
						<option value="VIERNES">VIERNES</option>
				</Select> </td>
			</table>
			 <input
				type="submit" name="btnC4" value="CONSULTA GENERAL" /> <br>
			<a href="Pagina_Principal.jsp">Cerrar Sesión</a>
		</div>
		</header>
		<section class="contenido wrapper"> <br>
	</form>
	
	<%
		if (request.getParameter("btnC") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT cedula_est, apellidos_est, nombres_est, direccion, telefono_est, email_est, codigo_tema, codigo_materia, " 
							+ " codigo_campus, cod_sesion, id_usuario FROM estudiante ORDER BY cedula_est, apellidos_est, nombres_est, direccion, " 
							+ " telefono_est, email_est, codigo_tema, codigo_materia, codigo_campus, cod_sesion, id_usuario");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>CEDULA</td><td>APELLIDOS</td><td>NOMBRES</td><td>DIRECCION</td><td>TELEFONO</td>"
							+ "<td>E-MAIL</td><td>COD. TEMA</td><td>COD. MATERIA</td><td>COD. CAMPUS</td><td>COD. SESION</td><td>ID USUARIO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("cedula_est") + "</td>");
						out.println("<td>" + rs.getObject("apellidos_est") + "</td>");
						out.println("<td>" + rs.getObject("nombres_est") + "</td>");
						out.println("<td>" + rs.getObject("direccion") + "</td>");
						out.println("<td>" + rs.getObject("telefono_est") + "</td>");
						out.println("<td>" + rs.getObject("email_est") + "</td>");
						out.println("<td>" + rs.getObject("codigo_tema") + "</td>");
						out.println("<td>" + rs.getObject("codigo_materia") + "</td>");
						out.println("<td>" + rs.getObject("codigo_campus") + "</td>");
						out.println("<td>" + rs.getObject("cod_sesion") + "</td>");
						out.println("<td>" + rs.getObject("id_usuario") + "</td>");
						out.println("</tr>");
					}
					out.println("</table>");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("Excepcion " + e);
				e.printStackTrace();
			}
		}
	%>
	
	<%
		if (request.getParameter("btnC1") != null) {
			String cedula = request.getParameter("cedula");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT estudiante.nombres_est, estudiante.apellidos_est, materia.nombre_materia, horario_clases.dia FROM estudiante, materia, horario_clases "
							+ " WHERE estudiante.codigo_materia=materia.codigo_materia and materia.codigo_materia=horario_clases.codigo_materia and estudiante.cedula_est='" + cedula + "'"
							+ " ORDER BY estudiante,nombres_est, materia.nombre_materia, horario_clases.dia");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>NOMBRES</td><td>APELLIDOS</td><td>MATERIA</td><td>DIA</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombres_est") + "</td>");
						out.println("<td>" + rs.getObject("apellidos_est") + "</td>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
						out.println("<td>" + rs.getObject("dia") + "</td>");
						out.println("</tr>");
					}
					out.println("</table>");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("Excepcion " + e);
				e.printStackTrace();
			}
		}
	%>
	
	<%
		if (request.getParameter("btnC4") != null) {
			String cedula = request.getParameter("cedula1");
			String dia = request.getParameter("combo");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT DISTINCT materia.nombre_materia, horario_clases.dia, temas.nombre_tema, sesiones.link_clase, "
							+ " docente.nombres_doc, docente.apellidos_doc FROM estudiante, materia, horario_clases, docente, temas, "
							+ " sesiones WHERE docente.cedula_doc = materia.cedula_doc and sesiones.codigo_tema=temas.codigo_tema "
							+ " and materia.codigo_materia=temas.codigo_materia and docente.cedula_doc=horario_clases.cedula_doc "
							+ " and estudiante.codigo_materia=materia.codigo_materia and estudiante.cedula_est='" + cedula + "'" 
							+ " and horario_clases.dia='" + dia + "'");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>MATERIA</td><td>DIA DE CLASES</td><td>TEMA</td>"
									+ "<td>LINK</td><td>NOMBRE DOCENTE</td><td>APELLIDO DOCENTE</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
						out.println("<td>" + rs.getObject("dia") + "</td>");
						out.println("<td>" + rs.getObject("nombre_tema") + "</td>");
						out.println("<td>" + rs.getObject("link_clase") + "</td>");
						out.println("<td>" + rs.getObject("nombres_doc") + "</td>");
						out.println("<td>" + rs.getObject("apellidos_doc") + "</td>");
						out.println("</tr>");
					}
					out.println("</table>");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("Excepcion " + e);
				e.printStackTrace();
			}
		}
	%>
	</section>
</body>
</html>