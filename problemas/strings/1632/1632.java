import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static int variacoes(char letra) {
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 's') {
      return 3;
    } else {
      return 2;
    }
  }

  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int t = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < t; ++i) {
      String s = in.readLine().trim().toLowerCase();
      
      int resposta = 1;
      for (int j = 0; j < s.length(); ++j) {
        resposta *= variacoes(s.charAt(j));
      }
      
      System.out.println(resposta);
    }
  }
}