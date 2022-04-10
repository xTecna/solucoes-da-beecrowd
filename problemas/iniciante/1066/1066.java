import java.util.Scanner;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        int impares = 0, positivos = 0, negativos = 0;
        
        for(int i = 0; i < 5; ++i){
            int x = scanner.nextInt();

            impares += ((x > 0 ? x : -x) % 2);

            if(x > 0)       ++positivos;
            else if(x < 0)  ++negativos;
        }

        System.out.println(String.format("%d valor(es) par(es)", 5 - impares));
        System.out.println(String.format("%d valor(es) impar(es)", impares));
        System.out.println(String.format("%d valor(es) positivo(s)", positivos));
        System.out.println(String.format("%d valor(es) negativo(s)", negativos));
    }
}