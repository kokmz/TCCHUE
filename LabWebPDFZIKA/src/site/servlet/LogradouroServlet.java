package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.vo.Logradouro;

/**
 * Servlet implementation class LogradouroServlet
 */
@WebServlet("/LogradouroServlet")
public class LogradouroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogradouroServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
				
		PacienteDao pacienteDao = new PacienteDao();
		
		List<Logradouro> logradouro = pacienteDao.getLogradouro();

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("logradouro", logradouro);
		getServletContext().getRequestDispatcher( "/Logradouro.jsp").forward(request, response);
		
	}
	
}
