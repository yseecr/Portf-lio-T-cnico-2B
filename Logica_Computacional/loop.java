package aula;

import javax.swing.JOptionPane;

public class Aula {

    public static void main(String[] args) {
        //relembrandoWhile();
        //aprendendoFor();
    }    
    public static void relembrandoWhile(){
        int n = 0;
        while(n < 7){
            n++;
            System.out.println(n);
        }
    }
    
    public static void aprendendoFor(){
        for(int biscoito = 0; biscoito < 100; biscoito++){
            if(biscoito % 2 == 0 ){
                System.out.println(biscoito);
            }
        }    
    }
}
