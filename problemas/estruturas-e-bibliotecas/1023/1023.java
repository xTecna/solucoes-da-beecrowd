import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());
            if (N == 0) {
                break;
            }

            if (T > 0) {
                System.out.println("");
            }

            int totalX = 0, totalY = 0;
            int[] consumos = new int[201];
            for (int i = 0; i < N; ++i) {
                String[] numeros = in.readLine().trim().split(" ");

                int X = Integer.parseInt(numeros[0]);
                int Y = Integer.parseInt(numeros[1]);

                totalX += X;
                totalY += Y;
                consumos[Y / X] += X;
            }

            System.out.printf("Cidade# %d:\n", ++T);
            boolean first = true;
            for (int i = 0; i < 201; ++i) {
                if (consumos[i] > 0) {
                    if (first) {
                        first = false;
                    } else {
                        System.out.print(" ");
                    }

                    System.out.printf("%d-%d", consumos[i], i);
                }
            }
            System.out.println("");

            System.out.printf("Consumo medio: %.2f m3.\n", Math.floor((100.0 * totalY) / totalX) / 100.0);
        }
    }
}