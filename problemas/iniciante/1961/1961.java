import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        String[] canos = in.readLine().trim().split(" ");

        int P = Integer.parseInt(entrada[0]);
        int N = Integer.parseInt(entrada[1]);

        boolean resposta = true;
        for (int i = 1; i < N; ++i) {
            resposta &= (Math.abs(Integer.parseInt(canos[i]) - Integer.parseInt(canos[i - 1])) <= P);
        }

        System.out.println(resposta ? "YOU WIN" : "GAME OVER");
    }
}