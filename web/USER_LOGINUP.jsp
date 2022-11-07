<%-- 
    Document   : USER_LOGINUP
    Created on : 2022年9月6日, 下午5:43:11
    Author     : Drose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>


    <head> 
        <style>
            * {
                margin: 0px;
                padding: 0px;
            }

            body {
                background-repeat: x;
                background-color: #FFF;
                background-image: url("IMAGE/p1.png");
            }


            /*box属性*/
            .login-box {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 1200px;
                height: 700px;
                padding: 80px;
                background: rgba(69, 68, 70, 0.8);
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0, 0, 0, .5);
                border-radius: 100px;
            }

            /*box标题h2_LOGIN*/
            .login-box h2 {
                margin: 0 0 10px;
                padding: 0;
                text-align: center;
                color: #fff;
            }


            .login-box .login-field {
                position: relative;
                top: 10px;

            }

            .login-box .login-field input {
                width: 100%;
                padding: 60px 0;
                font-size: 40px;
                color: rgb(255, 255, 255);
                margin-bottom: 60px;
                border: none;
                border-bottom:1px solid rgb(255, 255, 255);
                outline: none;
                background: transparent;
            }

            .login-box .login-field label {
                position: absolute;
                top: 0;
                left: 0;
                letter-spacing: 1px;
                padding: 10px 0;
                font-size: 40px;
                color: rgb(255, 255, 255);
                pointer-events: none;
                transition: .5s;
            }

            .login-box .login-field input:focus~label,
            .login-box .login-field input:valid~label {
                top: 10px;
                left: 0;
                color: aqua;
                font-size: 30px;
            }

            .login-box button {
                background: transparent;
                border: none;
                outline: none;
                color: rgb(255, 255, 255);
                background: #03a9f4;
                padding: 5px 30px;
                cursor: pointer;
                border-radius: 100px;
                font-size: 40px;
                position: absolute;
                top: 630px;
                left: 200px;
            }

            #button2 button{
                position: absolute;
                top: 630px;
                left: 800px;
            }



        </style>

        <title>篮球火用户登录</title>
        <meta charset="UTF-8">
        <!--网页说明-->
        <meta name="description" content="篮球火是一个只关注篮球的网站，为大家提供大量篮球讯息。">
        <!--解决浏览器渲染问题-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="篮球、名人堂、姚明、元大鹰、东方翔、吴极尊、球魁、残">

        <!--网页小图标-->
        <link rel="shortcut icon" type="images/x-icon" href="IMAGE/basketBall.jpg">
        <link rel="stylesheet" href="./CSS/outter2.css">


    </head>

    <body>
        <script>
            function jump() {
                window.location.href = "USER_SIGNUP.jsp";
            }
        </script>


        <div class="login-box">
            <h2 style="font-size: 60px;">登录</h2>
            <form id="form1" method="post" action="servlet/LoginServlet">

                <div class="login-field">
                    <input type="text" name="user" required="" />
                    <label>用户名</label>
                </div>

                <div class="login-field">
                    <input type="password" name="password" required="" />
                    <label>密码</label>

                </div>

                <p>
                    <a href="main" target="_blank">
                        <button type="submit" />登录</button>
                    </a>
                </p>

                <div id="button2" >
                    <button type="submit" onclick=javascript:jump()>注册</button>
                </div>
            </form>
        </div>
    </body>   
</html>