<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="dao.UserDao"%>
<%@page import="entity.User"%>
<%@page import="com.controller_gather" %>
<html>
    <style>
        /* CSS Document */

        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            background-repeat: x;
            background-color: rgb(228, 228, 228);
            background-image: url("${pageContext.request.contextPath}/IMAGE/white_bckg.png");
            background-repeat: repeat-y;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 200px;
            background-color: white;
        }

        li a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
            margin: 60px 0;
        }

        li a:hover {
            background-color: black;
            color: white;

        }

        #nav ul {
            position: absolute;
            top: 400px;
            left: 120px;
            text-align: center;
            font-size: 40px;
            font-family: 宋体;
        }

        #user_photo img {
            border-radius: 50%;
            position: absolute;
            left: 140px;
            top: 150px;
            width: 150px;
            height: 150px;
        }

        #user_name a {
            position: absolute;
            left: 130px;
            top: 320px;
            font-size: 30px;
            font-family: 楷体;
            color: black;
            text-decoration: none;
        }

        .if_position {
            position: absolute;
            width: 2900px;
            height: 1400px;
            top: 200px;
            left: 600px;
            background-color: white;
        }
    </style>


    <head>
        <title>篮球火个人中心</title>
        <meta charset="UTF-8">

        <!--网页小图标-->
        <link rel="shortcut icon" type="images/x-icon" href="${pageContext.request.contextPath}/IMAGE/basketBall.jpg"></link>

        <meta  content="0.1;url=${pageContext.request.contextPath}/login_success.jsp" >
        <title>登录成功</title>

        <script>
            alert("登陆成功，点击确认进入个人主页");
        </script>
    </head>

    <body>


        <%
            controller_gather c = new controller_gather();
            User u = new User();
            u = c.getUser();
            session.setAttribute("user_id", u.getId());
            session.setAttribute("user_sex", u.getSex());
            session.setAttribute("user_name", u.getName());
            session.setAttribute("user_pass", u.getPass());
            session.setAttribute("user_email", u.getEmail());
        %>



        <div id="user_photo">
            <a href="${pageContext.request.contextPath}/USER_LOGINUP.jsp" title="用户登录">
                <img src="${pageContext.request.contextPath}/IMAGE/男.jpg" alt="user_photo">
            </a>
        </div>

        <div id="user_name">
            <a title="用户登录">
                <span style="float: left;padding-top: 25px;">
                    <%=session.getAttribute("user_name")%>
                </span>
            </a>
        </div>

        <div id="nav">
            <ul>
                <li><a href="#" class="user_btn1">我的主页</a></li>
                <li><a href=http://10.128.213.61:8080/Store_war_exploded/index.jsp class="btn2">购物车</a></li>
                <li><a href="#" class="btn3">系统消息</a></li>
                <li><a href=http://10.128.249.226:8080/mvc/ class="btn4">主页</a></li>
            </ul>
        </div>

        <iframe class="if_position" src="${pageContext.request.contextPath}/user_btn1.jsp" id="content" ></iframe>

        <script>
            var btn1 = document.querySelector(".user_btn1");
            var btn2 = document.querySelector(".btn2");
            var btn3 = document.querySelector(".btn3");

            var iframe = document.querySelector("iframe");

            btn1.onclick = function () {
                iframe.src = "${pageContext.request.contextPath}/user_btn1.jsp";
            };
            btn2.onclick = function () {
                iframe.src = "${pageContext.request.contextPath}/btn2.jsp";
            };
            btn3.onclick = function () {
                iframe.src = "${pageContext.request.contextPath}/btn3.jsp";
            };

        </script>
        <div>
            <hr color="BLACK" width="440" style="border-color:rgb(228, 228, 228);position:absolute ;top: 400px;">
        </div>

    </body>

</html>



