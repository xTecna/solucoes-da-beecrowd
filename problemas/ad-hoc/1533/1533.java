import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            String[] entrada = in.readLine().trim().split(" ");
            Integer[] V = new Integer[N];
            for(int i = 0; i < N; ++i){
                V[i] = (Integer.parseInt(entrada[i]) * 10000) + i;
            }

            Arrays.sort(V, Collections.reverseOrder());

            System.out.println((V[1] % 10000) + 1);
        }
    }
}