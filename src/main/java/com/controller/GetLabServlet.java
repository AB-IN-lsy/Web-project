package com.controller;

import com.dao.IndexDao;
import com.entity.Laboratory;
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
 * @Time : 2021/11/25 21:13
 * @Project : test
 */
@WebServlet("/getlab")
public class GetLabServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Laboratory laboratory = null;
        int lid = parseInt(req.getParameter("lid"));
        /*
        从主页中获取的数据nid
         */
        String sql = "select * from laboratories where l_id=?";
        /*
        从数据库中获取
         */
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, lid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    laboratory = new Laboratory();
                    laboratory.setlId(rs.getInt("l_id"));
                    laboratory.setlName(rs.getString("l_name"));
                    laboratory.setlLabel(rs.getString("l_label"));
                    laboratory.setlContent(rs.getString("l_content"));
                    laboratory.setlPic(rs.getString("l_pic"));
                    laboratory.setInsertTime(rs.getTimestamp("create_time"));
                    laboratory.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        IndexDao indexDao = new IndexDao();
        req.setAttribute("article_laboratory", indexDao.getArticleLaboratories());
        req.setAttribute("laboratories", indexDao.getLaboratories());
        req.setAttribute("majors", indexDao.getMajors());
        req.setAttribute("teachers", indexDao.getTeachers());
        req.setAttribute("news", indexDao.getNews());
        req.setAttribute("lab", laboratory);
        req.getRequestDispatcher("/WEB-INF/jsp_lab/lab.jsp")
                .forward(req, resp);
    }
}
