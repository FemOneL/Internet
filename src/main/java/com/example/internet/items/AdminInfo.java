package com.example.internet.items;

public class AdminInfo {
    private String login;
    private String password;
    private String name;
    private String photoURL;

    public AdminInfo(String login, String password, String name, String photoURL) {
        this.login = login;
        this.password = password;
        this.name = name;
        this.photoURL = photoURL;
    }

    public AdminInfo() {
        this.login = "none";
        this.password = "none";
        this.name = "none";
        this.photoURL = "https://prophotos.ru/data/articles/0002/2622/image-rectangle_600_x.jpg";
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getPhotoURL() {
        return photoURL;
    }
}
