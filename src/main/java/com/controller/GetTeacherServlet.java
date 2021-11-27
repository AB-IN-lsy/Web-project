package com.controller;

import com.entity.News;
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

import static java.lang.Integer.parseInt;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/25 20:13
 * @Project : test
 */
@WebServlet("/getteacher")
public class GetTeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Teacher teacher = null;
        int tid = parseInt(req.getParameter("tid"));
        /*
        从主页中获取的数据nid
         */
        String sql = "select * from teachers where t_id=?";
        /*
        从数据库中获取
         */
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, tid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    teacher = new Teacher();
                    teacher.settId(rs.getInt("t_id"));
                    teacher.settName(rs.getString("t_name"));
                    teacher.settUniversity(rs.getString("t_university"));
                    teacher.settTitle(rs.getString("t_title"));
                    teacher.settPic(rs.getString("t_pic"));
                    teacher.setInsertTime(rs.getTimestamp("create_time"));
                    teacher.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("teacher", teacher);
        req.getRequestDispatcher("/WEB-INF/jsp_teacher/teacher.jsp")
                .forward(req, resp);
    }
}
