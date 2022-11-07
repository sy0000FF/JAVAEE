/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com;

/**
 *
 * @author Drose
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.User;
import dao.BaseDao;
import dao.UserDao;

@WebServlet(name = "LoginServlet", urlPatterns = "/servlet/LoginServlet")
public class controller_gather extends HttpServlet {

    private static final long seriaVersionUID = 1L;
    static public User u = new User();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //将输出转换为中文
        request.setCharacterEncoding("UTF-8");

        //设置输出为中文
        response.setCharacterEncoding("UTF-8");

        //获取参数
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        UserDao use = new UserDao();

        u = use.dologin(user, password);

        if (u.getId() != "0") {
            request.getRequestDispatcher("/login_success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("/login_fail.jsp").forward(request, response);
        }

    }

    public User getUser() {
        return u;
    }

}
