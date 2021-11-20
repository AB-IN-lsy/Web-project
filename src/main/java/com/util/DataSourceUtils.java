/*
 * @Author: NEFU AB-IN
 * @Date: 2021-11-17 21:02:19
 * @FilePath: \test\src\main\java\com\til\DataSourceUtils.java
 * @LastEditTime: 2021-11-20 21:29:21
 */
package com.util;

import javax.annotation.Resource;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@WebListener
public class DataSourceUtils implements ServletContextListener {
    @Resource(name = "jdbc/MySQL")
    private static DataSource dSource;

    public static Connection getConnection() throws SQLException {
        return dSource.getConnection();
    }
}