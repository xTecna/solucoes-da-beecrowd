import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int n = Integer.parseInt(in.readLine().trim());
    int[] mesas = new int[n + 1];
    for (int i = 1; i <= n; ++i) {
      mesas[i] = i;
    }

    int q = Integer.parseInt(in.readLine().trim());
    for (int i = 0; i < q; ++i) {
      String[] entrada = in.readLine().trim().split(" ");

      if (entrada[0].equals("1")) {
        int mesa1 = Integer.parseInt(entrada[1]);
        int mesa2 = Integer.parseInt(entrada[2]);
        
        int temp = mesas[mesa1];
        mesas[mesa1] = mesas[mesa2];
        mesas[mesa2] = temp;
      } else {
        int objetivo = Integer.parseInt(entrada[1]);
        int mesa = mesas[objetivo];

        int resposta = 0;
        while(mesa != objetivo) {
          mesa = mesas[mesa];
          resposta += 1;
        }

        System.out.println(resposta);
      }
    }
  }
}