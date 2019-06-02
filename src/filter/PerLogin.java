package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "PerLogin",urlPatterns = {"/store_manager_page/*","/top_manager_page/*"})
public class PerLogin implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest)req;
        HttpServletResponse res = (HttpServletResponse) resp;
//        String path = ((HttpServletRequest) req).getRequestURI();
        HttpSession session = httpRequest.getSession();
        if (session.getAttribute("username")!=null) {
            chain.doFilter(req, resp);
        }
        else{
            String result = "请登录";
            session.setAttribute("state",result);
            res.sendRedirect(((HttpServletRequest) req).getContextPath() + "/manager_login.jsp");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
