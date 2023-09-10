import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] NM = in.readLine().trim().split(" ");

            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            if(N == 0 && M == 0){
                break;
            }

            String soma = String.format("%d", N + M);
            soma = soma.replace("0", "");

            System.out.println(soma);
        }
    }
}