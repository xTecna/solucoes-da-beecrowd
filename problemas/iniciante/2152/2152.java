import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine());
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int H = Integer.parseInt(entrada[0]);
                int M = Integer.parseInt(entrada[1]);
                int O = Integer.parseInt(entrada[2]);

                System.out.printf("%02d:%02d - A porta %s!\n", H, M, O == 1 ? "abriu" : "fechou");
            }
        }
    }
}