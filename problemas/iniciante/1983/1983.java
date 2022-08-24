import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String aluno = "";

        int n = Integer.parseInt(in.readLine());

        double maior = 0.0;
        for (int i = 0; i < n; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            double nota = Double.parseDouble(entrada[1]);

            if (nota > maior) {
                maior = nota;
                aluno = entrada[0];
            }
        }

        if (maior < 8.0) {
            System.out.println("Minimum note not reached");
        } else {
            System.out.println(aluno);
        }
    }
}