import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            long X = Integer.parseInt(entrada[0]);
            long M = Integer.parseInt(entrada[1]);

            if (X == 0 && M == 0) {
                break;
            }

            System.out.println(X * M);
        }
    }
}