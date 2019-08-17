package com.gmail.natali;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class StatisticServlet extends HttpServlet {
    private Map<Integer, Map<String, Integer>> stat = new HashMap<>();


    @Override
    public void init() throws ServletException {
        super.init();
        stat.put(1, new HashMap<String, Integer>());
        stat.put(2, new HashMap<String, Integer>());
        stat.get(1).put("Java", 0);
        stat.get(1).put("Fortran", 0);
        stat.get(1).put("Python", 0);
        stat.get(2).put("JSP", 0);
        stat.get(2).put("JSP+JSTL", 0);
        stat.get(2).put("Thymeleaf", 0);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String lastName = req.getParameter("last name");
        int age = Integer.valueOf(req.getParameter("age"));
        String language = req.getParameter("language");
        String template = req.getParameter("template");

        Map<String, Integer> q1 = stat.get(1);
        Integer count = q1.get(language);
        if (count != null) {
            q1.put(language, count + 1);
        }
        Map<String, Integer> q2 = stat.get(2);
        Integer count2 = q2.get(template);
        if (count2 != null) {
            q2.put(template, count2 + 1);
        }
        req.setAttribute("name", name);
        req.setAttribute("lastname", lastName);
        req.setAttribute("age", age);
        req.setAttribute("statistic", stat);

        RequestDispatcher rDisp =
                getServletContext().getRequestDispatcher("/stat.jsp");
        rDisp.forward(req, resp);
    }
}
