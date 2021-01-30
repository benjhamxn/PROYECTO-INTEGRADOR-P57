package CONTROLADOR;

import java.sql.ResultSet;

import MODELO.Conexion;

public class Usuarios {
	private String User;
	private String Clave;
	private String Nombre;
	private String Apellido;

	public Usuarios(String user, String clave, String nombre, String apellido) {

		this.User = user;
		this.Clave = clave;
		this.Nombre = nombre;
		this.Apellido = apellido;

	}

	public Usuarios() {
		// TODO Auto-generated constructor stub
	}

	public String getClave() {
		return Clave;
	}

	public void setClave(String clave) {
		Clave = clave;
	}

	public String getUser() {
		return User;
	}

	public void setUser(String user) {
		User = user;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public String getApellido() {
		return Apellido;
	}

	public void setApellido(String apellido) {
		Apellido = apellido;
	}


	public boolean obtenerUsuario_I(String usu, String contra) {

		boolean respuesta = false;
		String sentencia = "select * from roles as u where u.nombre='" + usu + "' and u.contrasenia= '"
				+ contra + "' and role = 'invitado';";
		System.out.print("BIENVENIDO");
		try {
			ResultSet rs;
			Conexion clsCon = new Conexion();
			rs = clsCon.Consulta(sentencia);
			if (rs.next()) {
				respuesta = true;
				this.setUser(usu);
				this.setClave(contra);
			} else {
				respuesta = false;
				rs.close();
			}
		} catch (Exception ex) {
			System.out.println("USUARIO O CONTRASEÑA INCORRECTOS");
		}
		return respuesta;

	}

	public boolean obtenerUsuario_Ad(String usu, String contra) {

		boolean respuesta = false;
		String sentencia = "select * from roles as u where u.nombre='" + usu + "' and u.contrasenia= '"
				+ contra + "' and role = 'Admin';";
		System.out.print(sentencia);
		try {
			ResultSet rs;
			Conexion clsCon = new Conexion();
			rs = clsCon.Consulta(sentencia);
			if (rs.next()) {
				respuesta = true;
				this.setUser(usu);
				this.setClave(contra);
			} else {
				respuesta = false;
				rs.close();
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return respuesta;

	}

}
