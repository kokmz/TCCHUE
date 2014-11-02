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
				//faz nada. idAluno será invalido
			}			
		}  

		//se id aluno for inválido, retorna usuário para a página index para informar o erro
		if (idUsuario < 0)
		{
			request.setAttribute("mensagemErro", "Id do gestor inválido.");
			getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);
		}
		else
		{
			UsuarioDao usuarioDao = new UsuarioDao();

			Usuario usuario = usuarioDao.getUsuario("nome","password");

			//grava o aluno no escopo de requisição para acessar no arquivo index.jsp
			request.setAttribute("usuario", usuario);
			getServletContext().getRequestDispatcher( "/montaGestor.jsp").forward(request, response);
		}
	}
}
