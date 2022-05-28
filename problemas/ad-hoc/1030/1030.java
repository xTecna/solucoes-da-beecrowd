import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int sobrevivente(int n, int k) {
        if (n == 1) {
            return 0;
        }
        return (sobrevivente(n - 1, k) + k) % n;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int NC = Integer.parseInt(in.readLine());
        for (int i = 1; i <= NC; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            System.out.printf("Case %d: %d\n", i,
                    sobrevivente(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1])) + 1);
        }
    }
}