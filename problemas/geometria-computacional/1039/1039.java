import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static double dist(int x1, int y1, int x2, int y2) {
        return Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int[] numeros = new int[entrada.length];
            for (int i = 0; i < 6; ++i) {
                numeros[i] = Integer.parseInt(entrada[i]);
            }

            if (dist(numeros[1], numeros[2], numeros[4], numeros[5]) <= numeros[0] - numeros[3]) {
                System.out.println("RICO");
            } else {
                System.out.println("MORTO");
            }
        }
    }
}