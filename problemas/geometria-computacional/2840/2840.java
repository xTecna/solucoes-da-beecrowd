import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] entrada = in.readLine().trim().split(" ");
    int R = Integer.parseInt(entrada[0]);
    int L = Integer.parseInt(entrada[1]);

    double pi = 3.1415;
    double V = 4.0 * pi * R * R * R / 3.0;

    System.out.printf("%d\n", (int) (L / V));
  }
}