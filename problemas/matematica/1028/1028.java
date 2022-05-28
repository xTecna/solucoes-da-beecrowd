import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int MDC(int a, int b) {
        return b == 0 ? a : MDC(b, a % b);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            System.out.println(MDC(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1])));
        }
    }
}