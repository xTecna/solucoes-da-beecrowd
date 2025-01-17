import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    String numeros[] = in.readLine().trim().split(" ");

    int resposta = 0;
    for (int i = 0; i < n; ++i) {
      resposta += Integer.parseInt(numeros[i]);
    }

    System.out.println(resposta - n);
  }
}