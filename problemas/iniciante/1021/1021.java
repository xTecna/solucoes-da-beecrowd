import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        int[] notas = {10000, 5000, 2000, 1000, 500, 200};
        int[] moedas = {100, 50, 25, 10, 5, 1};
        
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split("\\.");
        int reais = 100 * Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1]);
        
        System.out.println("NOTAS:");
        for(int i = 0; i < 6; ++i){
            System.out.println(String.format(Locale.US, "%d nota(s) de R$ %.2f", reais/notas[i], notas[i]/100.0));
            reais %= notas[i];
        }
        
        System.out.println("MOEDAS:");
        for(int i = 0; i < 6; ++i){
            System.out.println(String.format(Locale.US, "%d moeda(s) de R$ %.2f", reais/moedas[i], moedas[i]/100.0));
            reais %= moedas[i];
        }
    }
}