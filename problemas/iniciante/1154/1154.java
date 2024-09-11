import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int soma, contador;

        soma = 0;
        contador = 0;
        while(in.ready()){
            int idade = Integer.parseInt(in.readLine());

            if(idade < 0){
                break;
            }

            soma += idade;
            ++contador;
        }

        System.out.println(String.format(Locale.US, "%.2f", (double)soma/contador));
    }
}