import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        String[] entrada = in.readLine().trim().split(" ");

        int anterior = Integer.parseInt(entrada[0]);
        boolean pico = false, vale = false, mesmoPadrao = true;
        for (int i = 1; i < N; ++i) {
            int H = Integer.parseInt(entrada[i]);

            if (H > anterior && !pico) {
                pico = true;
                vale = false;
            } else if (H < anterior && !vale) {
                pico = false;
                vale = true;
            } else {
                mesmoPadrao = false;
                break;
            }

            anterior = H;
        }

        System.out.println(mesmoPadrao ? "1" : "0");
    }
}