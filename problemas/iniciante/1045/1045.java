import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        
        double[] numeros = new double[3];
        for(int i = 0; i < 3; ++i){
            numeros[i] = Double.parseDouble(entrada[i]);
        }
        Arrays.sort(numeros);
        
        double A = numeros[2];
        double B = numeros[1];
        double C = numeros[0];
        
        if(A >= B + C){
            System.out.println("NAO FORMA TRIANGULO");
        }else{
            if(A * A == B * B + C * C){
                System.out.println("TRIANGULO RETANGULO");
            }else if(A * A > B * B + C * C){
                System.out.println("TRIANGULO OBTUSANGULO");
            }else{
                System.out.println("TRIANGULO ACUTANGULO");
            }
            
            if(A == B && B == C){
                System.out.println("TRIANGULO EQUILATERO");
            }else if(A == B || A == C || B == C){
                System.out.println("TRIANGULO ISOSCELES");
            }
        }
    }
}