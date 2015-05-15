package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedefinirSenhaServlet
 */
@WebServlet("/RedefinirSenhaServlet")
public class RedefinirSenhaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RedefinirSenhaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
		
		String email = "";
		
		
		if (request.getParameter("email") != null)
		{
			email = request.getParameter("email");		
		}
		else 
		{
			email = null;			
		}

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("email_usuario", email);
		getServletContext().getRequestDispatcher( "/redefinirSenha.jsp").forward(request, response);
	}

}
