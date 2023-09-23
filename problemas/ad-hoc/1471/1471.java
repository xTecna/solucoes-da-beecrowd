import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int R = Integer.parseInt(entrada[1]);

            boolean[] voluntarios = new boolean[N + 1];
            entrada = in.readLine().trim().split(" ");
            for(int i = 0; i < R; ++i){
                voluntarios[Integer.parseInt(entrada[i])] = true;
            }

            if(N == R){
                System.out.println("*");
            }else{
                for(int i = 1; i <= N; ++i){
                    if(!voluntarios[i]) System.out.printf("%d ", i);
                }
                System.out.println("");
            }
        }
    }
}