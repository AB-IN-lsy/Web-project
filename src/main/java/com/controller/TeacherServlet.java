package com.controller;

import com.dao.IndexDao;
import com.entity.Teacher;
import com.util.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/25 20:22
 * @Project : test
 */
@WebServlet("/teacher")
public class TeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IndexDao indexDao = new IndexDao();
        req.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
        req.setAttribute("laboratories", indexDao.getLaboratories());
        req.setAttribute("majors", indexDao.getMajors());
        req.setAttribute("teachers", indexDao.getTeachers());
        req.setAttribute("news", indexDao.getNews());
        req.getRequestDispatcher("WEB-INF/jsp_teacher/index_teacher.jsp").forward(req, resp);
    }
}
