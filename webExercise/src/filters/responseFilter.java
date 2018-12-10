package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * 描述:统一处理支持中文utf-8.
 * <p>
 *
 * @author yanwenqiang.
 * @date 2018/12/10
 */
@WebFilter(filterName = "responseFilter",urlPatterns = "/*")
public class responseFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
