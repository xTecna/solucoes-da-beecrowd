import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int k = 1;
    while (true) {
      int n = Integer.parseInt(in.readLine().trim());
      if (n == 0) {
        break;
      }

      String[] entrada = in.readLine().trim().split(" ");
      int resposta = 0;
      for (int i = 0; i < n; ++i) {
        if (Integer.parseInt(entrada[i]) == i + 1) {
          resposta = i + 1;
        }
      }

      System.out.printf("Teste %d\n", k++);
      System.out.printf("%d\n\n", resposta);
    }
  }
}