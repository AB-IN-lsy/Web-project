package com.controller;

import com.entity.ArticleLaboratory;
import com.entity.News;
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
 * @Time : 2021/11/24 19:43
 * @Project : test
 */
@WebServlet("/getlabnews")
public class GetLabNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArticleLaboratory articleLaboratory = null;
        int alid = parseInt(req.getParameter("alid"));
        /*
        从主页中获取的数据nid
         */
        String sql = "select * from article_laboratory where al_id=?";
        /*
        从数据库中获取
         */
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, alid);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    articleLaboratory = new ArticleLaboratory();
                    articleLaboratory.setAlId(rs.getInt("al_id"));
                    articleLaboratory.setAlLabel(rs.getString("al_label"));
                    articleLaboratory.setAlContent(rs.getString("al_content"));
                    articleLaboratory.setInsertTime(rs.getTimestamp("create_time"));
                    articleLaboratory.setUpdateTime(rs.getTimestamp("update_time"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("labnews", articleLaboratory);
        req.getRequestDispatcher("/WEB-INF/jsp_labnews/labnews.jsp")
                .forward(req, resp);
    }
}
