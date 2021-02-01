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
<link rel="stylesheet" href="../estilos/Inicio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>
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

			<li><a href="Inicio_Inv.jsp">Inicio</a></li>

			<li><a href="Con_Inv.jsp">Consultar</a></li>



		</ul>
	</div>
	</header>
	<main>
	<div align="center">
	<br><br><br><br><br><br><br><br><br><br><br><br>
		<h1>Autores</h1>
		<div>
			<div>
				<div class="imagen_nuestra">
					<img src="../img/Ari.jpeg" 
						style="width: 150px; height: 200px;" />

				</div>
			</div>
			<div>
				<ul>
					<p>
						Aracelly Alvarez<br /> Universidad Politécnica Salesiana<br />
						aalvarez@est.ups.edu.ec<br /> <a
							href="https://github.com/JBorja96"> Perfil GitHub</a>
					</p>
				</ul>
			</div>
		</div>
		<div class="imagen_nuestra">
			<img src="../img/IO.jpeg" 
				style="width: 150px; height: 175px;" />

		</div>
		<div>
			<ul>
					<p align="center">
					Sebastián Espinel<br /> Universidad Politécnica Salesiana<br />
					jespinelp@est.ups.edu.ec<br /> <a
						href="https://github.com/Jespinelp"> Perfil GitHub</a>
				</p>
			</ul>
		</div>

		<div class="imagen_nuestra">
			<img src="../img/Benjamin.jpg" align="top"
				style="width: 150px; height: 175px;" />

		</div>
		<div>
			<ul>
					<p align="center">
					Benjamín Ríos<br /> Universidad Politécnica
					Salesiana<br /> @est.ups.edu.ec<br /> <a
						href="https://github.com/benjhamxn"> Perfil GitHub</a>
				</p>
			</ul>
		</div>
		<div class="imagen_nuestra">
			<img src="../img/Franks.jpg" align="top"
				style="width: 150px; height: 175px;" />

		</div>
		<div>
			<ul>
					<p align="center">
					Franks Sañay<br /> Universidad Politécnica
					Salesiana<br /> fsanays@est.ups.edu.ec<br /> <a
						href="https://github.com/Franks2695"> Perfil GitHub</a>
				</p>
			</ul>
		</div>
	</div>


	</main>



</body>

<footer class="footer">
<div align="center">
	Licencia Apache 2.0. <br />Para más información <a
		href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>