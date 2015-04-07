package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.UsuarioDao;
import site.vo.PerfilUsuario;
import site.vo.Usuario;


/**
 * Servlet implementation class GestorServlet
 */
@WebServlet("/GestorServlet")
public class GestorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestorServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idUsuario = request.getParameter("idUsuario");
			String nome = request.getParameter("nome");
			String telefone = request.getParameter("telefone");
			String email = request.getParameter("email");
			String password =request.getParameter("password");
			String conf_password = request.getParameter("conf_password");
			
			
			if (nome != null && !nome.isEmpty() && telefone != null && !telefone.isEmpty() && email != null && !email.isEmpty() && password != null && !password.isEmpty()){
				if (conf_password == null)
				{
					request.setAttribute("mensagemErro", "Campos vazios");
					getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);          
				}
				else
				{
					
					Usuario novoUsuario = new Usuario();
					novoUsuario.setNome(nome);
					novoUsuario.setTelefone(telefone);
					novoUsuario.setEmail(email);
					novoUsuario.setPassword(conf_password);
					novoUsuario.setPerfil(PerfilUsuario.GESTOR);
					
					
					if (idUsuario != null)
					{
						novoUsuario.setId_usuario(Integer.parseInt(idUsuario));
					}
					
					UsuarioDao UsuarioDao = new UsuarioDao();
					
					boolean sucesso = false;
					if (novoUsuario.getId_usuario() > 0)
					{
						sucesso = UsuarioDao.updateUsuario(novoUsuario);
						
					}
					else
					{
						sucesso = UsuarioDao.insertUsuario(novoUsuario);
						
					}
					
					if (sucesso)
					{
			            //requisi��o foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						response.sendRedirect(getServletContext().getContextPath() + "/ListaGestorServlet");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "N�o foi poss�vel salvar dados do Paciente.");
						getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);
					}
				}			
		}
			else {
				request.setAttribute("mensagemErro", "Informa��es do paciente est�o inv�lida.");
				getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);	    	
			}
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informa��es do Paciente est�o inv�lidas.");
			getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);
		}
	}    
}
