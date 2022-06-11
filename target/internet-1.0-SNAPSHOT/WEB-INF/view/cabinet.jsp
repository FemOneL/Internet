<%@ page import="com.example.internet.items.AdminInfo" %>
<%@ page import="com.example.internet.servlets.RegisterServlet" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <title>Internet</title>
    <style>
        <%@include file="../../css/main.css" %>
    </style>
    <style>
        <%@include file="../../css/cabinet.css" %>
    </style>
</head>
<body>
<header>
    <a href="/internet/" class="logo"><img class="image" src="https://i.ibb.co/7gjyfXx/logo.png" alt=""></a>
    <ul class="mnu_top">
        <li><a href="/internet/services">Послуги</a></li>
        <li><a href="/internet/register">Кабінет</a></li>
        <li><a href="/internet/about">Про нас</a></li>
    </ul>
</header>
<main>
    <section class="admin_section">
        <%
            AdminInfo admin = (AdminInfo) request.getAttribute("admin");
        %>
        <div class="main_text"><h1>Кабінет</h1></div>
        <div class="admin_info">
            <div>
                <img class="img" src="<%= admin.getPhotoURL() %>">
            </div>
            <div class="title">
                <div class="name"><h1><%= admin.getName() %></h1></div>
<%--                <div class="role"><p>Провайдер</p></div>--%>
                <a href="/internet/register?unauthorize=notnull" class="button-link">
                    <div class="trybutton">Вийти</div>
                </a></div>
            </div>
        </div>
    </section>
    <section class="users_section">
        <div class="upper_title">
            <div class="connect_text">Підключення</div>
            <div class="line"></div>
        </div>
        <div class="users_info">
            <c:forEach var="user" items="${requestScope.users}">
                <div class="users_div">
                    <div class="remove">
                        <form method="post" action="/internet/cabinetpage?firstname=${user.firstName}&secondname=${user.secondName}">
                            <button class="button_remove" type="submit">
                                x
                            </button>
                        </form>
                    </div>
                    <div class="fullname">
                        <p><c:out value="${user.secondName}"/> <c:out value="${user.firstName}"/></p>
                    </div>
                    <div class="other_info">
                        <p>Номер телефону: <c:out value="${user.phoneNumber}"/></p>
                        <p>Адреса: <c:out value="${user.adress}"/></p>
                        <p>Послуга: <c:out value="${user.service}"/></p>
                        <p>Додатково: <c:out value="${user.additionText}"/></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</main>
<footer>
    <div class="logo_footer">
        <img class="fotter_img" src="https://i.ibb.co/7gjyfXx/logo.png">
    </div>
    <nav>
        <a href="/internet/">Головна</a>
        <a href="/internet/services">Послуги</a>
        <a href="/internet/about">Про нас</a>
    </nav>
    <div class="contacts">
        <p>Зв'яжіться з нами</p>
        <p>097 000 55 88</p>
        <p>086 333 22 11</p>
    </div>
</footer>

</body>
</html>
