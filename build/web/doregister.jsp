<%@page import="dao.UserDao"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>请注册</title>
    </head>
    <body>
        <%   //获取姓名密码和年龄
            String id = request.getParameter("id");
            String name = request.getParameter("user");
            String pass = request.getParameter("password");
            String pass2 = request.getParameter("pwd2");
            String email = request.getParameter("email");
            String sex = request.getParameter("sex");

            if (!pass.equals(pass2)) {
                request.getRequestDispatcher("/signup_fail.jsp").forward(request, response);
            }

            //创建User对象，赋值
            User u = new User();
            u.setId(id);
            u.setSex(sex);
            u.setName(name);
            u.setPass(pass);
            u.setEmail(email);

            UserDao udao = new UserDao();
            //调用udao的方法实现插入功能
            int x = udao.insert(u);
            if (x >= 1) {
                request.getRequestDispatcher("/signup_success.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/signup_fail.jsp").forward(request, response);
            }
        %>


    </body>
</html>
