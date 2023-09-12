import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] numeros = in.readLine().trim().split(" ");

            int N = Integer.parseInt(numeros[0]);
            int M = Integer.parseInt(numeros[1]);

            if(N == 0 && M == 0){
                break;
            }

            int repetidos = 0;
            int[] contador = new int[N + 1];
            String[] bilhetes = in.readLine().trim().split(" ");
            for(int i = 0; i < M; ++i){
                int bilhete = Integer.parseInt(bilhetes[i]);
                contador[bilhete] += 1;
                if(contador[bilhete] == 2){
                    ++repetidos;
                }
            }

            System.out.println(repetidos);
        }
    }
}