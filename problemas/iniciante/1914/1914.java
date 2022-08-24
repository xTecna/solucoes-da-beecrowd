import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int QT = Integer.parseInt(in.readLine());
        for (int i = 0; i < QT; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            String[] jogadas = in.readLine().trim().split(" ");

            String jogadaGanha = (Integer.parseInt(jogadas[0]) + Integer.parseInt(jogadas[1])) % 2 == 1 ? "IMPAR"
                    : "PAR";

            if (entrada[1].equals(jogadaGanha)) {
                System.out.println(entrada[0]);
            } else {
                System.out.println(entrada[2]);
            }
        }
    }
}