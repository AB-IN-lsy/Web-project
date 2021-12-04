package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.News;
import com.util.DataSourceUtils;

import static java.lang.Integer.parseInt;

@WebServlet("/findone")
public class FindOneServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        News news = null;
        int nid = parseInt(request.getParameter("nid"));
        String sql = "select * from news where n_id=?";

        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, nid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    news = new News();
                    news.setnId(rs.getInt("n_id"));
                    news.setnAuthor(rs.getString("n_author"));
                    news.setnContent(rs.getString("n_content"));
                    news.setnEmail(rs.getString("n_email"));
                    news.setnLabel(rs.getString("n_label"));
                    news.setInsertTime(rs.getTimestamp("create_time"));
                    news.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("news", news);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp_back/update.jsp");
        rd.forward(request, response);
    }
}
