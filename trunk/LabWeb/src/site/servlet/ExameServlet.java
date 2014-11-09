package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;
import site.dao.PacienteDao;
import site.vo.Examelab;
import site.vo.Paciente;

/**
 * Servlet implementation class ExameServlet
 */
@WebServlet("/ExameServlet")
public class ExameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExameServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplica��o
		PacienteDao pacienteDao = new PacienteDao();
		List<Paciente> pacientes = pacienteDao.getPacientes();
		
		ExamelabDao examelabDao = new ExamelabDao();
		List<Examelab> exames = examelabDao.getExameslabs();
		

		//grava a lista de alunos no escopo de requisi��o para acessar no arquivo alunos.jsp
		request.setAttribute("exames", exames);
		request.setAttribute("pacientes", pacientes);
		getServletContext().getRequestDispatcher( "/exame.jsp").forward(request, response);
		
	}
	
}
