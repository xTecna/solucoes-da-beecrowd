import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            int A = 0;
            int B = 0;
            for(int i = 0; i < N; ++i){
                String[] numeros = in.readLine().trim().split(" ");

                int a = Integer.parseInt(numeros[0]);
                int b = Integer.parseInt(numeros[1]);

                if(a > b){
                    ++A;
                }else if(b > a){
                    ++B;
                }
            }
            System.out.printf("%d %d\n", A, B);
        }
    }
}