package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.UsuarioDao;
import site.vo.Usuario;

/**
 * Servlet implementation class ObterGestorServlet
 */
@WebServlet("/ObterGestorServlet")
public class ObterGestorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ObterGestorServlet() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int idUsuario = -1;
		if (request.getParameter("usuario") != null)
		{
			try 
			{
				idUsuario = Integer.parseInt(request.getParameter("usuario"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno ser� invalido
			}			
		}  

		//se id aluno for inv�lido, retorna usu�rio para a p�gina index para informar o erro
		if (idUsuario < 0)
		{
			request.setAttribute("mensagemErro", "Id do gestor inv�lido.");
			getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);
		}
		else
		{
			UsuarioDao usuarioDao = new UsuarioDao();

			Usuario usuario = usuarioDao.getUsuario("nome","password");

			//grava o aluno no escopo de requisi��o para acessar no arquivo index.jsp
			request.setAttribute("usuario", usuario);
			getServletContext().getRequestDispatcher( "/montaGestor.jsp").forward(request, response);
		}
	}
}
