package com.controller;

import com.entity.News;
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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/24 19:31
 * @Project : test
 */

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
    protected List<News> getNews() {
        List<News> news = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from news");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news1 = new News(rs.getInt("n_id"),
                        rs.getString("n_label"),
                        rs.getString("n_content"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"),
                        ft.format(rs.getTimestamp("create_time")));
                news.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("news", getNews());
        req.getRequestDispatcher("WEB-INF/jsp_news/index_news.jsp")
                .forward(req, resp);
    }
}
