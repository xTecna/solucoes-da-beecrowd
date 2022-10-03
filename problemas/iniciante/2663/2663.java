import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        int K = Integer.parseInt(in.readLine());

        int[] pontos = new int[N];
        for (int i = 0; i < N; ++i) {
            pontos[i] = Integer.parseInt(in.readLine());
        }

        Arrays.sort(pontos);
        int resposta = N - K - 1;
        while (resposta > -1 && pontos[resposta] == pontos[N - K]) {
            --resposta;
        }

        System.out.println(N - resposta - 1);
    }
}