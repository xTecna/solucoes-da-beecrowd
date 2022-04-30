import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int M = Integer.parseInt(entrada[0]);
            int N = Integer.parseInt(entrada[1]);

            if(M <= 0 || N <= 0){
                break;
            }

            if(M > N){
                int temp = M;
                M = N;
                N = temp;
            }

            int soma = 0;
            for(int i = M; i <= N; ++i){
                System.out.printf("%d ", i);
                soma += i;
            }
            System.out.printf("Sum=%d\n", soma);
        }
    }
}