import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        double PI = 3.14159;
        String[] entrada = in.readLine().trim().split(" ");
        double A = Double.parseDouble(entrada[0]);
        double B = Double.parseDouble(entrada[1]);
        double C = Double.parseDouble(entrada[2]);

        double areaTriangulo = (A * C)/2;
        double areaCirculo = PI * C * C;
        double areaTrapezio = (A + B)/2 * C;
        double areaQuadrado = B * B;
        double areaRetangulo = A * B;

        System.out.printf("TRIANGULO: %.3f\n", areaTriangulo);
        System.out.printf("CIRCULO: %.3f\n", areaCirculo);
        System.out.printf("TRAPEZIO: %.3f\n", areaTrapezio);
        System.out.printf("QUADRADO: %.3f\n", areaQuadrado);
        System.out.printf("RETANGULO: %.3f\n", areaRetangulo);
    }
}