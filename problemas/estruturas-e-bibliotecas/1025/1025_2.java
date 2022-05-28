import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            if (N == 0 && Q == 0) {
                break;
            }

            int[] marmores = new int[10000];
            for (int i = 0; i < N; ++i) {
                marmores[Integer.parseInt(in.readLine())] += 1;
            }

            for (int i = 1; i < 10000; ++i) {
                marmores[i] += marmores[i - 1];
            }

            System.out.printf("CASE# %d:\n", ++T);
            for (int i = 0; i < Q; ++i) {
                int x = Integer.parseInt(in.readLine());

                if (marmores[x] == marmores[x - 1]) {
                    System.out.printf("%d not found\n", x);
                } else {
                    System.out.printf("%d found at %d\n", x, marmores[x - 1] + 1);
                }
            }
        }
    }
}