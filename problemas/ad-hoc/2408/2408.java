import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String[] n = in.readLine().trim().split(" ");
    int[] numeros = new int[n.length];
    for (int i = 0; i < n.length; ++i) {
      numeros[i] = Integer.parseInt(n[i]);
    }
    Arrays.sort(numeros);

    System.out.println(numeros[1]);
  }
}