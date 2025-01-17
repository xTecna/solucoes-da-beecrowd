import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    double resposta = 1000.0;
    for (int i = 0; i < n; ++i) {
      String[] entrada = in.readLine().trim().split(" ");
      double preco = Double.parseDouble(entrada[0]);
      int peso = Integer.parseInt(entrada[1]);

      resposta = Math.min(resposta, preco / peso);
    }

    System.out.printf("%.2f\n", resposta * 1000);
  }
}