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
		<header class="cabecera"> <a href="Inicio_Admin.jsp"><img
			align="left" src="../img/clima.gif" alt="" /></a>
			<div align="center">
				<ul id="button" class="listado_2">
		
					<li><a href="Inicio_Admin.jsp">Inicio</a></li>
		
					<li><a href="In_Datos.jsp">Ingresar Datos</a></li>
		
					<li><a href="Mod_Datos.jsp">Modificar Datos</a></li>
		
					<li><a href="Elim_Datos.jsp">Elim. Datos</a></li>
		
				</ul>
			</div>

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
	IMPORTANTE: Solo se mostraran los 10 ultimos datos, ya que son demasiados 
	datos que mostrar, si esque desea ver la información completa, puede dirigirse 
	a la pestaña "Archivos" y podrá encontrar los descargables.<br>
	<br><br><br>
	<div align="right">
	<form action="Con_Datos.jsp" method="post" class="form">

			<input type="submit" name="btnC5" value="DATOS HUMEDAD" /> <br> <br>
	</form>
	
	<form action="Con_Datos.jsp" method="post">
			<input type="submit" name="btnC" value="DATOS PRECIPITACIÓN" /> <br> <br>
	</form>
	
	<form action="Con_Datos.jsp" method="post">
			<input type="submit" name="btnC1" value="DATOS VEL. VIENTOS" /> <br> <br>
	</form>
	
	<form action="Con_Datos.jsp" method="post">
			<input type="submit" name="btnC2" value="DATOS DIR. VIENTOS" /> <br> <br>
		</div>
		</header>
		<section class="contenido wrapper"> <br>
	</form>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<%
		if (request.getParameter("btnC5") != null) {
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT humedad.fecha, humedad.belisario, humedad.carapungo, humedad.centro, "
							+ "humedad.cotocollao, humedad.elcamal, humedad.guamani, humedad.loschillos, humedad.sanantonio, "
							+ "humedad.tumbaco FROM humedad");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>FECHA</td><td>BELISARIO</td><td>CARAPUNGO</td><td>CENTRO</td>"
							+ "<td>COTOCOLLAO</td><td>EL CAMAL</td><td>GUAMANÍ</td><td>LOS CHILLOS</td><td>SAN ANTONIO</td>"
							+ "<td>TUMBACO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("fecha") + "</td>");
						out.println("<td>" + rs.getObject("belisario") + "</td>");
						out.println("<td>" + rs.getObject("carapungo") + "</td>");
						out.println("<td>" + rs.getObject("centro") + "</td>");
						out.println("<td>" + rs.getObject("cotocollao") + "</td>");
						out.println("<td>" + rs.getObject("elcamal") + "</td>");
						out.println("<td>" + rs.getObject("guamani") + "</td>");
						out.println("<td>" + rs.getObject("loschillos") + "</td>");
						out.println("<td>" + rs.getObject("sanantonio") + "</td>");
						out.println("<td>" + rs.getObject("tumbaco") + "</td>");
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
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT precipitacion.fecha, precipitacion.belisario, precipitacion.carapungo, precipitacion.centro, "
							+ "precipitacion.cotocollao, precipitacion.elcamal, precipitacion.guamani, precipitacion.loschillos, precipitacion.sanantonio, "
							+ "precipitacion.tumbaco FROM precipitacion");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>FECHA</td><td>BELISARIO</td><td>CARAPUNGO</td><td>CENTRO</td>"
							+ "<td>COTOCOLLAO</td><td>EL CAMAL</td><td>GUAMANÍ</td><td>LOS CHILLOS</td><td>SAN ANTONIO</td>"
							+ "<td>TUMBACO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("fecha") + "</td>");
						out.println("<td>" + rs.getObject("belisario") + "</td>");
						out.println("<td>" + rs.getObject("carapungo") + "</td>");
						out.println("<td>" + rs.getObject("centro") + "</td>");
						out.println("<td>" + rs.getObject("cotocollao") + "</td>");
						out.println("<td>" + rs.getObject("elcamal") + "</td>");
						out.println("<td>" + rs.getObject("guamani") + "</td>");
						out.println("<td>" + rs.getObject("loschillos") + "</td>");
						out.println("<td>" + rs.getObject("sanantonio") + "</td>");
						out.println("<td>" + rs.getObject("tumbaco") + "</td>");
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
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT vientos_vel.fecha, vientos_vel.belisario, vientos_vel.carapungo, vientos_vel.centro, "
							+ "vientos_vel.cotocollao, vientos_vel.elcamal, vientos_vel.guamani, vientos_vel.loschillos, vientos_vel.sanantonio, "
							+ "vientos_vel.tumbaco FROM vientos_vel");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>FECHA</td><td>BELISARIO</td><td>CARAPUNGO</td><td>CENTRO</td>"
							+ "<td>COTOCOLLAO</td><td>EL CAMAL</td><td>GUAMANÍ</td><td>LOS CHILLOS</td><td>SAN ANTONIO</td>"
							+ "<td>TUMBACO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("fecha") + "</td>");
						out.println("<td>" + rs.getObject("belisario") + "</td>");
						out.println("<td>" + rs.getObject("carapungo") + "</td>");
						out.println("<td>" + rs.getObject("centro") + "</td>");
						out.println("<td>" + rs.getObject("cotocollao") + "</td>");
						out.println("<td>" + rs.getObject("elcamal") + "</td>");
						out.println("<td>" + rs.getObject("guamani") + "</td>");
						out.println("<td>" + rs.getObject("loschillos") + "</td>");
						out.println("<td>" + rs.getObject("sanantonio") + "</td>");
						out.println("<td>" + rs.getObject("tumbaco") + "</td>");
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
						.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery(
							" SELECT vientos_dir.fecha, vientos_dir.belisario, vientos_dir.carapungo, vientos_dir.centro, "
							+ "vientos_dir.cotocollao, vientos_dir.elcamal, vientos_dir.guamani, vientos_dir.loschillos, vientos_dir.sanantonio, "
							+ "vientos_dir.tumbaco FROM vientos_dir");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>FECHA</td><td>BELISARIO</td><td>CARAPUNGO</td><td>CENTRO</td>"
							+ "<td>COTOCOLLAO</td><td>EL CAMAL</td><td>GUAMANÍ</td><td>LOS CHILLOS</td><td>SAN ANTONIO</td>"
							+ "<td>TUMBACO</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("fecha") + "</td>");
						out.println("<td>" + rs.getObject("belisario") + "</td>");
						out.println("<td>" + rs.getObject("carapungo") + "</td>");
						out.println("<td>" + rs.getObject("centro") + "</td>");
						out.println("<td>" + rs.getObject("cotocollao") + "</td>");
						out.println("<td>" + rs.getObject("elcamal") + "</td>");
						out.println("<td>" + rs.getObject("guamani") + "</td>");
						out.println("<td>" + rs.getObject("loschillos") + "</td>");
						out.println("<td>" + rs.getObject("sanantonio") + "</td>");
						out.println("<td>" + rs.getObject("tumbaco") + "</td>");
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