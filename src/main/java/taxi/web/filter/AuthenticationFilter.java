package taxi.web.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.Filter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

public class AuthenticationFilter implements Filter {

    private Set<String> allowedUrls = new HashSet<>();

    @Override
    public void init(FilterConfig filterConfig) {
        allowedUrls.add("/login");
        allowedUrls.add("/drivers/add");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        Long driver_id = (Long) session.getAttribute("driver_id");
        if(driver_id == null && allowedUrls.contains(req.getServletPath())) {
            filterChain.doFilter(req, resp);
            return;
        }
        if(driver_id == null) {
            resp.sendRedirect("/login");
            return;
        }
        filterChain.doFilter(req,resp);
    }
}
