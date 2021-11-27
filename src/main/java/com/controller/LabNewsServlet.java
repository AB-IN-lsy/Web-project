package com.controller;

import com.entity.ArticleLaboratory;
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
 * @Time : 2021/11/24 19:40
 * @Project : test
 */
@WebServlet("/labnews")
public class LabNewsServlet extends HttpServlet {
    protected List<ArticleLaboratory> getArticleLaboratories() {
        List<ArticleLaboratory> articleLaboratories = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from article_laboratory");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                ArticleLaboratory articleLaboratory = new ArticleLaboratory(rs.getInt("al_id"),
                        rs.getString("al_label"),
                        rs.getString("al_content"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                articleLaboratories.add(articleLaboratory);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return articleLaboratories;
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("article_laboratory", getArticleLaboratories());
        req.getRequestDispatcher("WEB-INF/jsp_labnews/index_labnews.jsp")
                .forward(req, resp);
    }
}
