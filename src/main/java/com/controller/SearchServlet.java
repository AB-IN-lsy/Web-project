package com.controller;

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

import static java.lang.Integer.parseInt;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/12/5 14:11
 * @Project : test
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        List<News> news = new ArrayList<>();
        String author = request.getParameter("author");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        String sql = "select * from news where n_author like ? and n_email like ? and n_content like ? ";
//        String sql = "select * from news where n_author like '%admin%' and n_email like '%liusy%' and n_content like '%党%'";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            author = "%" + author + "%";
            email = "%" + email + "%";
            content = "%" + content + "%";
            System.out.println(author);
            System.out.println(email);
            System.out.println(content);
            st.setString(1, author);
            st.setString(2, email);
            st.setString(3, content);
//            System.out.println(st.toString());
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    System.out.println("yes");
                    News news1 = new News(rs.getInt("n_id"),
                            rs.getString("n_author"),
                            rs.getString("n_content"),
                            rs.getString("n_email"),
                            rs.getString("n_label"),
                            rs.getTimestamp("create_time"),
                            rs.getTimestamp("update_time"));
                    news.add(news1);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        request.setAttribute("news", news);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jsp_back/main.jsp");
        rd.forward(request, response);
    }
}
