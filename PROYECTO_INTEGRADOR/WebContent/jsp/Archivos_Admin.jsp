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
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="Descarga.js"></script>
<link rel="stylesheet" href="../estilos/Registro_Inv.css">
<link rel="stylesheet" href="../estilos/Cabecera.css">
<link rel="stylesheet" href="../estilos/Inicio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body class="main" >
	<div>
		<header class="cabecera"> <a href="Inicio_Usuario.jsp"><img
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

			<li><a href="Autores_Admin.jsp">Autores</a></li>


		</ul>
	</div>
	</header>
	<main >
	<br><br><br><br><br><br><br><br><br>
	<table class="default" align="center">
		<tr>

			<td><img src="../img/vel_vientos.jpg" /></td>

			<td><a
				href="https://github.com/benjhamxn/PROYECTO-INTEGRADOR-P57/raw/main/PROYECTO_INTEGRADOR/GESTI%C3%93N_DE_BASE_DE_DATOS/TERCER_AVANCE/REPORTES/REPORTES%20DE%20TEXTO/Reporte_pastel_velocidad_vientos.pdf">Descargar</a></td>


		</tr>
		<tr>

			<td><img src="../img/dir_viento.jpg" /></td>

			<td><a
				href="https://github.com/benjhamxn/PROYECTO-INTEGRADOR-P57/raw/main/PROYECTO_INTEGRADOR/GESTI%C3%93N_DE_BASE_DE_DATOS/TERCER_AVANCE/REPORTES/REPORTES%20DE%20TEXTO/Reporte_pastel_direccion_vientos.pdf">Descargar</a></td>


		</tr>

		<tr>

			<td><img src="../img/humedad.jpg" /></td>

			<td><a
				href="https://github.com/benjhamxn/PROYECTO-INTEGRADOR-P57/raw/main/PROYECTO_INTEGRADOR/GESTI%C3%93N_DE_BASE_DE_DATOS/TERCER_AVANCE/REPORTES/REPORTES%20DE%20TEXTO/Reporte_barras_humedad.pdf">Descargar</a></td>


		</tr>
		<tr>

			<td><img src="../img/Prec.jpg" /></td>

			<td><a
				href="https://github.com/benjhamxn/PROYECTO-INTEGRADOR-P57/raw/main/PROYECTO_INTEGRADOR/GESTI%C3%93N_DE_BASE_DE_DATOS/TERCER_AVANCE/REPORTES/REPORTES%20DE%20TEXTO/Reporte_barras_precipitacion.pdf">Descargar</a></td>


		</tr>
	</table>
	<br><br><br><br><br><br><br><br><br>
	</main>

</body>


<footer class="footer">
<div align="center">
	Licencia Apache 2.0. <br />Para más información <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>