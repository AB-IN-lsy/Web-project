package com.controller;

import com.entity.News;
import com.entity.User;
import com.util.DataSourceUtils;

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

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        String label = request.getParameter("label");
        String author = request.getParameter("author");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        String nid = request.getParameter("nid");
        String sql = "update news set n_label = ? , n_author = ?  , n_email = ?  , " +
                "n_content = ? where n_id = ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, label);
            st.setString(2, author);
            st.setString(3, email);
            st.setString(4, content);
            st.setString(5, nid);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = request.getRequestDispatcher("/findall");
        rd.forward(request, response);

    }
}
