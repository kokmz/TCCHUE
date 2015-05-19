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
 * Servlet implementation class RedefinirSenhaFinalServlet
 */
@WebServlet("/RedefinirSenhaFinalServlet")
public class RedefinirSenhaFinalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RedefinirSenhaFinalServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String conf_password = request.getParameter("conf_password");
			
			if (password.isEmpty() || conf_password.isEmpty()){
				
				request.setAttribute("mensagemErro", "Preencha todos os Campos");
				getServletContext().getRequestDispatcher("/RedefinirSenhaServlet?email="+email).forward(request, response);
				
			}else{
				if (!password.equals(conf_password))
				{
					request.setAttribute("mensagemErro", "Senhas n�o conferem");
					getServletContext().getRequestDispatcher("/RedefinirSenhaServlet?email="+email).forward(request, response);          
				}
				else
				{
					
					Usuario novoUsuario = new Usuario();
					novoUsuario.setEmail(email);
					novoUsuario.setPassword(password);
					
					
					UsuarioDao UsuarioDao = new UsuarioDao();
					
					boolean sucesso = false;
				
					sucesso = UsuarioDao.updateSenha(novoUsuario);
	
				
					if (sucesso)
					{
			            //requisi��o foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						request.setAttribute("mensagemErro", "A senha foi redefinida com sucesso.");
						response.sendRedirect(getServletContext().getContextPath() + "/index.jsp");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "N�o foi poss�vel redefinir sua senha.");
						getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
					}
				}			
			}
		
			
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informa��es do Usu�rio est�o inv�lidas.");
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}    
}
