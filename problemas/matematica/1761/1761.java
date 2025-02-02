import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    double pi = 3.141592654;
    while (in.ready()) {
      String[] entrada = in.readLine().trim().split(" ");
      double a = Double.parseDouble(entrada[0]);
      double b = Double.parseDouble(entrada[1]);
      double c = Double.parseDouble(entrada[2]);

      a = a * pi / 180.0;
      System.out.printf("%.2f\n", 5 * (Math.tan(a) * b + c));
    }
  }
}