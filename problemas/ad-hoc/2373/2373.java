import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());

    int resposta = 0;
    for (int i = 0; i < n; ++i) {
      String[] numeros = in.readLine().trim().split(" ");
      int latas = Integer.parseInt(numeros[0]);
      int copos = Integer.parseInt(numeros[1]);

      if (latas > copos) {
        resposta += copos;
      }
    }

    System.out.println(resposta);
  }
}