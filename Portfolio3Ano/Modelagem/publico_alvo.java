public class Publico_Alvo{
  private String nome;
  private String idade;
  private String genero_preferido;

  public Publico_Alvo(String nome, String idade, String genero_preferido){
    this.nome = nome;
    this.idade = idade;
    this.genero_preferido = genero_preferido;
  }
  public boolean paga_taxa_musica(){
  return true;  
  }
}
