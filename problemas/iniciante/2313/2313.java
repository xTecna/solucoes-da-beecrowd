import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;
import java.util.Arrays;

public class Main {
    public static boolean testaLado(int a, int b, int c) {
        return Math.abs(b - c) < a && a < b + c;
    }

    public static boolean triangulo(int[] lados) {
        return testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2])
                && testaLado(lados[2], lados[0], lados[1]);
    }

    public static String classificacao(int[] lados) {
        if (lados[0] == lados[1] && lados[1] == lados[2]) {
            return "Equilatero";
        }
        if (lados[0] == lados[1] || lados[0] == lados[2] || lados[1] == lados[2]) {
            return "Isoceles";
        }
        return "Escaleno";
    }

    public static boolean retangulo(int[] lados) {
        return lados[0] % 3 == 0 && lados[1] % 4 == 0 && lados[2] % 5 == 0;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int[] lados = new int[3];
        for (int i = 0; i < 3; ++i) {
            lados[i] = Integer.parseInt(entrada[i]);
        }
        Arrays.sort(lados);

        if (triangulo(lados)) {
            System.out.printf("Valido-%s\n", classificacao(lados));
            System.out.printf("Retangulo: %c\n", retangulo(lados) ? 'S' : 'N');
        } else {
            System.out.println("Invalido");
        }
    }
}