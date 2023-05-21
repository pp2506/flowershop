<%-- 
    Document   : login
    Created on : Feb 11, 2023, 9:35:52 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">        
        <!--        <link rel="stylesheet" href="css/stylelogin.css">-->
        <style>
            .row1{
                box-shadow: 0px 0px 8px black;
                text-align: center;
                border-radius: 5px;
                margin: 0 50px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                font-size: 30px;
                background-color: antiquewhite;
            }
            .but{
                display: flex;
                justify-content: center;
                text-align: center;
                margin: 40px 0;
            }
            .row2{
                width: 100%;
                display: flex;
                justify-content: space-evenly;
                align-self: center;
                font-size: 36px;

            }


            .col-md-6{
                box-shadow: 0px 0px 8px black;
                text-align: center;
                border-radius: 5px;
                margin: 0 50px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                background-color: azure;
            }
            .row2 img{
                width:60%;
            }

            table{
                margin-right: 200px;
            }

            .feedback{
                display: flex;
                justify-content: space-around;
            }

            label{
                margin-right: 30px ;
            }


            .input *{
                width: 100%;
                padding: 8px 80px;
                margin-top: 15px ;
            }

            .row label{

                vertical-align: middle;
                color: coral;
            }
            .g-recaptcha{
                margin: 10px 0 10px 350px;
            }
        </style>
    </head>
    <body style="background-color:#99ccff;">
        <div class="container">

            <!-- chỗ đăng nhập -->
            <div class="row1">

                <form action="MainController" method="POST" id="form">
                    <table id="tbl" class="feedback">
                        <tr class="row">
                            <td><label for="id">User ID</label> </td>
                            <td><input id="id" type="text" name="userID" required=""/></td>
                        </tr>
                        <tr class="row">
                            <td><label for="pw">Password</label> </td>
                            <td><input id="pw" type="password" name="password" required=""/></td>
                        </tr>
                        <marquee>:3</marquee>

                    </table>
                    <div class="g-recaptcha" data-sitekey="6LepQQolAAAAAPQiVELfoe6aZqvDkehdinpFKBvf"></div>
                    <div id="error"></div>
                    <input name="action" value="Login" hidden=""/><br/>


                    ${requestScope.ERROR}

                    <div class="but">

                        <input type="submit" name="action" value="Login"/>
                        <input type="reset" value="Reset"/>
                    </div>    
                </form>


                <form action="MainController" method="get">
                    <div class="but">

                        <input type="submit" name="action" value="Login With Google"/>
                    </div>
                    <input type="submit" name="action" value="select top 2"/>


                    <div class="row2">


                        <div class="col-md-4">
                            <a href="createUser.html">Create User</a>
                        </div>
                        <div class="col-md-4">
                            <a href="shopping.html">Flower Store</a>
                        </div>
                    </div>
                </form>
                <script src="https://www.google.com/recaptcha/api.js" async defer></script>
                <script>
                    window.onload = function () {
                        let isValid = false;
                        const form = document.getElementById("form");
                        const error = document.getElementById("error");

                        form.addEventListener("submit", function (event) {
                            event.preventDefault();
                            const response = grecaptcha.getResponse();
                            if (response) {
                                form.submit();
                            } else {
                                error.innerHTML = "Please check";
                            }
                        });
                    };
                </script>
            </div>
        </div>

    </body>
</html>
