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

			<li><a href="Elim_Datos.jsp">Eliminar Datos</a></li>
			
			<li><a href="Mod_Datos.jsp">Modificar Datos</a></li>


		</ul>
	</div>
	</header>


	<br>
	<form action="In_Datos.jsp" method="post">
		<div class="login-box">

			<label for="username"> DATOS: </label>
			<div>
				<label for="tabla"> Seleccione la tabla a cambiar</label> <select
					name="tabla" id="tabla">
					<option value="vientos_vel">Velocidad de Vientos</option>
					<option value="vientos_dir">Dirección de Vientos</option>
					<option value="humedad">Humedad</option>
					<option value="precipitacion">Precipitación</option>
				</select>

			</div>

			<input type="text" name="fecha" placeholder=" Ingrese la fecha ">
			<input type="text" name="Belisario" placeholder="Ingrese valor de Belisario"> 
			<input type="text" name="Carapungo" placeholder=" Ingrese valor de Carapungo "> 
			<input type="text" name="Centro" placeholder=" Ingrese valor de Centro ">
			<input type="text" name="Cotocollao" placeholder=" Ingrese valor de Cotocollao "> 
			<input type="text" name="Camal" placeholder=" Ingrese valor de Camal ">
			<input type="text" name="Guamani" placeholder=" Ingrese valor de Guamani ">
			<input type="text" name="LosChillos" placeholder=" Ingrese valor de Los Chillos ">
			<input type="text" name="SanAntonio" placeholder=" Ingrese valor de San Antonio ">
			<input type="text" name="Tumbaco" placeholder=" Ingrese valor de Tumbaco ">
			<input type="submit" name="btnC" value="REGISTRAR" />

		</div>
	</form>
	<%
		if (request.getParameter("btnC") != null) {
			String tabla= request.getParameter("tabla");
			String fecha = request.getParameter("fecha");			
			String Belisario = request.getParameter("Belisario");	
			String Carapungo = request.getParameter("Carapungo");
			String Centro = request.getParameter("Centro");
			String Cotocollao = request.getParameter("Cotocollao");
			String Camal = request.getParameter("Camal");
			String Guamani = request.getParameter("Guamani");
			String LosChillos = request.getParameter("LosChillos");
			String SanAntonio = request.getParameter("SanAntonio");			
			String Tumbaco = request.getParameter("Tumbaco");
			
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Base_alterna", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("INSERT INTO "+ tabla+" VALUES"+
							"('"+ fecha +"','"+ Belisario +"','"+ Carapungo +"','"+ Centro +"','"+ Cotocollao +"','"+Camal +
									"','"+Guamani+"','"+LosChillos+"','"+SanAntonio+"','"+ Tumbaco+"');");

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