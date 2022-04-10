import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        double numero = Double.parseDouble(in.readLine());
        
        if(0 <= numero && numero <= 25){
            System.out.printf("Intervalo [0,25]\n");
        }else if(25 < numero && numero <= 50){
            System.out.printf("Intervalo (25,50]\n");
        }else if(50 < numero && numero <= 75){
            System.out.printf("Intervalo (50,75]\n");
        }else if(75 < numero && numero <= 100){
            System.out.printf("Intervalo (75,100]\n");
        }else{
            System.out.printf("Fora de intervalo\n");
        }
    }
}