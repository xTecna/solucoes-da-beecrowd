import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int contador = 0;
        double numero, media = 0.0;
        
        for(int i = 0; i < 6; ++i){
            numero = Double.parseDouble(in.readLine());
            
            if(numero > 0.0){
                ++contador;
                media += numero;
            }
        }
        
        if(contador > 0){
            media /= contador;
        }
        
        System.out.printf("%d valores positivos\n", contador);
        System.out.printf("%.1f\n", media);
    }
}