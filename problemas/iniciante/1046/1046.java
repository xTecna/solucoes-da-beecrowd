import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int hora_inicial = Integer.parseInt(entrada[0]);
        int hora_final = Integer.parseInt(entrada[1]);
        
        if(hora_final <= hora_inicial)
            hora_final += 24;
        
        System.out.printf("O JOGO DUROU %d HORA(S)\n", hora_final - hora_inicial);
    }
}