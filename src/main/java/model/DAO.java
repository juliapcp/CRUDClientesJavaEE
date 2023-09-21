package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	private String driver = "org.postgresql.Driver";
	private String url = "jdbc:postgresql://127.0.0.1:5432/projeto_gerenciamento?useTimezone=true&serverTimezone=UTC";
	private String user = "postgres";
	private String password = "postgres";
	
	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user ,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
