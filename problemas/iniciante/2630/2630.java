import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int eye(int r, int g, int b) {
        return (int) (0.3 * r + 0.59 * g + 0.11 * b);
    }

    public static int mean(int r, int g, int b) {
        return (r + g + b) / 3;
    }

    public static int min(int r, int g, int b) {
        return Math.min(r, Math.min(g, b));
    }

    public static int max(int r, int g, int b) {
        return Math.max(r, Math.max(g, b));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine());

            for (int i = 1; i <= T; ++i) {
                String conversao = in.readLine();
                String[] entrada = in.readLine().trim().split(" ");
                int R = Integer.parseInt(entrada[0]);
                int G = Integer.parseInt(entrada[1]);
                int B = Integer.parseInt(entrada[2]);

                System.out.printf("Caso #%d: ", i);
                if (conversao.equals("eye")) {
                    System.out.println(eye(R, G, B));
                } else if (conversao.equals("mean")) {
                    System.out.println(mean(R, G, B));
                } else if (conversao.equals("min")) {
                    System.out.println(min(R, G, B));
                } else if (conversao.equals("max")) {
                    System.out.println(max(R, G, B));
                }
            }
        }
    }
}