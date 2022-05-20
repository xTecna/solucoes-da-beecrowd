import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            if (entrada.length == 1) {
                break;
            }

            int A = Integer.parseInt(entrada[0]);
            int B = Integer.parseInt(entrada[1]);
            int C = Integer.parseInt(entrada[2]);

            System.out.println(String.format("%.0f", Math.floor(Math.sqrt(A * B * 100.0 / C))));
        }
    }
}