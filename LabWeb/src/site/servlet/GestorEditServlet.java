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
 * Servlet implementation class GestorEditServlet
 */
@WebServlet("/GestorEditServlet")
public class GestorEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GestorEditServlet() {
		super();
	} 

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {    
			String idUsuario = request.getParameter("idUsuario");
			String nome = request.getParameter("nome");
			String telefone = request.getParameter("telefone");
			String email = request.getParameter("email");
			
			
			if (nome.isEmpty() ||telefone.isEmpty() || email.isEmpty() ){
				
				request.setAttribute("mensagemErro", "Preencha todos os Campos");
				getServletContext().getRequestDispatcher("/montaGestor.jsp").forward(request, response);   
				
			}else{
								
					Usuario novoUsuario = new Usuario();
					novoUsuario.setNome(nome);
					novoUsuario.setTelefone(telefone);
					novoUsuario.setEmail(email);
					
					
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
			            //requisição foi bem sucedida, vamos finaliza-la e redirecionar o usuario para outro servlet
						
						response.sendRedirect(getServletContext().getContextPath() + "/ListaGestorServlet");                            
					}
					else
					{
						request.setAttribute("mensagemErro", "Email ja existente no cadastro");
						getServletContext().getRequestDispatcher("/montaEditGestor.jsp").forward(request, response);
					}
				}			

			
		}
		catch (Exception e) {
			request.setAttribute("mensagemErro", "Informações do Paciente estão inválidas.");
			getServletContext().getRequestDispatcher("/montaEditGestor.jsp").forward(request, response);
		}
	}    
}
