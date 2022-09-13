import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int distanciaManhattan(int x1, int y1, int x2, int y2) {
        return Math.abs(x1 - x2) + Math.abs(y1 - y2);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] NM = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
            for (int i = 0; i < N; ++i) {
                String[] numeros = in.readLine().trim().split(" ");

                for (int j = 0; j < M; ++j) {
                    if (numeros[j].equals("1")) {
                        x1 = i;
                        y1 = j;
                    } else if (numeros[j].equals("2")) {
                        x2 = i;
                        y2 = j;
                    }
                }
            }

            System.out.println(distanciaManhattan(x1, y1, x2, y2));
        }
    }
}