import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine().trim());

            if (N == 0) {
                break;
            }

            for (int i = 0; i < N; ++i) {
                System.out.printf("%3d", 1);
                for (int j = 1; j < N; ++j) {
                    System.out.printf("%4d", Math.min(Math.min(i, N - 1 - i), Math.min(j, N - 1 - j)) + 1);
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}