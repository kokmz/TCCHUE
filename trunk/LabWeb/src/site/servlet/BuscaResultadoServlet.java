package site.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.vo.Exame;

/**
 * Servlet implementation class BuscaResultadoServlet
 */
@WebServlet("/BuscaResultadoServlet")
public class BuscaResultadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BuscaResultadoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//tenta obter lista de alunos da aplicação
		
		Integer cod_verif = Integer.parseInt(request.getParameter("cod_verif"));
		
		ExameDao exameDao = new ExameDao();		
		List<Exame> resultado = exameDao.getResultado(cod_verif);

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("resultado", resultado);
		getServletContext().getRequestDispatcher( "/consultaResultado.jsp").forward(request, response);
	}

}
