package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.JavaBeans;

/**
 * Servlet implementation class Controller
 */
@WebServlet(urlPatterns = { "/Controller", "/listagemClientes", "/cadastroCliente" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		if (action.equalsIgnoreCase("/listagemClientes")) {
			listagemClientes(request, response);
		} else if (action.equalsIgnoreCase("/cadastroCliente")) {
			cadastroCliente(request, response);
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void listagemClientes(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DAO dao = new DAO();
		ArrayList<JavaBeans> clientes = dao.listarClientes();
		request.setAttribute("clientes",clientes);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("listagemClientes.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void cadastroCliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JavaBeans cliente = new JavaBeans();
		cliente.setEmail(request.getParameter("email"));
		cliente.setNome(request.getParameter("nome"));
		cliente.setTelefone(request.getParameter("telefone"));
		DAO dao = new DAO();
		dao.inserirCliente(cliente);
		response.sendRedirect("listagemClientes");
	}
}
