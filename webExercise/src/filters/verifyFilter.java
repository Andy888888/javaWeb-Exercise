package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 描述:验证.
 * <p>
 *
 * @author yanwenqiang.
 * @date 2018/12/10
 */
@WebFilter(filterName = "verifyFilter", urlPatterns = "/register")
public class verifyFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        String key = req.getParameter("t");
        if (key == null || !"123".equals(key)) {
            resp.setContentType("text/html;charset=utf-8");
            PrintWriter out = resp.getWriter();
            out.println("<h1>");
            out.println("you not have permission preview this page! ");
            out.println("</h1>");
            return;
        }
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
