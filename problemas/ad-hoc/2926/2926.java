import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    String grito = "";
    for (int i = 0; i < n; ++i) {
      grito += "a";
    }

    System.out.printf("Ent%so eh N%st%sl!\n", grito, grito, grito);
  }
}