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
        <%@include file="../../css/services.css" %>
    </style>
    <style>
        <%@include file="../../css/main.css" %>
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
    <section class="services_section">
        <div class="main_text"><h1>Послуги</h1></div>
        <div class="services_div">
            <div class="service">
                <div class="service_name"><h1>Інтернет</h1></div>
                <div class="line"></div>
                <div class="service_info">
                    <p>Висока швидкість</p>
                    <p>Безперебійний сигнал</p>
                    <p>Цілодобова підтримка</p>
                </div>
                <div class="service_cost"><h1>Від 100 грн</h1></div>
                <a href="/internet/order" class="button-link"><div class="trybutton">Замовити</div></a>
            </div>
            <div class="service">
                <div class="service_name"><h1>Інтернет + телебачення</h1></div>
                <div class="line"></div>
                <div class="service_info">
                    <p>Висока якість сигналу</p>
                    <p>Чітка картинка</p>
                    <p>Швидке підключення</p>
                </div>
                <div class="service_cost"><h1>Від 200 грн</h1></div>
                <a href="/internet/order" class="button-link"><div class="trybutton">Замовити</div></a>
            </div>
            <div class="service">
                <div class="service_name"><h1>Хостинг</h1></div>
                <div class="line"></div>
                <div class="service_info">
                    <p>Надійність</p>
                    <p>Лояльні ціни</p>
                    <p>Нове обладнання</p>
                </div>
                <div class="service_cost"><h1>Від 70 грн</h1></div>
                <a href="/internet/order" class="button-link"><div class="trybutton">Замовити</div></a>
            </div>
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
