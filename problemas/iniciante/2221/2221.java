import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static double valorGolpe(int ataque, int defesa, int nivel, int bonus) {
        return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 0; i < T; ++i) {
            int B = Integer.parseInt(in.readLine());

            String[] entrada = in.readLine().trim().split(" ");
            double golpeDabriel = valorGolpe(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), B);

            entrada = in.readLine().trim().split(" ");
            double golpeGuarte = valorGolpe(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), B);

            if (golpeDabriel > golpeGuarte) {
                System.out.println("Dabriel");
            } else if (golpeGuarte > golpeDabriel) {
                System.out.println("Guarte");
            } else {
                System.out.println("Empate");
            }
        }
    }
}