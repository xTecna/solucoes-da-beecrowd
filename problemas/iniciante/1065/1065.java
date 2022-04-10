import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int pares = 0;
        
        for(int i = 0; i < 5; ++i){
            int numero = Integer.parseInt(in.readLine());
            
            if(numero % 2 == 0){
                ++pares;
            }
        }
        
        System.out.printf("%d valores pares\n", pares);
    }
}