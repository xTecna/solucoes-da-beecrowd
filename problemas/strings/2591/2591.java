import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int c = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < c; ++i) {
      String[] entrada = in.readLine().trim().split("[hmek]+");
      int tamanho = entrada[1].length() * entrada[2].length();
      System.out.printf("k");
      for (int j = 0; j < tamanho; ++j) {
        System.out.printf("a");
      }
      System.out.printf("\n");
    }
  }
}