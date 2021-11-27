package com.controller;

import com.entity.Major;
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
 * @Time : 2021/11/25 20:53
 * @Project : test
 */
@WebServlet("/major")
public class MajorServlet extends HttpServlet {
    protected List<Major> getMajors() {
        List<Major> majors = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from majors");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Major major = new Major(rs.getInt("m_id"),
                        rs.getString("m_name"),
                        rs.getString("m_label"),
                        rs.getString("m_pic"),
                        rs.getString("m_content"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                majors.add(major);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return majors;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("majors", getMajors());
        req.getRequestDispatcher("WEB-INF/jsp_major/index_major.jsp").forward(req, resp);
    }
}
