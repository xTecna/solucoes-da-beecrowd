import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int[] cartas = new int[entrada.length];
        for(int i = 0; i < 5; ++i){
            cartas[i] = Integer.parseInt(entrada[i]);
        }
        
        boolean crescente = true;
        boolean decrescente = true;
        for(int i = 0; i < 4; ++i){
            if(cartas[i] <= cartas[i + 1]){
                decrescente = false;
            }
            if(cartas[i] >= cartas[i + 1]){
                crescente = false;
            }
        }

        if(crescente){
            System.out.println("C");
        }else if(decrescente){
            System.out.println("D");
        }else{
            System.out.println("N");
        }
    }
}