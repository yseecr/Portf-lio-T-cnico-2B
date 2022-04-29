import java.util.ArrayList;

public class Restaurante{
  private String pedidos;
  private ArrayList<String> funcionarios;
  private ArrayList<Tema> tema;
  private ArrayList<Publico_Alvo> publico_alvo;
  private float pagamento;

public Restaurante(String pedidos, float pagamento){
  this.pedidos = pedidos;
  this.pagamento = pagamento;
}

  public void tema_do_dia (Tema tema){  
  } 
  public boolean precisa_instrumentos(){
    return true;
  }
} 
