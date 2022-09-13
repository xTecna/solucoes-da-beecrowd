import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Vector;

public class Main {
    public static boolean soma(int[] expressao) {
        return expressao[0] + expressao[1] == expressao[2];
    }

    public static boolean subtracao(int[] expressao) {
        return expressao[0] - expressao[1] == expressao[2];
    }

    public static boolean multiplicacao(int[] expressao) {
        return expressao[0] * expressao[1] == expressao[2];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine().trim());

            int[][] expressoes = new int[T][3];
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                String[] YZ = entrada[1].trim().split("=");
                expressoes[i] = new int[] { Integer.parseInt(entrada[0].trim()), Integer.parseInt(YZ[0].trim()),
                        Integer.parseInt(YZ[1].trim()) };
            }

            List<String> errados = new Vector<String>();
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int E = Integer.parseInt(entrada[1]);

                switch (entrada[2]) {
                    case "+":
                        if (!soma(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "-":
                        if (!subtracao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "*":
                        if (!multiplicacao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                    case "I":
                        if (soma(expressoes[E - 1]) || subtracao(expressoes[E - 1])
                                || multiplicacao(expressoes[E - 1])) {
                            errados.add(entrada[0]);
                        }
                        break;
                }
            }

            if (errados.size() == 0) {
                System.out.println("You Shall All Pass!");
            } else if (errados.size() == T) {
                System.out.println("None Shall Pass!");
            } else {
                Collections.sort(errados);
                System.out.println(String.join(" ", errados));
            }
        }
    }
}