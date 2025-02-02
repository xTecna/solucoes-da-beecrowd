import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int t = Integer.parseInt(in.readLine());
    for (int k = 0; k < t; ++k) {
      String[] partes = in.readLine().trim().split(" ");
      int D = Integer.parseInt(partes[0]);
      int I = Integer.parseInt(partes[1]);
      int B = Integer.parseInt(partes[2]);

      partes = in.readLine().trim().split(" ");
      int[] precos = new int[I];
      for (int i = 0; i < I; ++i) {
        precos[i] = Integer.parseInt(partes[i]);
      }

      int resposta = 0;
      for (int i = 0; i < B; ++i) {
        partes = in.readLine().trim().split(" ");

        int custo = 0;
        for (int j = 1; j < partes.length; j += 2) {
          custo += precos[Integer.parseInt(partes[j])] * Integer.parseInt(partes[j + 1]);
        }

        resposta = Math.max(resposta, D / custo);
      }

      System.out.println(resposta);
    }
  }
}