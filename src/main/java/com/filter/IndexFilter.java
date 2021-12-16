package com.filter;

import com.dao.IndexDao;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/12/16 20:53
 * @Project : test
 */
@WebFilter("/index.jsp")
public class IndexFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        IndexDao indexDao = new IndexDao();
        req.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
        req.setAttribute("laboratories", indexDao.getLaboratories());
        req.setAttribute("majors", indexDao.getMajors());
        req.setAttribute("teachers", indexDao.getTeachers());
        req.setAttribute("news", indexDao.getNews());
        chain.doFilter(req, res);
    }
}
