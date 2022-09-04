import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static double dist(int x1, int y1, int x2, int y2) {
        return Math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            double distancia = dist(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), Integer.parseInt(entrada[3]));
            double distancia_percorrida = Integer.parseInt(entrada[4]) * 1.5;

            if (distancia + distancia_percorrida <= Integer.parseInt(entrada[5]) + Integer.parseInt(entrada[6])) {
                System.out.println("Y");
            } else {
                System.out.println("N");
            }
        }
    }
}