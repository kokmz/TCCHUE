package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.DuvidaDao;
import site.vo.Duvida;

/**
 * Servlet implementation class ResponderDuvidaServlet
 */
@WebServlet("/ResponderDuvidaServlet")
public class ResponderDuvidaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ResponderDuvidaServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int idDuvida = -1;
		if (request.getParameter("duvida") != null)
		{
			try 
			{
				idDuvida = Integer.parseInt(request.getParameter("duvida"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno ser� invalido
			}			
		}  

		//se id aluno for inv�lido, retorna usu�rio para a p�gina index para informar o erro
		if (idDuvida < 0)
		{
			request.setAttribute("mensagemErro", "Id da d�vida inv�lida.");
			getServletContext().getRequestDispatcher("/duvida.jsp").forward(request, response);
		}
		else
		{
			DuvidaDao duvidaDao = new DuvidaDao();

			Duvida duvida = duvidaDao.getDuvida(idDuvida);

			//grava o aluno no escopo de requisi��o para acessar no arquivo index.jsp
			request.setAttribute("duvida", duvida);
			getServletContext().getRequestDispatcher( "/montaResponderDuvida.jsp").forward(request, response);
		}
	}
}
