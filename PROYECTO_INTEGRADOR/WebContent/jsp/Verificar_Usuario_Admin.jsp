<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="CONTROLADOR.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Usuarios perfil = new Usuarios();
		String usu = request.getParameter("usuario");
		String contra = request.getParameter("clave");
		HttpSession sesion = request.getSession(); 

		boolean respuesta = perfil.obtenerUsuario_Ad(usu,contra);
		if (respuesta) {
			sesion.setAttribute("usuario", perfil.getUser());
		
			sesion.setAttribute("clave", perfil.getClave());
			
			response.sendRedirect("Con_Inv.jsp");
		} else {
	%>

	<jsp:forward page="In_Admin.jsp">
		<jsp:param name="error"
			value="Datos incorrectos.<br>Vuelva a intentarlo." />
	</jsp:forward>

	<script>
		alert('¡Usuario o Clave incorrecta!');
		//Solo permite introducir numeros.
	</script>
	<%
		}
	%>
</body>
</html>