import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int soma, contador;

        soma = 0;
        contador = 0;
        while (in.ready()) {
            int idade = Integer.parseInt(in.readLine());

            if (idade < 0) {
                break;
            }

            soma += idade;
            ++contador;
        }

        System.out.printf("%.2f\n", (double) soma / contador);
    }
}