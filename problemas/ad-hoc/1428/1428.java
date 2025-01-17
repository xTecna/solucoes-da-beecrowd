import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int t = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < t; ++i) {
      String numeros[] = in.readLine().trim().split(" ");
      int n = Integer.parseInt(numeros[0]);
      int m = Integer.parseInt(numeros[1]);

      System.out.println((int) ((Math.ceil((n - 2) / 3.0) * Math.ceil((m - 2) / 3.0))));
    }
  }
}