import java.util.ArrayList;
public class Tema extends Genero{
  private ArrayList<String> genero_musical;
  private String classificacao_indicativa;
  private int duracao;

  public Tema(String rock, String sertanejo, String pagode, String samba, String bossa_nova, String pop, String indie, String classificacao_indicativa, int duracao){
    super(rock, sertanejo, pagode, samba, bossa_nova, pop, indie);
    
  }
}
