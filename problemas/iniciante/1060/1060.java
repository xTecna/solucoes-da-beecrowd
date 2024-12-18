import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int positivos = 0;
        
        for(int i = 0; i < 6; ++i){
            double numero = Double.parseDouble(in.readLine());
            
            if(numero > 0)
                ++positivos;
        }
        
        System.out.println(positivos + " valores positivos");
    }
}