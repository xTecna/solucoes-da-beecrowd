import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 0; i < T; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            int PA = Integer.parseInt(entrada[0]);
            int PB = Integer.parseInt(entrada[1]);
            double G1 = Double.parseDouble(entrada[2]) / 100;
            double G2 = Double.parseDouble(entrada[3]) / 100;

            int anos;
            for (anos = 1; PA <= PB && anos < 101; ++anos) {
                PA += Math.floor(PA * G1);
                PB += Math.floor(PB * G2);
            }

            if (PA <= PB) {
                System.out.println("Mais de 1 seculo.");
            } else {
                System.out.printf("%d anos.\n", anos - 1);
            }
        }
    }
}