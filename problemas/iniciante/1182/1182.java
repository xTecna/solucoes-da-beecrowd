import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int C = Integer.parseInt(in.readLine());
        String T = in.readLine();
        
        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                double numero = Double.parseDouble(in.readLine());
            
                if(j == C){
                    soma += numero;
                }
            }
        }

        if(T.equals("S")){
            System.out.println(String.format(Locale.US, "%.1f", soma));
        }else{
            System.out.println(String.format(Locale.US, "%.1f", soma/12));
        }
    }
}