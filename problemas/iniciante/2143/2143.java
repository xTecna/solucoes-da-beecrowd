import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine().trim());

            for (int i = 0; i < T; ++i) {
                int N = Integer.parseInt(in.readLine().trim());

                int pontas = 2 - (N % 2);
                System.out.println(pontas + 2 * (N - pontas));
            }
        }
    }
}