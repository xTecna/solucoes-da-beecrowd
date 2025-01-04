import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());

    int resposta = 7;
    if (n > 100) {
      resposta += 5 * (n - 100);
      n = 100;
    }
    if (n > 30) {
      resposta += 2 * (n - 30);
      n = 30;
    }
    if (n > 10) {
      resposta += n - 10;
      n = 10;
    }

    System.out.println(resposta);
  }
}