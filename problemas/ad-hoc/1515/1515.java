import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (true) {
      int n = Integer.parseInt(in.readLine().trim());
      if (n == 0) {
        break;
      }

      String resposta = "";
      int menor_ano = 2114;
      for (int i = 0; i < n; ++i) {
        String[] entrada = in.readLine().trim().split(" ");
        int ano = Integer.parseInt(entrada[1]) - Integer.parseInt(entrada[2]);
        if (ano < menor_ano) {
          menor_ano = ano;
          resposta = entrada[0];
        }
      }

      System.out.println(resposta);
    }
  }
}