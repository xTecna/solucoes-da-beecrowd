import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] entrada = in.readLine().trim().split(" ");
    int n = Integer.parseInt(entrada[0]);
    int saldo = Integer.parseInt(entrada[1]);

    int resposta = saldo;
    for (int i = 0; i < n; ++i) {
      int movimentacao = Integer.parseInt(in.readLine().trim());
      saldo += movimentacao;
      resposta = Math.min(resposta, saldo);
    }

    System.out.println(resposta);
  }
}