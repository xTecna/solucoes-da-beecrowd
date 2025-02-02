import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
  public static int digitos(int numero) {
    return (int) Math.floor(Math.log10(numero)) + 1;
  }

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (in.ready()) {
      int N = Integer.parseInt(in.readLine());

      if (N == 0) {
        break;
      }

      int limite = digitos(1 << (2 * N - 2));

      for (int i = 0; i < N; ++i) {
        System.out.printf("%" + limite + "d", 1 << i);
        for (int j = 1; j < N; ++j) {
          System.out.printf(" %" + limite + "d", 1 << (i + j));
        }
        System.out.println("");
      }
      System.out.println("");
    }
  }
}