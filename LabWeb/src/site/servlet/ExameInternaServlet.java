package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExamelabDao;
import site.vo.Examelab;

/**
 * Servlet implementation class ExameInternaServlet
 */
@WebServlet("/ExameInternaServlet")
public class ExameInternaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ExameInternaServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int id_tabelaExame = -1;
		if (request.getParameter("exame") != null)
		{
			try 
			{
				id_tabelaExame = Integer.parseInt(request.getParameter("exame"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno ser� invalido
			}			
		}  

		//se id aluno for inv�lido, retorna usu�rio para a p�gina index para informar o erro
		if (id_tabelaExame < 0)
		{
			request.setAttribute("mensagemErro", "Id do exame inv�lido.");
			getServletContext().getRequestDispatcher("/exame_laboratoriais.jsp").forward(request, response);
		}
		else
		{
			ExamelabDao examelabDao = new ExamelabDao();

			Examelab examelab = examelabDao.getExamelab(id_tabelaExame);

			//grava o aluno no escopo de requisi��o para acessar no arquivo index.jsp
			request.setAttribute("exame", examelab);
			getServletContext().getRequestDispatcher( "/montaMostraProcedimento.jsp").forward(request, response);
		}
	}
}
