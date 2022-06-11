package com.example.internet.items;

public class UserInfo {
    private String firstName;
    private String secondName;
    private String phoneNumber;
    private String adress;
    private String service;
    private String additionText;

    public UserInfo(String firstName, String secondName, String phoneNumber, String adress, String service, String additionText) {
        this.firstName = firstName;
        this.secondName = secondName;
        this.phoneNumber = phoneNumber;
        this.adress = adress;
        this.service = service;
        this.additionText = additionText;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getAdress() {
        return adress;
    }

    public String getService() {
        return service;
    }

    public String getAdditionText() {
        return additionText;
    }
}
