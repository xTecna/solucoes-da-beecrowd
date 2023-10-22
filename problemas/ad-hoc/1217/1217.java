import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        int pesoTotal = 0;
        double precoTotal = 0.0;
        int[] pesos = new int[N];
        for(int k = 0; k < N; ++k){
            double V = Double.parseDouble(in.readLine());
            String[] frutas = in.readLine().trim().split(" ");

            pesos[k] = frutas.length;
            pesoTotal += pesos[k];
            precoTotal += V;
        }

        for(int k = 1; k <= N; ++k){
            System.out.printf("day %d: %d kg\n", k, pesos[k - 1]);
        }
        System.out.printf("%.2f kg by day\n", (double)pesoTotal/N);
        System.out.printf("R$ %.2f by day\n", precoTotal/N);
    }
}