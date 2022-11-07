<%-- 
    Document   : btn1
    Created on : 2022年9月6日, 下午5:44:54
    Author     : Drose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="dao.UserDao"%>
<%@page import="entity.User"%>
<!DOCTYPE html>
<html>
    <head>
        <title>篮球火用户注册</title>
        <meta charset="UTF-8">
        <!--网页说明-->
        <meta name="description" content="篮球火是一个只关注篮球的网站，为大家提供大量篮球讯息。">
        <!--解决浏览器渲染问题-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="篮球、名人堂、姚明、元大鹰、东方翔、吴极尊、球魁、残">

        <!--网页小图标-->
        <link rel="shortcut icon" type="images/x-icon" href="IMAGE/basketBall.jpg">
        <link rel="stylesheet" href="./CSS/outter4.css">

        <style>
            body {
                background-repeat: x;
                background-color: #FFF;
                background-image: url("IMAGE/p1.png");
            }

            .container {
                background: rgba(69, 68, 70, 0.8);
                color: #ffffff;
                padding: 15px;
                margin: 600px auto 0px;
                width: 1200px;
                height: 700px;
                text-align: center;
                font-family: "微软雅黑 Light";
                box-shadow: 10px 10px 15px black;
                border-radius: 100px;
            }

            hr {
                border: #2289F0 1px solid;
                margin-bottom: 15px;
            }

            input {
                width: 450px;
                height: 50px;
                margin: 15px;
                font-size: 30px;
                font-family: "微软雅黑 Light";
                border-radius: 8%;
            }

            button {
                background: transparent;
                border: none;
                outline: none;
                color: rgb(255, 255, 255);
                background: #03a9f4;
                padding: 5px 30px;
                cursor: pointer;
                border-radius: 10px;
                font-size: 40px;
                position: absolute;
                top: 1260px;
                left: 1700px;
            }

            button:hover {
                background: #00c8D0;
            }

            .container h1{
                font-size: 80px;
            }

            .container label{
                font-size:35px;
            }
        </style>
    </head>
    <script>
        function jump()
        {
            window.location.reload();
        }
    </script>

    <body>
        <div class="container">
            <h1>编辑个人信息</h1>
            <!---表单-->
            <form method="post" action="do_edit.jsp" autocomplete="on">

                <label style="font-size:35px;position: absolute;top: 820px;left: 1140px;">用户ID：
                    <input type="text" name="userid" placeholder="请输入用户ID" required />
                </label><br />

                <label style="font-size:35px;position: absolute;top: 920px;left: 1140px;">姓&ensp;&ensp;名：
                    <input type="text" name="username" placeholder="请输入姓名" required />
                    <!--placeholder=添加提示语句  required非空验证-->
                </label><br />

                <label style="font-size:35px;position: absolute;top: 1120px;left: 1140px;">邮&ensp;&ensp;箱：
                    <input type="email" name="useremail" placeholder="请输入电子邮箱" required />
                </label><br />

                <lable style="font-size:35px;position: absolute;top: 1040px;left: 1140px;">性&ensp;&ensp;别:</lable><br />
                <input style="float:left;position:absolute;top: 1030px;left:1100px;" type="radio" name="usersex" value="男" required /><p style="position:absolute;font-size: 30px;left: 1400px;top: 1040px">男</p>
                <input style="float:left;position:absolute;top: 1030px;left:1350px;" type="radio" name="usersex" value="女" required /><p style="position:absolute;font-size: 30px;left: 1650px;top: 1040px">女</p>
                <br />

                <button type="submit" style="position: absolute;top:1250px;left:1400px"> 确认信息 </button>
            </form>
        </div>


        <script language=JavaScript>
            self.opener.location.reload();
        </script>
    </body>

</html>







