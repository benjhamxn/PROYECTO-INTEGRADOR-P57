package MODELO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
	private Statement St;
	private static String driver;
	private static String user;
	private static String pwd;
	private static String cadena;
	private Connection con;

	static String getDriver() {
		return driver;
	}

	static String getUser() {
		return user;
	}

	static String getPwd() {
		return pwd;
	}

	static String getCadena() {
		return cadena;
	}

	public Connection getConexion() {
		return this.con;
	}

	public Conexion() {

		this.driver = "org.postgresql.Driver";
		this.user = "postgres";
		this.pwd = "123";
		this.cadena = "jdbc:postgresql://localhost:5432/Base_alterna";
		this.con = this.crearConexion();

	}

	public static Connection crearConexion() {
		try {
			Class.forName("org.postgresql.Driver");
			System.out.println("Conexion 1: Exitosa");
		} catch (ClassNotFoundException e) {

		}

			try {
				Class.forName(getDriver()).getDeclaredConstructor().newInstance();
				Connection con = DriverManager.getConnection(getCadena(), getUser(), getPwd());
				System.out.println("Conexion 2: Exitosa");
				return con;
			} catch (Exception ee) {
				System.out.println("Error: " + ee.getMessage());
				return null;
		}
	}

	public String Ejecutar(String sql) {
		String error = "";
		try {
			St = getConexion().createStatement();
			St.execute(sql);
			error = "Datos insertados";
		} catch (Exception ex) {
			error = ex.getMessage();
		}
		return (error);
	}

	public ResultSet Consulta(String sql) {
		String error = "";
		ResultSet reg = null;

		try {
			St = getConexion().createStatement();
			reg = St.executeQuery(sql);

		} catch (Exception ee) {
			error = ee.getMessage();
		}
		return (reg);
	}

	public void cerrarConexion() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}