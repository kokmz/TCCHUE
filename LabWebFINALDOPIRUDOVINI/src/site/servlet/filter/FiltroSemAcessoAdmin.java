package site.servlet.filter;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import site.vo.Usuario;

/**
 * Servlet Filter implementation class FiltroSemAcessoAdmin
 */
@WebFilter(
		dispatcherTypes = {DispatcherType.REQUEST }
					, 
		urlPatterns = {"/"
		})
public class FiltroSemAcessoAdmin implements Filter {

    /**
     * Default constructor. 
     */
    public FiltroSemAcessoAdmin() {
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
         
        HttpSession session = req.getSession();

        if(session.getAttribute("loginUsuario") != null) {
        	Usuario usuario = (Usuario) session.getAttribute("loginUsuario");
        	
        	if (usuario.getPerfil().isAdmin())	{        		
        		res.sendRedirect(req.getServletContext().getContextPath() + "/index.jsp");
        		return;
        	}        	
        }else{

        // passa a requisição adiante
        chain.doFilter(request, response);
	}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
	}

}
