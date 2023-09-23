import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        boolean first = true;

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            if(first)   first = false;
            else        System.out.println("");

            int maior = 0;
            String[] palavras = new String[N];
            for(int k = 0; k < N; ++k){
                palavras[k] = in.readLine().trim();
                maior = Math.max(maior, palavras[k].length());
            }

            for(int k = 0; k < N; ++k){
                System.out.println(String.format(String.format("%%%ds", maior), palavras[k]));
            }
        }

    }
}