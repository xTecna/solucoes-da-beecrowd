import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        String[] responsaveis = new String[] { "Rolien", "Naej", "Elehcim", "Odranoel" };

        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for(int k = 0; k < N; ++k){
            int K = Integer.parseInt(in.readLine());

            for(int i = 0; i < K; ++i){
                int feedback = Integer.parseInt(in.readLine());
                System.out.println(responsaveis[feedback - 1]);
            }
        }
    }
}