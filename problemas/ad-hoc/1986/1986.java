import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    String[] entrada = in.readLine().trim().split(" ");

    for (int i = 0; i < n; ++i) {
      int letra = Integer.parseInt(entrada[i], 16);
      System.out.printf("%c", letra);
    }
    System.out.printf("\n");
  }
}