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

/**
 * Servlet Filter implementation class FiltroAutenticacao
 */
@WebFilter(dispatcherTypes = {DispatcherType.REQUEST }
					, urlPatterns = { "/" })
public class FiltroAutenticacao implements Filter {

    /**
     * Default constructor. 
     */
    public FiltroAutenticacao() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
         
        //obtem URL requisitada
        String uri = req.getRequestURI();
         
        HttpSession session = req.getSession();

        //se n�o for p�gina html est�tica, nem LoginServlet e nem p�gina inicial index.jsp, retorna usua�rio para index.jsp
        if(session.getAttribute("loginUsuario") == null && !(uri.endsWith("html") || uri.endsWith("LoginServlet") || uri.endsWith("index.jsp"))){
        	chain.doFilter(request, response);
        }else{
            // passa a requisi��o adiante
            chain.doFilter(request, response);
        }
    }


	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
