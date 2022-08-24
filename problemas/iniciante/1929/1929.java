import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static boolean fazTriangulo(int a, int b, int c) {
        return (Math.abs(b - c) < a && a < b + c && Math.abs(a - c) < b && b < a + c && Math.abs(a - b) < c
                && c < a + b);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);
        int D = Integer.parseInt(entrada[3]);

        boolean resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D)
                || fazTriangulo(B, C, D);

        System.out.println(resposta ? "S" : "N");
    }
}