import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int c = Integer.parseInt(in.readLine().trim());
    for (int k = 0; k < c; ++k) {
      String palavra1 = in.readLine().trim();
      String palavra2 = in.readLine().trim();
      String secreta = in.readLine().trim();

      int pos1 = secreta.indexOf('_');
      int pos2 = secreta.indexOf('_', pos1 + 1);

      if ((palavra1.charAt(pos1) == palavra2.charAt(pos2)) || (palavra1.charAt(pos2) == palavra2.charAt(pos1))) {
        System.out.println("Y");
      } else {
        System.out.println("N");
      }
    }
  }
}