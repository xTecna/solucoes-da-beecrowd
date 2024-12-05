import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());

        int resposta = 0;
        for(int i = 0; i < n; ++i){
            String[] numeros = in.readLine().trim().split(" ");
            int v = Integer.parseInt(numeros[0]);
            int t = Integer.parseInt(numeros[1]);

            resposta += v * t;
        }

        System.out.printf("%d\n", resposta);
    }
}