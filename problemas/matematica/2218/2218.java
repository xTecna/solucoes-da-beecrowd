import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static int somaPA(int a1, int an, int n) {
    return ((a1 + an) * n) / 2;
  }

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int t = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < t; ++i) {
      int n = Integer.parseInt(in.readLine().trim());
      System.out.println(somaPA(1, n, n) + 1);
    }
  }
}