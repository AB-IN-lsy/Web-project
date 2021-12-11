package com.controller;

import com.entity.News;
import com.entity.User;
import com.util.DataSourceUtils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @author liusy
 */

@WebServlet("/save")
public class SaveServlet extends HttpServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        if(user == null){
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        //接收请求中的数据
        String label = request.getParameter("label");
        String author = request.getParameter("author");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        String nid = request.getParameter("nid");
        String sql = "insert into news (n_label,n_author,n_email,n_content) values(?,?,?,?)";

        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, label);
            st.setString(2, author);
            st.setString(3, email);
            st.setString(4, content);
            st.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        response.sendRedirect(request.getContextPath() + "/findall");
//        RequestDispatcher rd = request.getRequestDispatcher("/findall");
//        rd.forward(request, response);

    }
}				
