import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] diasAteMes = new int[] { 0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335 };

    public static int diasAteData(int mes, int dia) {
        return diasAteMes[mes - 1] + dia;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int mes = Integer.parseInt(entrada[0]);
            int dia = Integer.parseInt(entrada[1]);

            int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

            if (diasAteNatal < 0) {
                System.out.println("Ja passou!");
            } else if (diasAteNatal == 0) {
                System.out.println("E natal!");
            } else if (diasAteNatal == 1) {
                System.out.println("E vespera de natal!");
            } else {
                System.out.printf("Faltam %d dias para o natal!\n", diasAteNatal);
            }
        }
    }
}