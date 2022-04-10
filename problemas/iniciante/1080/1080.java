import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
                
        int numero, maior = Integer.MIN_VALUE, posicao = 1;

        for(int i = 0; i < 100; ++i){
            numero = Integer.parseInt(in.readLine());

            if(numero > maior){
                maior = numero;
                posicao = i + 1;
            }
        }

        System.out.printf("%d\n%d\n", maior, posicao);
    }
}