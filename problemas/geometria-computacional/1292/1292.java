import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (in.ready()) {
      double F = Double.parseDouble(in.readLine().trim());

      double lado = F * Math.sin(108 * Math.PI / 180) / Math.sin(63 * Math.PI / 180);
      System.out.printf("%.10f\n", lado);
    }
  }
}