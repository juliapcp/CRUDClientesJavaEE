package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	public void inserirCliente(JavaBeans cliente) {
		String insert = "insert into public.\"Cliente\" (uuid, nome, email, telefone) values (gen_random_uuid(), ?, ?, ?)";
		try {
			Connection con = conectar();
			PreparedStatement preparedStatement = con.prepareStatement(insert);
			preparedStatement.setString(1, cliente.getNome());
			preparedStatement.setString(2, cliente.getEmail());
			preparedStatement.setString(3, cliente.getTelefone());
			preparedStatement.executeUpdate();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<JavaBeans> listarClientes(){
		String select = "select * from public.\"Cliente\"";
		try {
			Connection con = conectar();
			PreparedStatement preparedStatement = con.prepareStatement(select);
			ResultSet rs = preparedStatement.executeQuery();
			ArrayList<JavaBeans> clientes = new ArrayList<>();
			while(rs.next()) {
				String nome = rs.getString("nome");
				String telefone = rs.getString("telefone");
				String email = rs.getString("email");
				JavaBeans cliente = new JavaBeans();
				cliente.setEmail(email);
				cliente.setNome(nome);
				cliente.setTelefone(telefone);
				clientes.add(cliente);
			}
			con.close();
			return clientes;
		} catch (Exception e) {
			return null;
		}
		
	}
	
}
