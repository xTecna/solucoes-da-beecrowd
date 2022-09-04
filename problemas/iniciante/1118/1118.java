import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static boolean valido(double x) {
        return (x >= 0.0) && (x <= 10.0);
    }

    public static boolean novoCalculo(BufferedReader in) throws IOException {
        System.out.println("novo calculo (1-sim 2-nao)");
        while (in.ready()) {
            int codigo = Integer.parseInt(in.readLine());

            switch (codigo) {
                case 1:
                    return true;
                case 2:
                    return false;
                default:
                    break;
            }

            System.out.println("novo calculo (1-sim 2-nao)");
        }

        return false;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double X = -1.0;
        while (in.ready()) {
            double Y = Double.parseDouble(in.readLine());

            if (valido(Y)) {
                if (X == -1.0) {
                    X = Y;
                } else {
                    System.out.printf("media = %.2f\n", (X + Y) / 2.0);
                    X = -1.0;

                    if (!novoCalculo(in)) {
                        break;
                    }
                }
            } else {
                System.out.println("nota invalida");
            }
        }
    }
}