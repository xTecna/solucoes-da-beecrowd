import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (true) {
      String numeros[] = in.readLine().trim().split(" ");
      int a = Integer.parseInt(numeros[0]);
      int b = Integer.parseInt(numeros[1]);

      if (a == 0 && b == 0) {
        break;
      }

      System.out.println(2 * a - b);
    }
  }
}