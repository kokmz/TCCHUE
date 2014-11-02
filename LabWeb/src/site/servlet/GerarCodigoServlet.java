package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.GerarCodigoDao;


/**
 * Servlet implementation class GerarCodigoServlet
 */
@WebServlet("/GerarCodigoServlet")
public class GerarCodigoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GerarCodigoServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			
			GerarCodigoDao gerarcodigoDao = new GerarCodigoDao();
			
			Integer cod_verificacao = 0;
			gerarcodigoDao.createCodigo(cod_verificacao);
			
			request.setAttribute("cod_verificacao", cod_verificacao);

		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Erro ao gerar código.");
			getServletContext().getRequestDispatcher("/gestor1.jsp").forward(request, response);
		}
	}    
}
