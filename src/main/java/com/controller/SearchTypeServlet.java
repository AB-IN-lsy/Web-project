package com.controller;

import com.dao.IndexDao;
import com.entity.ArticleLaboratory;
import com.entity.Major;
import com.entity.News;
import com.entity.User;
import com.util.DataSourceUtils;

import javax.servlet.RequestDispatcher;
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
 * @Time : 2021/12/10 14:17
 * @Project : test
 */
@WebServlet("/searchType")
public class SearchTypeServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("Type");
        String searchWords = (String) request.getParameter("SearchWords");
        IndexDao indexDao = new IndexDao();
        if("1".equals(type)){
//            科学研究 labnews
            request.setAttribute("article_laboratory", indexDao.searchArticleLaboratory(searchWords));
            request.setAttribute("laboratories", indexDao.getLaboratories());
            request.setAttribute("majors", indexDao.getMajors());
            request.setAttribute("teachers", indexDao.getTeachers());
            request.setAttribute("news", indexDao.getNews());
            request.getRequestDispatcher("WEB-INF/jsp_labnews/index_labnews.jsp")
                    .forward(request, response);
        }
        if("2".equals(type)){
//            教育教学 major
            request.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
            request.setAttribute("laboratories", indexDao.getLaboratories());
            request.setAttribute("majors", indexDao.searchMajor(searchWords));
            request.setAttribute("teachers", indexDao.getTeachers());
            request.setAttribute("news", indexDao.getNews());
            request.getRequestDispatcher("WEB-INF/jsp_major/index_major.jsp")
                    .forward(request, response);
        }
        if("3".equals(type)){
//            学校团队 teacher
            request.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
            request.setAttribute("laboratories", indexDao.getLaboratories());
            request.setAttribute("majors", indexDao.getMajors());
            request.setAttribute("teachers", indexDao.searchTeacher(searchWords));
            request.setAttribute("news", indexDao.getNews());
            request.getRequestDispatcher("WEB-INF/jsp_teacher/index_teacher.jsp")
                    .forward(request, response);
        }
        if("4".equals(type)){
//            新闻动态 news
            request.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
            request.setAttribute("laboratories", indexDao.getLaboratories());
            request.setAttribute("majors", indexDao.getMajors());
            request.setAttribute("teachers", indexDao.getTeachers());
            request.setAttribute("news", indexDao.searchNews(searchWords));
            request.getRequestDispatcher("WEB-INF/jsp_news/index_news.jsp")
                    .forward(request, response);
        }
        if("5".equals(type)){
//            实验室览 lab
            request.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
            request.setAttribute("laboratories", indexDao.searchLaboratory(searchWords));
            request.setAttribute("majors", indexDao.getMajors());
            request.setAttribute("teachers", indexDao.getTeachers());
            request.setAttribute("news", indexDao.getNews());
            request.getRequestDispatcher("WEB-INF/jsp_lab/index_lab.jsp")
                    .forward(request, response);
        }
    }
}
