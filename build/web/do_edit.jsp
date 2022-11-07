<%-- 
    Document   : do_edit
    Created on : 2022年9月12日, 上午12:57:07
    Author     : Drose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="dao.UserDao"%>
<%@page import="entity.User"%>

<%   //获取姓名密码和年龄 
    String id = request.getParameter("userid");
    String name = request.getParameter("username");
    String email = request.getParameter("useremail");
    String sex = request.getParameter("usersex");

//创建User对象，赋值
    User u = new User();
    u.setId(id);
    u.setSex(sex);
    u.setName(name);
    u.setEmail(email);

    UserDao udao = new UserDao();
//调用udao的方法实现插入功能
    int x = udao.update(u);
    if (x >= 1) {
        session.setAttribute("user_id", u.getId());
        session.setAttribute("user_sex", u.getSex());
        session.setAttribute("user_name", u.getName());
        session.setAttribute("user_email", u.getEmail());
        request.getRequestDispatcher("/edit_success.jsp").forward(request, response);
    } else {
        request.getRequestDispatcher("/edit_fail.jsp").forward(request, response);
    }

%>

