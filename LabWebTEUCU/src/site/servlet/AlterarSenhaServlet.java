package site.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.dao.PacienteDao;
import site.dao.PdfHistorico;
import site.dao.UsuarioDao;
import site.vo.Paciente;
import site.vo.Usuario;

/**
 * Servlet implementation class AlterarSenhaServlet
 */
@WebServlet("/AlterarSenhaServlet")
public class AlterarSenhaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AlterarSenhaServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//tenta obter lista de alunos da aplicação
		
		int idUsuario = -1;		
		
		if (request.getParameter("alterarsenha") != null)
		{
			try 
			{
				idUsuario = Integer.parseInt(request.getParameter("alterarsenha"));
			}
			catch (Exception ex)
			{
				//faz nada. idAluno será invalido
			}			
		} 
		
		if (idUsuario < 0)
		{
			request.setAttribute("mensagemErro", "Id do paciente inválido.");
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else
		{
			
			UsuarioDao usuarioDao = new UsuarioDao();				
			Usuario usuario = usuarioDao.getUsarioCompleto(idUsuario);
						

		//grava a lista de alunos no escopo de requisição para acessar no arquivo alunos.jsp
		request.setAttribute("usuario", usuario);
		getServletContext().getRequestDispatcher( "/redefinirSenhaLogado.jsp").forward(request, response);
		}
	}
}
