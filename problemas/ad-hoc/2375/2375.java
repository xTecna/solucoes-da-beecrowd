import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int diametro = Integer.parseInt(in.readLine().trim());
    String[] numeros = in.readLine().trim().split(" ");
    int altura = Integer.parseInt(numeros[0]);
    int largura = Integer.parseInt(numeros[1]);
    int profundidade = Integer.parseInt(numeros[2]);

    if (altura >= diametro && largura >= diametro && profundidade >= diametro) {
      System.out.println("S");
    } else {
      System.out.println("N");
    }
  }
}