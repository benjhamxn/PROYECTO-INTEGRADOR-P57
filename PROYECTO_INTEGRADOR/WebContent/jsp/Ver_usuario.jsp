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
		
					<li><a href="Reg_Usu.jsp">Ingresar Usuarios</a></li>
		
					<li><a href="Mod_Inv.jsp">Modificar Usuarios</a></li>
		
					<li><a href="Elim_Inv.jsp">Elim. Usuarios</a></li>
		
				</ul>
			</div>

		<div style="height: 180px;">
			<a class="titulos">
				<h1>
					CONTROL ATMOSF�RICO<br /> DEL<br /> DISTRITO METROPOLITANO DE
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
	datos que mostrar, si esque desea ver la informaci�n completa, puede dirigirse 
	a la pesta�a "Archivos" y podr� encontrar los descargables.<br>
	<br><br><br>
	<div align="center">
	<form action="Ver_usuario.jsp" method="post">
			<input type="submit" name="btnC5" value="VER USUARIOS" /> <br> <br>
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
							" SELECT usuarios.nombre, usuarios.correo, usuarios.contrasenia FROM usuarios");

					// Ponemos los resultados en un table de html
					out.println(
							"<table border=\"1\"><tr><td>NOMBRE</td><td>CORREO</td><td>CONTRASE�A</td></tr>");
					while (rs.next()) {
						out.println("<tr>");
						out.println("<td>" + rs.getObject("nombre") + "</td>");
						out.println("<td>" + rs.getObject("correo") + "</td>");
						out.println("<td>" + rs.getObject("contrasenia") + "</td>");
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
	Licencia Apache 2.0. <br />Para m�s informaci�n <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>