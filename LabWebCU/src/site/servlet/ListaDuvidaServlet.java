package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.DuvidaDao;
import site.vo.Duvida;

/**
 * Servlet implementation class ListaDuvidaServlet
 */
@WebServlet("/ListaDuvidaServlet")
public class ListaDuvidaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaDuvidaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
		DuvidaDao duvidaDao = new DuvidaDao();
		List<Duvida> duvidas = duvidaDao.getDuvidas();

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("duvidas", duvidas);
		getServletContext().getRequestDispatcher( "/duvida.jsp").forward(request, response);
	}

}
