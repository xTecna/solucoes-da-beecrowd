import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int k = 1;
    while (true) {
      int n = Integer.parseInt(in.readLine().trim());
      if (n == -1) {
        break;
      }

      System.out.printf("Experiment %d: %d full cycle(s)\n", k++, n / 2);
    }
  }
}