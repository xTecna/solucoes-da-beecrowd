import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int codigo = Integer.parseInt(entrada[0]);
        int quantidade = Integer.parseInt(entrada[1]);
        
        double valor = 0.0;
        switch(codigo){
            case 1: valor = quantidade * 4.00;
                    break;
            case 2: valor = quantidade * 4.50;
                    break;
            case 3: valor = quantidade * 5.00;
                    break;
            case 4: valor = quantidade * 2.00;
                    break;
            case 5: valor = quantidade * 1.50;
                    break;
        }
        
        System.out.printf("Total: R$ %.2f\n", valor);
    }
}