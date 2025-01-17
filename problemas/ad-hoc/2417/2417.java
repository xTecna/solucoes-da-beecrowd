import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    String numeros[] = in.readLine().trim().split(" ");
    int cv = Integer.parseInt(numeros[0]);
    int ce = Integer.parseInt(numeros[1]);
    int cs = Integer.parseInt(numeros[2]);
    int fv = Integer.parseInt(numeros[3]);
    int fe = Integer.parseInt(numeros[4]);
    int fs = Integer.parseInt(numeros[5]);

    int cp = 10000 * (3 * cv + ce) + cs;
    int fp = 10000 * (3 * fv + fe) + fs;

    if (cp > fp) {
      System.out.println("C");
    } else if (fp > cp) {
      System.out.println("F");
    } else {
      System.out.println("=");
    }
  }
}