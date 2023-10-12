import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String entrada = in.readLine();

            if(entrada.equals("-1")){
                break;
            }

            int numero = 0;
            if(entrada.startsWith("0x")){
                numero = Integer.parseInt(entrada.substring(2), 16);
                System.out.println(numero);
            }else{
                numero = Integer.parseInt(entrada);
                System.out.printf("0x%X\n", numero);
            }
        }
    }
}