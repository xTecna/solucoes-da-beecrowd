import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] linhaPeca1 = in.readLine().trim().split(" ");
        int quantidade1 = Integer.parseInt(linhaPeca1[1]);
        double valor1 = Double.parseDouble(linhaPeca1[2]);

        String[] linhaPeca2 = in.readLine().trim().split(" ");
        int quantidade2 = Integer.parseInt(linhaPeca2[1]);
        double valor2 = Double.parseDouble(linhaPeca2[2]);
        
        double valor = quantidade1 * valor1 + quantidade2 * valor2;

        System.out.printf("VALOR A PAGAR: R$ %.2f\n", valor);
    }
}