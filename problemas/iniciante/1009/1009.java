import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String vendedor = in.readLine();
        double salario = Double.parseDouble(in.readLine());
        double vendas = Double.parseDouble(in.readLine());
        
        double total = salario + 0.15 * vendas;

        System.out.printf("TOTAL = R$ %.2f\n", total);
    }
}