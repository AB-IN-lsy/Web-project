package com.controller;

import com.entity.ArticleLaboratory;
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

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        int nid = Integer.parseInt(request.getParameter("nid"));
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(" delete from news where n_id = ? ")) {
            st.setInt(1, nid);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        RequestDispatcher rd = request.getRequestDispatcher("/findall");
        rd.forward(request, response);
    }
}
