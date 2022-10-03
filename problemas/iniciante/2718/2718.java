import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            long X = Long.parseLong(in.readLine());

            int resposta = 0, contador = 0;
            while (X > 0) {
                if (X % 2 == 1) {
                    ++contador;
                } else {
                    resposta = Math.max(resposta, contador);
                    contador = 0;
                }
                X /= 2;
            }
            resposta = Math.max(resposta, contador);

            System.out.println(resposta);
        }
    }
}