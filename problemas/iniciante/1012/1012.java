import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

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

        System.out.println(String.format(Locale.US, "TRIANGULO: %.3f", areaTriangulo));
        System.out.println(String.format(Locale.US, "CIRCULO: %.3f", areaCirculo));
        System.out.println(String.format(Locale.US, "TRAPEZIO: %.3f", areaTrapezio));
        System.out.println(String.format(Locale.US, "QUADRADO: %.3f", areaQuadrado));
        System.out.println(String.format(Locale.US, "RETANGULO: %.3f", areaRetangulo));
    }
}