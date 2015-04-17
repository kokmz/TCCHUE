package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.vo.Estado;
import site.vo.Logradouro;

/**
 * Servlet implementation class TelaPacienteServlet
 */
@WebServlet("/TelaPacienteServlet")
public class TelaPacienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TelaPacienteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
				
		PacienteDao pacienteDao = new PacienteDao();
		List<Estado> estado = pacienteDao.getEstado();
		
		List<Logradouro> logradouro = pacienteDao.getLogradouro();
		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("estado", estado);
		request.setAttribute("logradouro", logradouro);
		getServletContext().getRequestDispatcher( "/gestor1.jsp").forward(request, response);
		
	}
	
}
