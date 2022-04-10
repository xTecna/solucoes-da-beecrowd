import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int reajuste;
        double salario;
        
        salario = Double.parseDouble(in.readLine());
        
        if(salario <= 400.00)
            reajuste = 15;
        else if(salario <= 800.00)
            reajuste = 12;
        else if(salario <= 1200.00)
            reajuste = 10;
        else if(salario <= 2000.00)
            reajuste = 7;
        else
            reajuste = 4;
        
        System.out.printf("Novo salario: %.2f\n", salario * (1 + reajuste/100.00));
        System.out.printf("Reajuste ganho: %.2f\n", salario * reajuste/100.00);
        System.out.printf("Em percentual: %d %%\n", reajuste);
    }
}