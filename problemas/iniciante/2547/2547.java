import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int Amin = Integer.parseInt(entrada[1]);
            int Amax = Integer.parseInt(entrada[2]);

            int permitidos = 0;
            for (int i = 0; i < N; ++i) {
                int A = Integer.parseInt(in.readLine());

                if (A >= Amin && A <= Amax) {
                    ++permitidos;
                }
            }

            System.out.println(permitidos);
        }
    }
}