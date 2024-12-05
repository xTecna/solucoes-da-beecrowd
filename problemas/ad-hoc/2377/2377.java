import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] numeros = in.readLine().trim().split(" ");
    int l = Integer.parseInt(numeros[0]);
    int d = Integer.parseInt(numeros[1]);

    numeros = in.readLine().trim().split(" ");
    int k = Integer.parseInt(numeros[0]);
    int p = Integer.parseInt(numeros[1]);

    System.out.println(l * k + (l / d) * p);
  }
}