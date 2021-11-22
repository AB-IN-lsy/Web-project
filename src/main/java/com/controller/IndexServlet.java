/*
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 19:15:22
 * @FilePath: \test\src\main\java\com\controller\IndexServlet.java
 * @LastEditTime: 2021-11-20 20:57:10
 */
package com.controller;

import com.entity.ArticleLaboratory;
import com.entity.Laboratory;
import com.entity.Major;
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

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
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
        req.setAttribute("article_laboratory", getArticleLaboratories());
        req.setAttribute("laboratories", getLaboratories());
        req.setAttribute("majors", getMajors());
        req.setAttribute("teachers", getTeachers());
        req.getRequestDispatcher("WEB-INF/jsp/index.jsp").forward(req, resp);
    }
}
