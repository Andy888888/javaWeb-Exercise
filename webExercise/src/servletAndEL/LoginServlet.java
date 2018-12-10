package servletAndEL;

import servletAndEL.model.StudentDo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 描述:登录服务处理.
 * <p>
 *
 * @author yanwenqiang.
 * @date 2018/11/27
 */
public class LoginServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        doSomething(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        doSomething(req, resp);
    }

    private void doSomething(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("utf-8");

        String name = req.getParameter("name");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String number = req.getParameter("number");

        StudentDo studentDo = new StudentDo();
        studentDo.setName(name);
        studentDo.setGender(gender);
        studentDo.setAge(age);
        studentDo.setNumber(number);

        req.setAttribute("student", studentDo);
        req.getRequestDispatcher("/detail.jsp").forward(req, resp);
//        resp.sendRedirect("/detail.jsp");
    }
}
