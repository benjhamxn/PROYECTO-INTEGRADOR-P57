<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../estilos/IniciarSesio.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>
	
	<form action="Reg_Inv.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Seleccione un Usuario a Registrar:</h1>
		<input type="submit" value="INVITADO" />
	
	</form>

	<form action="Reg_Est.jsp" method="post">

		<input type="submit" value="ESTUDIANTE" /> <br> <br> <br> <br> <br>
		<a href="Con_Dir.jsp">REGRESAR</a>
	</div>
	</form>
	

</body>
</html>