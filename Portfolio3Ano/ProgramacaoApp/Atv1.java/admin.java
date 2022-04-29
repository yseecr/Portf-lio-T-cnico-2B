package com.example.alecrimdourado;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

import java.util.ArrayList;

public class admin extends AppCompatActivity {
    EditText login, senha;
    CheckBox adm;
    static ArrayList<usuario> list;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getSupportActionBar().hide();
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_admin);
        login = findViewById(R.id.nuLogin);
        senha = findViewById(R.id.nuSenha);
        adm = findViewById(R.id.cb);
    }
    public void cadastro(View yse){
        String l = login.getText().toString();
        String s = senha.getText().toString();
        if(adm.isChecked()){
            usuario u = new usuario(l,s,2);
            list.add(u);
        }
        else{
            usuario u = new usuario(l,s,1);
            list.add(u);
        }
        Toast.makeText(this, "Usuário Cadastrado!", Toast.LENGTH_LONG).show();
    }
}
