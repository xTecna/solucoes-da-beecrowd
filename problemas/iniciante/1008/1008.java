import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int numero = Integer.parseInt(in.readLine());
        int horas = Integer.parseInt(in.readLine());
        double valor = Double.parseDouble(in.readLine());
        
        double salario = valor * horas;

        System.out.println("NUMBER = " + numero);
        System.out.println(String.format(Locale.US, "SALARY = U$ %.2f", salario));
    }
}