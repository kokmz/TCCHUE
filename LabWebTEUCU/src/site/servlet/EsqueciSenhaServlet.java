package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.SendMail;
import site.dao.UsuarioDao;
import site.vo.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/EsqueciSenhaServlet")
public class EsqueciSenhaServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  public EsqueciSenhaServlet() {
      super();
      // TODO Auto-generated constructor stub
  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String email = request.getParameter("email");


    if (email.isEmpty())
    {
      String mensagem = "Digite um Email!";
      request.setAttribute("mensagemErro", mensagem);
      getServletContext().getRequestDispatcher("/EsqueciMinhaSenha.jsp").forward(request, response);
    }
    else
    {
    	UsuarioDao usuarioDao = new UsuarioDao();
		Usuario usuario = usuarioDao.getEmail(email);
		if (usuario != null)
		{	
			
			SendMail send = new SendMail();
			send.sendMail("contato.clinicalab@gmail.com", email, "Redefinir Senha - Clinica Lab", ("Ola para redefinir sua senha acesse o link: http://env-5829113.jelasticlw.com.br/war/RedefinirSenhaServlet?email="+email));
			
			String mensagem = "Foi enviado um email para redefinição da senha!";
			request.setAttribute("mensagemErro", mensagem);
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			
			
		}
		else
		{
			String mensagem = "Email não existe no cadastro!";
			request.setAttribute("mensagemErro", mensagem);
			getServletContext().getRequestDispatcher("/EsqueciMinhaSenha.jsp").forward(request, response);
		}
	}
}
}