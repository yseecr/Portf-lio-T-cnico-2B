package com.example.alecrimdourado;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    EditText campo, senha;
    ArrayList<usuario> usu = new ArrayList<>();
    usuario encontrado;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getSupportActionBar().hide();
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        campo = findViewById(R.id.frase);
        senha = findViewById(R.id.senha);
        usuario u = new usuario("yse", "169", 2);
        usuario u2 = new usuario("rafa", "420", 1);
        usu.add(u);
        usu.add(u2);

    }

    public void clica(View v) {
        if(verificausuario(campo.getText().toString(), senha.getText().toString())){
            String texto = campo.getText().toString();
            Toast.makeText(this, "Bem vindo, "+texto, Toast.LENGTH_LONG).show();
            campo.setText(null);
            if (encontrado.perfil == 1){
                mudaTela();
            }
            else if(encontrado.perfil == 2){
                admin.list = usu;
                tela_admin();
        }
    }
        else
            Toast.makeText(this, "Usuário ou senha incorreta.", Toast.LENGTH_LONG).show();
    }
    public void tela_admin() {
        Intent i = new Intent(this, admin.class);
        startActivity(i);
    }
    public void mudaTela() {
        Intent i = new Intent(this, tela1.class);
        startActivity(i);
    }

    public boolean verificausuario(String login, String senha) {
        for (usuario pessoa : usu) {
            if (login.equals(pessoa.login) && senha.equals(pessoa.senha)) {
                encontrado = pessoa;
                return true;
            }
        }
        return false;
    }
}
