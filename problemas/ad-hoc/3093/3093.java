import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static char[] cartas = { 'Q', 'J', 'K', 'A' };

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < n; ++i) {
      String s = in.readLine().trim();

      boolean resposta = true;
      for (int j = 0; j < 4; ++j) {
        resposta &= s.indexOf(cartas[j]) != -1;
      }

      if (resposta) {
        System.out.println("Aaah muleke");
      } else {
        System.out.println("Ooo raca viu");
      }
    }
  }
}