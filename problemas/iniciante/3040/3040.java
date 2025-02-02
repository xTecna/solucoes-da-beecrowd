import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine());
    for (int i = 0; i < n; ++i) {
      String[] entrada = in.readLine().trim().split(" ");
      int altura = Integer.parseInt(entrada[0]);
      int espessura = Integer.parseInt(entrada[1]);
      int galhos = Integer.parseInt(entrada[2]);

      if (200 <= altura && altura <= 300 && 50 <= espessura && 150 <= galhos) {
        System.out.println("Sim");
      }else{
        System.out.println("Nao");
      }
    }
  }
}