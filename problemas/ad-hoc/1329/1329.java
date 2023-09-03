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

            String[] partes = in.readLine().trim().split(" ");

            int joao = 0;
            for(int i = 0; i < N; ++i){
                int R = Integer.parseInt(partes[i]);
                joao += R;
            }

            int maria = N - joao;
            System.out.printf("Mary won %d times and John won %d times\n", maria, joao);
        }
    }
}