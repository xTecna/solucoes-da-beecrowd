import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.StringBuffer;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String numero = in.readLine();
        StringBuffer entrada = new StringBuffer(numero);
        entrada.reverse();
        System.out.println(entrada);
    }
}