package com.controller;

import com.entity.ArticleLaboratory;
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

import static java.lang.Integer.parseInt;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/11/25 20:55
 * @Project : test
 */
@WebServlet("/getmajor")
public class GetMajorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Major major = null;
        int mid = parseInt(req.getParameter("mid"));
        /*
        从主页中获取的数据nid
         */
        String sql = "select * from majors where m_id=?";
        /*
        从数据库中获取
         */
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, mid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    major = new Major();
                    major.setmId(rs.getInt("m_id"));
                    major.setmName(rs.getString("m_name"));
                    major.setmLabel(rs.getString("m_label"));
                    major.setmPic(rs.getString("m_pic"));
                    major.setmContent(rs.getString("m_content"));
                    major.setInsertTime(rs.getTimestamp("create_time"));
                    major.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("major", major);
        req.getRequestDispatcher("/WEB-INF/jsp_major/major.jsp")
                .forward(req, resp);
    }
}
