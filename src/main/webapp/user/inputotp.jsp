<%-- 
    Document   : login
    Created on : Jan 23, 2023, 2:20:38 AM
    Author     : daova
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Assistance</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/font/themify-icons/themify-icons.css">
        <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>
        <!--<link href="../css/inputotp.css" rel="stylesheet" type="text/css"/>-->
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/admin/assets/images/logo.png"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
    </head>
    <style>
        form {
            background-color: #fcd0a1;
            border-radius: 10px;
            padding: 20px;
            width: 500px;
            margin: 50px auto;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
            color: #de5959;
        }

        .infos[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            margin-bottom: 20px;
        }

        button {
            background-color: #de5959;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-right: 10px;
        }

        button:hover {
            background-color: #b54141;
        }

        #limpar {
            background-color: #fcb13e;
            color: white;
            font-size: 18px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #limpar:hover {
            background-color: #c78d35;
        }

        .mario {
            width: 5px;
            height: 5px;
            position: relative;
            left: 70%;
            box-shadow: 0px 0px 0px transparent, 130px 5px #ffa500, 135px 5px #ffa500,
                140px 5px #ffa500, 95px 10px #de4513, 100px 10px #de4513, 105px 10px #de4513,
                110px 10px #de4513, 115px 10px #de4513, 130px 10px #ffa500,
                135px 10px #ffa500, 140px 10px #ffa500, 90px 15px #de4513, 95px 15px #de4513,
                100px 15px #de4513, 105px 15px #de4513, 110px 15px #de4513,
                115px 15px #de4513, 120px 15px #de4513, 125px 15px #de4513,
                130px 15px hsl(15, 84%, 47%), 135px 15px #ffa500, 140px 15px #ffa500,
                90px 20px #a52a2a, 95px 20px #a52a2a, 100px 20px #a52a2a, 105px 20px #ffa500,
                110px 20px #ffa500, 115px 20px #000, 120px 20px #ffa500, 130px 20px #4545bb,
                135px 20px #4545bb, 140px 20px #4545bb, 85px 25px #a52a2a, 90px 25px #ffa500,
                95px 25px #a52a2a, 100px 25px #ffa500, 105px 25px #ffa500,
                110px 25px #ffa500, 115px 25px #000, 120px 25px #ffa500, 125px 25px #ffa500,
                130px 25px #4545bb, 135px 25px #4545bb, 140px 25px #4545bb,
                85px 30px #a52a2a, 90px 30px #ffa500, 95px 30px #a52a2a, 100px 30px #a52a2a,
                105px 30px #ffa500, 110px 30px #ffa500, 115px 30px #ffa500,
                120px 30px #a52a2a, 125px 30px #ffa500, 130px 30px #ffa500,
                135px 30px #ffa500, 140px 30px #4545bb, 85px 35px #a52a2a, 90px 35px #a52a2a,
                95px 35px #ffa500, 100px 35px #ffa500, 105px 35px #ffa500,
                110px 35px #ffa500, 115px 35px #a52a2a, 120px 35px #a52a2a,
                125px 35px #a52a2a, 130px 35px #a52a2a, 135px 35px #a52a2a,
                95px 40px #ffa500, 100px 40px #ffa500, 105px 40px #ffa500,
                110px 40px #ffa500, 115px 40px #ffa500, 120px 40px #ffa500,
                125px 40px #ffa500, 130px 40px #4545bb, 75px 45px #4545bb, 80px 45px #4545bb,
                85px 45px #4545bb, 90px 45px #4545bb, 95px 45px #4545bb, 100px 45px #de4513,
                105px 45px #4545bb, 110px 45px #4545bb, 115px 45px #4545bb,
                120px 45px #de4513, 125px 45px #4545bb, 70px 50px #4545bb, 75px 50px #4545bb,
                80px 50px #4545bb, 85px 50px #4545bb, 90px 50px #4545bb, 95px 50px #4545bb,
                100px 50px #4545bb, 105px 50px #de4513, 110px 50px #4545bb,
                115px 50px #4545bb, 120px 50px #4545bb, 125px 50px #de4513, 140px 50px #000,
                65px 55px #ffa500, 70px 55px #ffa500, 75px 55px #4545bb, 80px 55px #4545bb,
                85px 55px #4545bb, 90px 55px #4545bb, 95px 55px #4545bb, 100px 55px #4545bb,
                105px 55px #de4513, 110px 55px #de4513, 115px 55px #de4513,
                120px 55px #de4513, 125px 55px #de4513, 140px 55px #000, 65px 60px #ffa500,
                70px 60px #ffa500, 75px 60px #ffa500, 85px 60px #de4513, 90px 60px #de4513,
                95px 60px #4545bb, 100px 60px #de4513, 105px 60px #de4513, 110px 60px #ff0,
                115px 60px #de4513, 120px 60px #de4513, 125px 60px #ff0, 130px 60px #de4513,
                135px 60px #000, 140px 60px #000, 70px 65px #ffa500, 80px 65px #000,
                85px 65px #de4513, 90px 65px #de4513, 95px 65px #de4513, 100px 65px #de4513,
                105px 65px #de4513, 110px 65px #de4513, 115px 65px #de4513,
                120px 65px #de4513, 125px 65px #de4513, 130px 65px #de4513, 135px 65px #000,
                140px 65px #000, 75px 70px #000, 80px 70px #000, 85px 70px #000,
                90px 70px #de4513, 95px 70px #de4513, 100px 70px #de4513, 105px 70px #de4513,
                110px 70px #de4513, 115px 70px #de4513, 120px 70px #de4513,
                125px 70px #de4513, 130px 70px #de4513, 135px 70px #000, 140px 70px #000,
                70px 75px #000, 75px 75px #000, 80px 75px #000, 85px 75px #de4513,
                90px 75px #de4513, 95px 75px #de4513, 100px 75px #de4513, 105px 75px #de4513,
                110px 75px #de4513, 115px 75px #de4513, 70px 80px #000, 85px 80px #de4513,
                90px 80px #de4513, 95px 80px #de4513;
        }
    </style>

    <body>
        <fmt:setLocale value = "vi_VN"/>
        <%
            response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
            response.setHeader("Pragma", "no-cache"); //HTTP 1.0
            response.setDateHeader("Expires", 0);
//prevents caching at the proxy server
%>
        <div class="row" style="margin-top: 10rem">
            <div class="col-md-5"></div>
            <form class="form" action="${pageContext.request.contextPath}/user/authencationotp" method="POST">
                <input type="hidden" value="${requestScope.otpSend}" name="otpSend">
                <div class="mario"></div>
                <label for="email">E-mail:</label>
                <input type="email" id="email" value="${requestScope.email}" readonly name="email">
                <label for="nome">OTP:</label>
                <input type="text" class="infos" id="nome" name="otp">
                <button type="submit">Send</button>
                <button type="reset" id="limpar">Clear</button>
            </form>
        </div>




    </body>
</html>
