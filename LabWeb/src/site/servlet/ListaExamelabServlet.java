package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;
import site.vo.Examelab;

/**
 * Servlet implementation class ListaExamelabServlet
 */
@WebServlet("/ListaExamelabServlet")
public class ListaExamelabServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListaExamelabServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
		
		String letraBusca = "";
		
		ExamelabDao examelabDao = new ExamelabDao();
		
		if (request.getParameter("letra") != null)
		{
			letraBusca = request.getParameter("letra");		
		}
		else 
		{
			letraBusca = null;			
		}
		
		List<Examelab> examelabs = examelabDao.getExamelabs(letraBusca);

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("examelabs", examelabs);
		getServletContext().getRequestDispatcher( "/exames_laboratoriais.jsp").forward(request, response);
	}

}
