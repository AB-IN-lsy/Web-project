package com.controller;

import com.entity.News;
import com.entity.User;
import com.util.DataSourceUtils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/findall")
public class FindAllServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        List<News> news = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from news");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news1 = new News(rs.getInt("n_id"),
                        rs.getString("n_author"),
                        rs.getString("n_content"),
                        rs.getString("n_email"),
                        rs.getString("n_label"),
                        rs.getString("n_title"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                news.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("news", news);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp_back/main.jsp");
        rd.forward(request, response);

    }
}
