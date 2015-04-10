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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  public LoginServlet() {
      super();
      // TODO Auto-generated constructor stub
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String login = request.getParameter("login");
    String password = request.getParameter("password");


    if (login == null || login.isEmpty() || password == null || password.isEmpty())
    {
      String mensagem = "Login ou senha inválidos!";
      request.setAttribute("mensagemErro", mensagem);
      getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
    else
    {
    	UsuarioDao usuarioDao = new UsuarioDao();
		Usuario usuario = usuarioDao.getUsuario(login, password);
		if (usuario != null)
		{
			request.getSession().setAttribute("loginUsuario", usuario);
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			String mensagem = "Login ou senha inválidos!";
			request.setAttribute("mensagemErro", mensagem);
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}
}
}