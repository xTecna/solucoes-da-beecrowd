import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine());

    int vitorias = 0;
    for(int i = 0; i < n; ++i){
      int x = Integer.parseInt(in.readLine());
      if (x != 1) {
        vitorias += 1;
      }
    }

    System.out.println(vitorias);
  }
}