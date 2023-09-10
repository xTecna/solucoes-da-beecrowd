import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            for(int k = 0; k < N; ++k){
                int M = Integer.parseInt(in.readLine());
                HashMap<String, Double> precos = new HashMap<String, Double>();
                for(int i = 0; i < M; ++i){
                    String[] entrada = in.readLine().trim().split(" ");
                    precos.put(entrada[0], Double.parseDouble(entrada[1]));
                }

                int P = Integer.parseInt(in.readLine());
                double total = 0;
                for(int i = 0; i < P; ++i){
                    String[] entrada = in.readLine().trim().split(" ");
                    total += precos.get(entrada[0]) * Integer.parseInt(entrada[1]);
                }

                System.out.printf("R$ %.2f\n", total);
            }
        }
    }
}