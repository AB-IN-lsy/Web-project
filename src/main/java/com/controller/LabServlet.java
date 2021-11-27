package com.controller;

import com.entity.Laboratory;
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
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/25 21:14
 * @Project : test
 */
@WebServlet("/lab")
public class LabServlet extends HttpServlet {
    protected List<Laboratory> getLaboratories() {
        List<Laboratory> laboratories = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from laboratories");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Laboratory laboratory = new Laboratory(rs.getInt("l_id"),
                        rs.getString("l_name"),
                        rs.getString("l_label"),
                        rs.getString("l_pic"),
                        rs.getString("l_content"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                laboratories.add(laboratory);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return laboratories;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("laboratories", getLaboratories());
        req.getRequestDispatcher("WEB-INF/jsp_lab/index_lab.jsp").forward(req, resp);
    }
}
