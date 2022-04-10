import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void swap(int[] vetor, int a, int b){
        int temp = vetor[a];
        vetor[a] = vetor[b];
        vetor[b] = temp;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int[] numeros = new int[3];
        int[] original = new int[3];
        for(int i = 0; i < 3; ++i){
            numeros[i] = Integer.parseInt(entrada[i]);
            original[i] = numeros[i];
        }
        
        if(numeros[1] < numeros[0])
            swap(numeros, 1, 0);
        if(numeros[2] < numeros[1]){
            swap(numeros, 2, 1);
            if(numeros[1] < numeros[0])
                swap(numeros, 1, 0);
        }
        
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", numeros[i]);
        }
        System.out.printf("\n");
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", original[i]);
        }
    }
}