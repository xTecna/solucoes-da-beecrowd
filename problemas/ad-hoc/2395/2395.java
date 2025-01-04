import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] numeros = in.readLine().trim().split(" ");
    int a = Integer.parseInt(numeros[0]);
    int b = Integer.parseInt(numeros[1]);
    int c = Integer.parseInt(numeros[2]);

    numeros = in.readLine().trim().split(" ");
    int x = Integer.parseInt(numeros[0]);
    int y = Integer.parseInt(numeros[1]);
    int z = Integer.parseInt(numeros[2]);

    System.out.println((x / a) * (y / b) * (z / c));
  }
}