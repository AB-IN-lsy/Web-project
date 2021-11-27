package com.controller;

import com.entity.Teacher;
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
 * @Time : 2021/11/25 20:22
 * @Project : test
 */
@WebServlet("/teacher")
public class TeacherServlet extends HttpServlet {
    protected List<Teacher> getTeachers() {
        List<Teacher> teachers = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from teachers");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                Teacher teacher = new Teacher(rs.getInt("t_id"),
                        rs.getString("t_name"),
                        rs.getString("t_university"),
                        rs.getString("t_title"),
                        rs.getString("t_pic"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                teachers.add(teacher);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("teachers", getTeachers());
        req.getRequestDispatcher("WEB-INF/jsp_teacher/index_teacher.jsp").forward(req, resp);
    }
}
