import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());

    int resposta = 0;
    int anterior = -1;
    for (int i = 0; i < n; ++i) {
      int atual = Integer.parseInt(in.readLine().trim());
      if (atual != anterior) {
        anterior = atual;
        resposta += 1;
      }
    }

    System.out.println(resposta);
  }
}