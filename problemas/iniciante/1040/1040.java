import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int leDouble(String entrada){
        String[] numeros = entrada.split("\\.");
        return Integer.parseInt(numeros[0]) * 10 + Integer.parseInt(numeros[1]);
    }
    
    public static String imprimeDouble(int numero){
        return numero/10 + "." + numero%10;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int[] notas = new int[4];
        for(int i = 0; i < 4; ++i){
            notas[i] = leDouble(entrada[i]);
        }
        
        int media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3])/10;
        
        System.out.println("Media: " + imprimeDouble(media));
        if(media >= 70){
            System.out.println("Aluno aprovado.");
        }else if(media < 50){
            System.out.println("Aluno reprovado.");
        }else{
            System.out.println("Aluno em exame.");
            
            int exame = leDouble(in.readLine().trim());
            media = (media + exame)/2;
            
            System.out.println("Nota do exame: " + imprimeDouble(exame));
            if(media >= 50){
                System.out.println("Aluno aprovado.");
            }else{
                System.out.println("Aluno reprovado.");
            }
            System.out.println("Media final: " + imprimeDouble(media));
        }
    }
}