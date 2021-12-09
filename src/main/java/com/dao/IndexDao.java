package com.dao;

import com.entity.*;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: NEFU AB-IN
 * @Time : 2021/12/8 11:10
 * @Project : test
 */
public class IndexDao {
    public List<News> getNews() {
        List<News> news = new ArrayList<>();
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement("select * from news");
             ResultSet rs = st.executeQuery()) {
            while (rs.next()) {
                News news1 = new News(rs.getInt("n_id"),
                        rs.getString("n_author"),
                        rs.getString("n_content"),
                        rs.getString("n_email"),
                        rs.getString("n_label"),
                        rs.getTimestamp("create_time"),
                        rs.getTimestamp("update_time"));
                news.add(news1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return news;
    }
    public List<ArticleLaboratory> getArticleLaboratories() {
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

    public List<Laboratory> getLaboratories() {
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
    public List<Major> getMajors() {
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
    public List<Teacher> getTeachers() {
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
}
