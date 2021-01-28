<!-- Los import -->
<%@ page language="java"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="CONTROLADOR.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" href="../estilos/Registro_Inv.css">
<link rel="stylesheet" href="../estilos/Cabecera.css">
<link rel="stylesheet" href="../estilos/Inicio.css">
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
	<header class="cabecera">

	<div>
		<header class="cabecera"> <a href="Inicio.jsp"><img
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	IMPORTANTE: Solo si maquina soporta una gran cantidad de datos,
	consultar mediante los botones, de lo contrario, puede dirigirse a la
	pestaña "Archivos" y podrá encontrar los descargables.<br>
	<br>
	<form action="Con_Inv.jsp" method="post" class="form">

			<input type="submit" name="btnC5" value="BOTON EN MANTENIMIENTO" />
			<br>
	</form>

	<form action="Con_Inv.jsp" method="post" class="form">
		<input type="submit" name="btnC" value="VER DATOS DE HUMEDAD" /> <br>
	</form>

	<form action="Con_Inv.jsp" method="post" class="form">
		<input type="submit" name="btnC1" value="BOTON EN MANTENIMIENTO" /> <br>
	</form>

	<form action="Con_Inv.jsp" method="post" class="form">
		<input type="submit" name="btnC2" value="BOTON EN MANTENIMIENTO" /> <br>
	</form>

	<form action="Con_Inv.jsp" method="post" class="form">
		<input type="submit" name="btnC3" value="BOTON EN MANTENIMIENTO" /> <br>
		<br> <a href="Inicio.jsp">Regresar</a><br>
		</div>
	</header>
	<section class="contenido wrapper"> <br>
	</form>

	<%
		if (request.getParameter("btnC5") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_dimensional_PI", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT dim_fecha.sk_fecha, dim_fecha.dia, dim_fecha.mes, dim_fecha.anio, dim_fecha.fecha " 
							+ " FROM dim_fecha");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>SK_FECHA</td><td>DIA</td><td>MES</td><td>AÑO</td><td>FECHA</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("sk_fecha") + "</td>");
						out.println("<td>" + rs.getObject("dia") + "</td>");
						out.println("<td>" + rs.getObject("mes") + "</td>");
						out.println("<td>" + rs.getObject("anio") + "</td>");
						out.println("<td>" + rs.getObject("fecha") + "</td>");
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
		if (request.getParameter("btnC") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_Relacional_PI", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT humedad.id_humedad, humedad.fecha_hora, humedad.belisario_hum, humedad.carapungo_hum, humedad.centro_hum, "
							+ "humedad.cotocollao_hum, humedad.elcamal_hum, humedad.guamani_hum, humedad.loschillos_hum, humedad.sanantonio_hum, "
							+ "humedad.tumbaco_hum FROM humedad");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>ID</td><td>FECHA Y HORA</td><td>BELISARIO</td><td>CARAPUNGO</td><td>CENTRO</td>"
							+ "<td>COTOCOLLAO</td><td>EL CAMAL</td><td>GUAMANÍ</td><td>LOS CHILLOS</td><td>SAN ANTONIO</td>"
							+ "<td>TUMBACO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("id_humedad") + "</td>");
						out.println("<td>" + rs.getObject("fecha_hora") + "</td>");
						out.println("<td>" + rs.getObject("belisario_hum") + "</td>");
						out.println("<td>" + rs.getObject("carapungo_hum") + "</td>");
						out.println("<td>" + rs.getObject("centro_hum") + "</td>");
						out.println("<td>" + rs.getObject("cotocollao_hum") + "</td>");
						out.println("<td>" + rs.getObject("elcamal_hum") + "</td>");
						out.println("<td>" + rs.getObject("guamani_hum") + "</td>");
						out.println("<td>" + rs.getObject("loschillos_hum") + "</td>");
						out.println("<td>" + rs.getObject("sanantonio_hum") + "</td>");
						out.println("<td>" + rs.getObject("tumbaco_hum") + "</td>");
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
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT DISTINCT materia.nombre_materia, docente.nombres_doc, docente.apellidos_doc FROM materia, docente "
							+ " WHERE docente.cedula_doc=materia.cedula_doc"
							+ " ORDER BY materia.nombre_materia, docente.nombres_doc, docente.apellidos_doc");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>MATERIAS</td><td>NOMBRES DOCENTE</td><td>APELLIDOS</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
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

	<%
		if (request.getParameter("btnC2") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT DISTINCT materia.nombre_materia, horario_clases.dia, horario_clases.hora_inicio, horario_clases.hora_fin "
							+ " FROM materia, horario_clases WHERE materia.cedula_doc=horario_clases.cedula_doc "
							+ " ORDER BY materia.nombre_materia, horario_clases.dia, horario_clases.hora_inicio, horario_clases.hora_fin");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>MATERIAS</td><td>DIA</td><td>HORA INICIO</td><td>HORA FIN</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
						out.println("<td>" + rs.getObject("dia") + "</td>");
						out.println("<td>" + rs.getObject("hora_inicio") + "</td>");
						out.println("<td>" + rs.getObject("hora_fin") + "</td>");
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
		if (request.getParameter("btnC3") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT DISTINCT materia.nombre_materia, sesionesxdocente.num_sesiones "
							+ " FROM materia, sesionesxdocente "
							+ " WHERE materia.cedula_doc=sesionesxdocente.cedula_doc"
							+ " ORDER BY materia.nombre_materia, sesionesxdocente.num_sesiones");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>MATERIAS</td><td>N° SESIONES POR SEMANA</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
						out.println("<td>" + rs.getObject("num_sesiones") + "</td>");
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

			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							"SELECT * FROM VISTA_INVITADO");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>MATERIA</td><td>NOMBRES DOCENTE</td><td>APELLIDOS</td><td>DIA DE CLASES</td><td>HORA DE INICIO</td>"
									+ "<td>HORA DE FIN</td><td>NUMERO DE SESIONES</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre_materia") + "</td>");
						out.println("<td>" + rs.getObject("nombres_doc") + "</td>");
						out.println("<td>" + rs.getObject("apellidos_doc") + "</td>");
						out.println("<td>" + rs.getObject("dia") + "</td>");
						out.println("<td>" + rs.getObject("hora_inicio") + "</td>");
						out.println("<td>" + rs.getObject("hora_fin") + "</td>");
						out.println("<td>" + rs.getObject("num_sesiones") + "</td>");
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
</body>

<footer class="footer">
<div align="center">
	Licencia Apache 2.0. <br />Para más información <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>