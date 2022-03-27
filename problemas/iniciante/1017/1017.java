import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int tempo = Integer.parseInt(in.readLine());
        int velocidade = Integer.parseInt(in.readLine());
        
        int distancia = tempo * velocidade;
        double litros = distancia / 12.0;
        
        System.out.println(String.format(Locale.US, "%.3f", litros));
    }
}