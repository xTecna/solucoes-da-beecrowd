import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine());

    int levadas = 0;
    int comportadas = 0;
    String[] criancas = new String[n];
    for(int i = 0; i < n; ++i){
      String[] palavras = in.readLine().trim().split(" ");

      if(palavras[0].equals("+")){
        comportadas += 1;
      } else {
        levadas += 1;
      }

      criancas[i] = palavras[1];
    }

    Arrays.sort(criancas);
    for(int i = 0; i < n; ++i){
      System.out.println(criancas[i]);
    }
    System.out.printf("Se comportaram: %d | Nao se comportaram: %d\n", comportadas, levadas);
  }
}