/*
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 19:15:22
 * @FilePath: \test\src\main\java\com\controller\IndexServlet.java
 * @LastEditTime: 2021-11-20 20:57:10
 */
package com.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/jsp/index.jsp").forward(req, resp);
    }
}
