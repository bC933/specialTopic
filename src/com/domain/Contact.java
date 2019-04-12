package com.domain;

public class Contact {

    private int id;
    private String name;
    private String email;
    private String telephone;
    private String message;

    public Contact() {
    }

    public Contact(String name, String email, String telephone, String message) {
        this.name = name;
        this.email = email;
        this.telephone = telephone;
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
