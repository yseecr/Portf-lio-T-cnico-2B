package com.example.alecrimdourado;

public class usuario {
    String login, senha;
    int perfil;

    public usuario(String login, String senha) {
        this.login = login;
        this.senha = senha;
    }

    public usuario(String login, String senha, int perfil) {
        this.login = login;
        this.senha = senha;
        this.perfil = perfil;
    }
}
