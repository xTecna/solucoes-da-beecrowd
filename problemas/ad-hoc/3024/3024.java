import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] entrada = in.readLine().trim().split(" ");
    int n = Integer.parseInt(entrada[0]);
    int x = Integer.parseInt(entrada[1]);

    entrada = in.readLine().trim().split(" ");
    int[] montanhas = new int[n];
    for (int i = 0; i < n; ++i) {
      montanhas[i] = Integer.parseInt(entrada[i]);
    }

    int resposta = 1;
    int acumulado = 1;
    for (int i = 1; i < n; ++i) {
      if (montanhas[i] <= montanhas[i - 1] + x) {
        acumulado += 1;
      } else {
        resposta = Math.max(resposta, acumulado);
        acumulado = 1;
      }
    }
    resposta = Math.max(resposta, acumulado);

    System.out.println(resposta);
  }
}