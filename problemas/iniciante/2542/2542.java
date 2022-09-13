import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine().trim());

            String[] numeros = in.readLine().trim().split(" ");
            int M = Integer.parseInt(numeros[0]);
            int L = Integer.parseInt(numeros[1]);

            int[][] cartasMarcos = new int[M + 1][N + 1];
            for (int i = 1; i <= M; ++i) {
                numeros = in.readLine().trim().split(" ");
                for (int j = 1; j <= N; ++j) {
                    cartasMarcos[i][j] = Integer.parseInt(numeros[j - 1]);
                }
            }

            int[][] cartasLeonardo = new int[L + 1][N + 1];
            for (int i = 1; i <= L; ++i) {
                numeros = in.readLine().trim().split(" ");
                for (int j = 1; j <= N; ++j) {
                    cartasLeonardo[i][j] = Integer.parseInt(numeros[j - 1]);
                }
            }

            numeros = in.readLine().trim().split(" ");
            int CM = Integer.parseInt(numeros[0]);
            int CL = Integer.parseInt(numeros[1]);
            int A = Integer.parseInt(in.readLine());

            if (cartasMarcos[CM][A] > cartasLeonardo[CL][A]) {
                System.out.println("Marcos");
            } else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A]) {
                System.out.println("Leonardo");
            } else {
                System.out.println("Empate");
            }
        }
    }
}