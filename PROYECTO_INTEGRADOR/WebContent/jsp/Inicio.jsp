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
		 <h1>CONTROL ATMOSF�RICO<br /> DEL<br /> DISTRITO METROPOLITANO DE QUITO</h1></a>
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
		<h1>CONTROL ATMOSF�RICO</h1>
		<h3 class="obj">OBJETIVO DE LA P�GINA</h3>
		<h3 class="tres">Esta p�gina se encarga del alojamiento de informaci�n acerca del control atmosf�rico en varios sectores del Ditrito Metropolitano de Quito(DMQ), asi mismo se facilitar� la descarga de estos archivos y sus reportes en diferentes diagramas y en diferentes formatos.</h3><br>	
		
		<h3 class="obj">RED METROPOLITANA DE MONITOREO ATMOSF�RICO (REMMAQ)</h3>
		<h3 class="tres">El Municipio del Distrito Metropolitano de Quito (MDMQ), a trav�s de la Red Metropolitana de Monitoreo Atmosf�rico (REMMAQ) de la Secretar�a de Ambiente trabaja para hacer conocer a las autoridades competentes y la ciudadan�a en general, informaci�n confiable sobre la calidad del aire ambiental, como uno de los varios pasos que est� ejecutando para hacer realidad el derecho de la poblaci�n a vivir en un ambiente sano y, de esta manera, contribuir al mejoramiento de su calidad de vida.</h3>

<h3 class="tres">El monitoreo del aire es una herramienta b�sica de la gesti�n ambiental y la informaci�n que produce debe ser utilizada para el dise�o, implementaci�n y evaluaci�n de las pol�ticas de control de las fuentes generadoras de emisiones y de las acciones orientadas al mejoramiento de la calidad del recurso, m�s a�n en ciudades de altura como Quito, donde las condiciones clim�ticas, topogr�ficas y de operaci�n de los equipos de combusti�n, las vuelven m�s sensibles a experimentar episodios graves de contaminaci�n atmosf�rica, que conllevan peligros potenciales para la salud de sus habitantes.</h3>

<h3 class="tres">La REMMAQ por medio de sus estaciones remotas ubicadas en el �rea urbana de la Ciudad de Quito y los valles aleda�os, est� en capacidad de medir de manera continua la concentraci�n en el aire ambiente de cinco de los denominados contaminantes comunes: material particulado fino (PM2.5), �xidos de nitr�geno expresados como di�xido de nitr�geno (NO2), di�xido de azufre (SO2), mon�xido de carbono (CO) y oxidantes fotoqu�micos expresados como ozono (O3).</h3>

<h3 class="tres">Un aspecto clave de la difusi�n de la informaci�n es que el p�blico pueda entenderla y est� en capacidad de aceptar y/o adoptar las medidas requeridas para evitar o minimizar los riesgos sobre la salud asociados a la contaminaci�n atmosf�rica, incluyendo potenciales restricciones a las actividades generadoras de contaminantes.</h3>
<h3 class="tres">Un aspecto clave de la difusi�n de la informaci�n sobre la calidad del aire es que el p�blico pueda entenderla y est� en capacidad de aceptar y/o adoptar las medidas requeridas para evitar o minimizar los riesgos sobre la salud asociados a la contaminaci�n atmosf�rica, incluyendo potenciales restricciones a las actividades generadoras de contaminantes. </h3>
	</div>
<footer class="footer">
<div align="center">
	Licencia Apache 2.0. 
	<br />Para m�s informaci�n <a href="https://www.apache.org/licenses/LICENSE-2.0">click aqui</a>
</div>
</footer>
</html>
	