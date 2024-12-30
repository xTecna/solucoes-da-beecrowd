import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void desenhaTriangulo(int tamanho, int deslocamento) {
    int altura_arvore = (tamanho / 2) + 1;
    int tamanho_linha = 1;
    int deslocamento_linha = (tamanho / 2) + deslocamento;
    for (int i = 0; i < altura_arvore; ++i) {
      String linha = "";
      for (int j = 0; j < deslocamento_linha; ++j) {
        linha += " ";
      }
      for (int j = 0; j < tamanho_linha; ++j) {
        linha += "*";
      }
      System.out.println(linha);

      tamanho_linha += 2;
      deslocamento_linha -= 1;
    }
  }

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (in.ready()) {
      int n = Integer.parseInt(in.readLine().trim());

      desenhaTriangulo(n, 0);
      desenhaTriangulo(3, (n / 2) - 1);
      System.out.println("");
    }
  }
}