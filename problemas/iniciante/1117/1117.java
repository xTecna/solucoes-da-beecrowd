import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double nota1, nota2;

        nota1 = -1.0;
        nota2 = -1.0;
        while (nota2 == -1.0) {
            double nota = Double.parseDouble(in.readLine());

            if (nota >= 0.0 && nota <= 10.0) {
                if (nota1 == -1.0) {
                    nota1 = nota;
                } else {
                    nota2 = nota;
                }
            } else {
                System.out.println("nota invalida");
            }
        }

        System.out.printf("media = %.2f\n", (nota1 + nota2) / 2.0);
    }
}