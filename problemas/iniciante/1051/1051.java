import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double renda = Double.parseDouble(in.readLine());
        double devido = 0;

        if (renda > 4500.00) {
            devido += (renda - 4500.00) * 0.28;
            renda = 4500.00;
        }
        if (renda > 3000.00) {
            devido += (renda - 3000.00) * 0.18;
            renda = 3000.00;
        }
        if (renda > 2000.00) {
            devido += (renda - 2000.00) * 0.08;
        }

        if (devido == 0) {
            System.out.println("Isento");
        } else {
            System.out.printf("R$ %.2f\n", devido);
        }
    }
}