/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;

/**
 *
 * @author Drose
 */
public class BaseDao {

    protected Connection conn = null;
    protected Statement stmt = null;
    protected ResultSet rs = null;
    protected String url = "jdbc:mysql://localhost:3306/user_info?characterEncoding=utf-8";
    protected String name = "root";
    protected String password = "75760199sy";
    protected PreparedStatement pstmt = null;

    public void connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, name, password);
            stmt = conn.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void closeAll() {
        try {
            if (rs != null) {
                rs.close();
            }
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
