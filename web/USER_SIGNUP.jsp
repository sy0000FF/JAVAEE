<%-- 
    Document   : USER_SIGNUP
    Created on : 2022年9月6日, 下午5:44:01
    Author     : Drose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
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
        <link rel="stylesheet" href="./CSS/outter3.css">

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
                height: 800px;
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

    <body>
        <form action="doregister.jsp" method="post">
            <div class="container">
                <h1>新用户注册</h1>
                <!---表单-->
                <label style="font-size:34px;">用户名：
                    <input type="text" name="id" placeholder="请输入用户名" required />
                    <!--placeholder=添加提示语句  required非空验证-->
                </label><br />
                
                <label>性&ensp;&ensp;别：
                    <input type="text" name="sex" placeholder="请输入性别" required />
                </label><br />
                
                <label>密&ensp;&ensp;码：
                    <input type="password" name="password" placeholder="请输入密码" required />
                </label><br />

                <label>确&emsp;认：
                    <input type="password" name="pwd2" placeholder="请再次输入密码" required />
                </label><br />

                <label>姓&ensp;&ensp;名：
                    <input type="text" name="user" placeholder="请输入真实姓名" required />
                </label><br />

                <label>邮&ensp;&ensp;箱：
                    <input type="email" name="email" placeholder="请输入电子邮箱" required />
                </label><br />

                <input type="submit" name="Submit" value="提交注册" style="width: 180px;height: 50px;">  </button>
            </div>
        </form>
    </body>

</html>