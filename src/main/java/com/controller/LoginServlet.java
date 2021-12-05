package com.controller;

import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/12/5 10:16
 * @Project : test
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if(user == null){
            req.getRequestDispatcher("WEB-INF/jsp_back/login.jsp")
                    .forward(req, resp);
        }
        else{
            resp.sendRedirect(req.getContextPath() + "/findall");
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        String passwd = req.getParameter("passwd");
        User user = new User(account, passwd);
        String relUrl;
        if("admin".equals(account) && "20010831".equals(passwd)){
            req.getSession().setAttribute("user", user);
            relUrl = "/findall";
        }
        else{
            relUrl = "/login";
        }
        resp.sendRedirect(req.getContextPath() + relUrl);
    }
}
