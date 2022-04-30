import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());

        String[] entrada = in.readLine().trim().split(" ");

        int menor = Integer.parseInt(entrada[0]);
        int posicao = 0;
        for(int i = 1; i < N; ++i){
            int numero = Integer.parseInt(entrada[i]);

            if(numero < menor)
            {
                menor = numero;
                posicao = i;
            }
        }

        System.out.printf("Menor valor: %d\n", menor);
        System.out.printf("Posicao: %d\n", posicao);
    }
}