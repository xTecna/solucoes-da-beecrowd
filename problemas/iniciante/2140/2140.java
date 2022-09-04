import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int[] trocos = new int[] { 4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120,
                150, 200 };

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int M = Integer.parseInt(entrada[1]);

            if (N == 0 && M == 0) {
                break;
            }

            int troco = M - N;
            boolean possivel = false;
            for (int i = 0; i < trocos.length; ++i) {
                if (troco == trocos[i]) {
                    possivel = true;
                    break;
                }
            }

            System.out.println((possivel ? "" : "im") + "possible");
        }
    }
}