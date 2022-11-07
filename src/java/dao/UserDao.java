/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.User;

/**
 *
 * @author Drose
 */
public class UserDao extends BaseDao {

    public User dologin(String id, String pass) {
        User u = new User();
        try {
            super.connect();
            String sql = "select * from userinfo where id=? and pass=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, pass);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                u = new User();
                u.setId(rs.getString(1));
                u.setName(rs.getString(2));
                u.setPass(rs.getString(3));
                u.setEmail(rs.getString(4));
                u.setSex(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return u;
    }

    public int insert(User u) {
        int row = 0;
        try {
            super.connect();
            String sql = "insert into userinfo values(?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, u.getId());
            pstmt.setString(2, u.getName());
            pstmt.setString(3, u.getPass());
            pstmt.setString(4, u.getEmail());
            pstmt.setString(5, u.getSex());
            row = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return row;
    }

    public int update(User u) {
        int row = 0;
        try {
            super.connect();
            String sql = "update userinfo set name=? ,email=? ,sex=? where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, u.getName());
            pstmt.setString(2, u.getEmail());
            pstmt.setString(3, u.getSex());
            pstmt.setString(4, u.getId());
            row = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            super.closeAll();
        }
        return row;
    }
}
