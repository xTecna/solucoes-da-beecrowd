import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int t = Integer.parseInt(in.readLine());
    for (int i = 0; i < t; ++i) {
      String[] entrada = in.readLine().trim().split(" ");
      int n = Integer.parseInt(entrada[0]);
      int k = Integer.parseInt(entrada[1]);
      
      System.out.printf("%d\n", n / k + n % k);
    }
  }
}