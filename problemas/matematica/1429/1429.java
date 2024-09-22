import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static int[] fatoriais = { 1, 2, 6, 24, 120 };

  public static int converteParaDecimal(String numero) {
    int potencia = 0, resposta = 0;

    for (int i = numero.length() - 1; i > -1; --i) {
      resposta += (numero.charAt(i) - '0') * fatoriais[potencia];
      potencia += 1;
    }

    return resposta;
  }

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    while (in.ready()) {
      String numero = in.readLine().trim();

      if (numero.equals("0")) {
        break;
      }

      System.out.println(converteParaDecimal(numero));
    }
  }
}