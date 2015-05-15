package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.ExameDao;
import site.vo.Exame;

/**
 * Servlet implementation class ObterExameServlet
 */
@WebServlet("/ObterExameServlet")
public class ObterExameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ObterExameServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int idExame = -1;
		if (request.getParameter("exame") != null)
		{
			try 
			{
				idExame = Integer.parseInt(request.getParameter("exame"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno será invalido
			}			
		}  

		//se id aluno for inválido, retorna usuário para a página index para informar o erro
		if (idExame < 0)
		{
			request.setAttribute("mensagemErro", "Id do exame inválido.");
			getServletContext().getRequestDispatcher("/ExameServlet").forward(request, response);
		}
		else
		{
			ExameDao exameDao = new ExameDao();

			Exame exame = exameDao.getExame(idExame);

			//grava o aluno no escopo de requisição para acessar no arquivo index.jsp
			request.setAttribute("exame", exame);
			getServletContext().getRequestDispatcher( "/ExameServlet").forward(request, response);
		}
	}
}
