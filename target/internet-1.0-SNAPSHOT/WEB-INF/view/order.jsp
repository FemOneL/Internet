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
        <%@include file="../../css/order.css" %>
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
    <section class="order_section">
        <div class="text"><h1>Заповніть форму</h1></div>
        <div class="form_div">
            <form class="order_form" method="post"">
                <div class="order_div">
                    <div class="title"><p>Ім'я</p></div>
                    <div class="inp">
                        <input class="input_field" type="text" name="firstname" required placeholder="Введіть ваше ім'я">
                    </div>
                </div>
                <div class="order_div">
                    <div class="title"><p>Прізище</p></div>
                    <div class="inp">
                        <input class="input_field" type="text" name="secondname" required placeholder="Введіть ваше прізвище">
                    </div>
                </div>
                <div class="order_div">
                    <div class="title"><p>Номер телефону</p></div>
                    <div class="inp">
                        <input class="input_field" type="text" name="phone" required placeholder="Введіть ваш номер телефону">
                    </div>
                </div>
                <div class="order_div">
                    <div class="title"><p>Адреса</p></div>
                    <div class="inp">
                        <input class="input_field" type="text" name="adress" required placeholder="Введіть вашу адресу">
                    </div>
                </div>
                <div class="order_div">
                    <div class="title"><p>Послуга</p></div>
                    <div class="inp">
                        <select name="serviceType" class="input_field">
                            <option value="Інтернет" selected>Інтернет</option>
                            <option value="Інтернет + телебачення" >Інтернет + телебачення</option>
                            <option value="Хостинг" >Хостинг</option>
                        </select>
                    </div>
                </div>
                <div class="questions">
                    <h2>Виникли питання?</h2>
                    <p>Опишіть проблему</p>
                </div>
                <div><textarea class="textarr" name="textarea" rows="7" cols="65" autofocus></textarea></div>
                <div class="btn_div">
                    <button class="my_button" type="submit" >Надіслати</button>
                </div>
            </form>
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
