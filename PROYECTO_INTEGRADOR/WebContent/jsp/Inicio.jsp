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
<body class="main">
<div>
<header class="cabecera">

	<a href="Inicio.jsp"><img align="left" src="../img/clima.gif" alt="" /></a>
		
		<div style="height: 180px;">
		<a class="titulos">
		 <h1>CONTROL ATMOSFÉRICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
		 </div>
		
</div>
<div align="center">
<ul id="button" class="listado_2">

	<li><a href="Pagina_Principal.jsp">Inicio</a></li>
	
	<li><a href="Con_Inv.jsp">Consultar</a></li>
	
	<li><a href="Autores.jsp">Autores</a></li>

	<li><a href="Archivos.jsp">Archivos</a></li>

	<li><a href="In_Est.jsp">Administrar</a></li>

</ul>
</div>
</header>
</body>

	<div class="login-box">
		<h1>CONTROL ATMOSFÉRICO</h1>
		<h3 class="obj">OBJETIVO DE LA PÁGINA</h3>
		<h3 class="tres">Esta página se encarga del alojamiento de información acerca del control atmosférico en varios sectores del Ditrito Metropolitano de Quito(DMQ), asi mismo se facilitará la descarga de estos archivos y sus reportes en diferentes diagramas y en diferentes formatos.</h3><br>	
		
		<h3 class="obj">RED METROPOLITANA DE MONITOREO ATMOSFÉRICO (REMMAQ)</h3>
		<h3 class="tres">El Municipio del Distrito Metropolitano de Quito (MDMQ), a través de la Red Metropolitana de Monitoreo Atmosférico (REMMAQ) de la Secretaría de Ambiente trabaja para hacer conocer a las autoridades competentes y la ciudadanía en general, información confiable sobre la calidad del aire ambiental, como uno de los varios pasos que está ejecutando para hacer realidad el derecho de la población a vivir en un ambiente sano y, de esta manera, contribuir al mejoramiento de su calidad de vida.</h3>

<h3 class="tres">El monitoreo del aire es una herramienta básica de la gestión ambiental y la información que produce debe ser utilizada para el diseño, implementación y evaluación de las políticas de control de las fuentes generadoras de emisiones y de las acciones orientadas al mejoramiento de la calidad del recurso, más aún en ciudades de altura como Quito, donde las condiciones climáticas, topográficas y de operación de los equipos de combustión, las vuelven más sensibles a experimentar episodios graves de contaminación atmosférica, que conllevan peligros potenciales para la salud de sus habitantes.</h3>

<h3 class="tres">La REMMAQ por medio de sus estaciones remotas ubicadas en el área urbana de la Ciudad de Quito y los valles aledaños, está en capacidad de medir de manera continua la concentración en el aire ambiente de cinco de los denominados contaminantes comunes: material particulado fino (PM2.5), óxidos de nitrógeno expresados como dióxido de nitrógeno (NO2), dióxido de azufre (SO2), monóxido de carbono (CO) y oxidantes fotoquímicos expresados como ozono (O3).</h3>

<h3 class="tres">Un aspecto clave de la difusión de la información es que el público pueda entenderla y esté en capacidad de aceptar y/o adoptar las medidas requeridas para evitar o minimizar los riesgos sobre la salud asociados a la contaminación atmosférica, incluyendo potenciales restricciones a las actividades generadoras de contaminantes.</h3>
<h3 class="tres">Un aspecto clave de la difusión de la información sobre la calidad del aire es que el público pueda entenderla y esté en capacidad de aceptar y/o adoptar las medidas requeridas para evitar o minimizar los riesgos sobre la salud asociados a la contaminación atmosférica, incluyendo potenciales restricciones a las actividades generadoras de contaminantes. </h3>
	</div>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. 
	<br />Para más información <a href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>
	