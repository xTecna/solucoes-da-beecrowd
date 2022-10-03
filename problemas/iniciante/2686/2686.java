import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int tempoDecorrido(double angulo) {
        return (int) (angulo * 240);
    }

    public static int converte(double angulo) {
        return (tempoDecorrido(angulo) + tempoDecorrido(90)) % tempoDecorrido(360);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            double M = Double.parseDouble(in.readLine());

            if (M < 90.0 || M == 360.0) {
                System.out.println("Bom Dia!!");
            } else if (M < 180.0) {
                System.out.println("Boa Tarde!!");
            } else if (M < 270.0) {
                System.out.println("Boa Noite!!");
            } else {
                System.out.println("De Madrugada!!");
            }

            int tempo = converte(M);
            int horas = tempo / 3600;
            tempo %= 3600;
            int minutos = tempo / 60;
            int segundos = tempo % 60;

            System.out.printf("%02d:%02d:%02d\n", horas, minutos, segundos);
        }
    }
}