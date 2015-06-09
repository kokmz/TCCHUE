package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.vo.Paciente;

/**
 * Servlet implementation class ListaPacienteHistoricoServlet
 */
@WebServlet("/ListaPacienteHistoricoServlet")
public class ListaPacienteHistoricoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaPacienteHistoricoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		PacienteDao pacienteDao = new PacienteDao();
		List<Paciente> pacientes = pacienteDao.getPacientes();
		
		request.setAttribute("pacientes", pacientes);
		getServletContext().getRequestDispatcher( "/historicoExames.jsp").forward(request, response);
	}

}