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
    public List<Laboratory> searchLaboratory(String searchWords){
        List<Laboratory> laboratories = new ArrayList<>();
        String sql = "select * from laboratories where laboratories.l_name like ? or laboratories.l_label like ? or laboratories.l_content like ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            searchWords = "%" + searchWords + "%";
            st.setString(1, searchWords);
            st.setString(2, searchWords);
            st.setString(3, searchWords);
            try (ResultSet rs = st.executeQuery()) {
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return laboratories;
    }
    public List<News> searchNews(String searchWords){
        List<News> news = new ArrayList<>();
        String sql = "select * from news where news.n_label like ? or news.n_author like ? or news.n_email like ? or news.n_content like ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            searchWords = "%" + searchWords + "%";
            st.setString(1, searchWords);
            st.setString(2, searchWords);
            st.setString(3, searchWords);
            st.setString(4, searchWords);
            try (ResultSet rs = st.executeQuery()) {
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }



    public List<Teacher> searchTeacher(String searchWords){
        List<Teacher> teachers = new ArrayList<>();
        String sql = "select * from teachers where teachers.t_name like ? or teachers.t_title like ? or teachers.t_university like ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            searchWords = "%" + searchWords + "%";
            st.setString(1, searchWords);
            st.setString(2, searchWords);
            st.setString(3, searchWords);
            try (ResultSet rs = st.executeQuery()) {
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return teachers;
    }
    public List<Major> searchMajor(String searchWords){
        List<Major> majors = new ArrayList<>();
        String sql = "select * from majors where majors.m_name like ? or majors.m_label like ? or majors.m_content like ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            searchWords = "%" + searchWords + "%";
            st.setString(1, searchWords);
            st.setString(2, searchWords);
            st.setString(3, searchWords);
            try (ResultSet rs = st.executeQuery()) {
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
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return majors;
    }
    public List<ArticleLaboratory> searchArticleLaboratory(String searchWords) {
        List<ArticleLaboratory> articleLaboratories = new ArrayList<>();
        String sql = "select * from article_laboratory where article_laboratory.al_content like ? or article_laboratory.al_label like ?";
        try (Connection conn = DataSourceUtils.getConnection();
             PreparedStatement st = conn.prepareStatement(sql)) {
            searchWords = "%" + searchWords + "%";
            st.setString(1, searchWords);
            st.setString(2, searchWords);
            try (ResultSet rs = st.executeQuery()) {
                while (rs.next()) {
                    ArticleLaboratory articleLaboratory = new ArticleLaboratory(rs.getInt("al_id"),
                            rs.getString("al_label"),
                            rs.getString("al_content"),
                            rs.getTimestamp("create_time"),
                            rs.getTimestamp("update_time"));
                    articleLaboratories.add(articleLaboratory);
                    System.out.println(articleLaboratory);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return articleLaboratories;
    }

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
