import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int resposta = 0;
        int N = Integer.parseInt(in.readLine());
        String[] R = in.readLine().trim().split(" ");
        for (int i = 1; i < N; ++i) {
            if (Integer.parseInt(R[i]) < Integer.parseInt(R[i - 1])) {
                resposta = i + 1;
                break;
            }
        }

        System.out.println(resposta);
    }
}