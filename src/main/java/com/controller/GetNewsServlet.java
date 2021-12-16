package com.controller;

import com.dao.IndexDao;
import com.entity.News;
import com.entity.User;
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

import static java.lang.Integer.parseInt;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/24 18:46
 * @Project : test
 */
@WebServlet("/getnews")
public class GetNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = null;
        int nid = parseInt(req.getParameter("nid"));
        /*
        从主页中获取的数据nid
         */
        String sql = "select * from news where n_id=?";
        /*
        从数据库中获取
         */
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql
             )) {
            st.setInt(1, nid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News();
                    news.setnId(rs.getInt("n_id"));
                    news.setnAuthor(rs.getString("n_author"));
                    news.setnContent(rs.getString("n_content"));
                    news.setnEmail(rs.getString("n_email"));
                    news.setnLabel(rs.getString("n_label"));
                    news.setnTitle(rs.getString("n_title"));
                    news.setInsertTime(rs.getTimestamp("create_time"));
                    news.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("n", news);
        IndexDao indexDao = new IndexDao();
        req.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
        req.setAttribute("laboratories", indexDao.getLaboratories());
        req.setAttribute("majors", indexDao.getMajors());
        req.setAttribute("teachers", indexDao.getTeachers());
        req.setAttribute("news", indexDao.getNews());
        req.getRequestDispatcher("/WEB-INF/jsp_news/news.jsp")
                .forward(req, resp);
    }
}
