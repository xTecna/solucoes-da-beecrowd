import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int segundos = Integer.parseInt(in.readLine());
        
        int horas = segundos/3600;
        segundos %= 3600;
        int minutos = segundos/60;
        segundos %= 60;
        
        System.out.printf("%d:%d:%d\n", horas, minutos, segundos);
    }
}