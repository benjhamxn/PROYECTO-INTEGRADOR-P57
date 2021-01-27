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
<link rel="stylesheet" href="../estilos/Registro_Est.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
</head>
<body>
	
	<form action="Reg_Est.jsp" method="post">
	<div class="login-box">
			<img src="../img/cv.jpg"
				class="avatar animated infinite" alt="Avatar Image">
			<h1 class="animated infinite zoomIn slower">Registro Usuario Estudiante</h1>
			<label for="username"> Cedula: </label> <input type="text"
				name="Cedula" placeholder=" Ingrese su cedula "> 
			<label for="username"> Nombres: </label> <input type="text"
				name="Nombres" placeholder=" Ingrese sus nombres "> 
			<label for="username"> Apellidos: </label> <input type="text"
				name="Apellidos" placeholder=" Ingrese sus apellidos "> 
			<label for="username"> Dirección: </label> <input type="text"
				name="Direccion" placeholder=" Ingrese su dirección "> 
			<label for="username"> Telefono: </label> <input type="text"
				name="Telefono" placeholder=" Ingrese su N° de telefono "> 
			<label for="username"> E-mail: </label> <input type="text"
				name="Email" placeholder=" Ingrese su e-mail "> 
			<label for="username"> Cod. Tema: </label> <input type="text"
				name="Tema" placeholder=" Ingrese cod. tema "> 
			<label for="username"> Cod. Materia: </label> <input type="text"
				name="Materia" placeholder=" Ingrese cod. materia "> 
			<label for="username"> Cod. Campus: </label> <input type="text"
				name="Campus" placeholder=" Ingrese cod. campus "> 
			<label for="username"> Cod. Sesión: </label> <input type="text"
				name="Sesion" placeholder=" Ingrese cod. sesión "> 
			<label for="username"> Id(nombre): </label> <input type="text"
				name="Id" placeholder=" Ingrese su id(nombre) "> 
			<label for="username"> Contraseña: </label> <input type="text"
				name="Contrasenia" placeholder=" Ingrese una contraseña "> 
				<input type="submit" name="btnC" value="REGISTRAR" /> <br> <br>
			<a href="Registrar.jsp">REGRESAR</a> <br>
			<a href="In_Est.jsp">INICIAR SESIÓN</a>
		
	</div>
	</form>
<%
		if (request.getParameter("btnC") != null) {
			String cedula = request.getParameter("Cedula");
			String nombre = request.getParameter("Nombres");
			String apellido = request.getParameter("Apellidos");
			String direccion = request.getParameter("Direccion");
			String telefono = request.getParameter("Telefono");
			String email = request.getParameter("Email");
			String tema = request.getParameter("Tema");
			String materia = request.getParameter("Materia");
			String campus = request.getParameter("Campus");
			String sesion = request.getParameter("Sesion");
			String id = request.getParameter("Id");
			String contra = request.getParameter("Contrasenia");
			try {
				// Conexion con bd
				Class.forName("org.postgresql.Driver");
				Connection conexion = DriverManager
						.getConnection("jdbc:postgresql://localhost:5432/PROYECTO_INTEGRADOR", "postgres", "1234");
				if (!conexion.isClosed()) {
					// La consulta
					Statement st = conexion.createStatement();
					ResultSet rs = st.executeQuery("INSERT INTO usuarios_login VALUES('"+ id +"','"+ contra +"','estudiante');"
					+ "INSERT INTO estudiante VALUES('"+ cedula +"','"+ nombre +"','"+ apellido +"','"+ direccion +"',"+ telefono 
					+ ",'"+ email +"','"+ tema +"','"+ materia +"','"+ campus +"','"+ sesion +"','"+ id +"');");

					// cierre de la conexion
					conexion.close();
				} else
					// Error en la conexion
					out.println("fallo");
			} catch (Exception e) {
				// Error en algun momento.
				out.println("USUARIO ESTUDIANTE REGISTRADO");
			}
		}
	%>

</body>
</html>
	