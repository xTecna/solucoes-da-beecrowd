import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static boolean ganhou(String jogada1, String jogada2) {
        return (jogada1.equals("pedra") && jogada2.equals("tesoura"))
                || (jogada1.equals("tesoura") && jogada2.equals("papel"))
                || (jogada1.equals("papel") && jogada2.equals("pedra"));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] jogadas = in.readLine().trim().split(" ");
            String dodo = jogadas[0];
            String leo = jogadas[1];
            String pepper = jogadas[2];

            if (ganhou(dodo, leo) && ganhou(dodo, pepper)) {
                System.out.println("Os atributos dos monstros vao ser inteligencia, sabedoria...");
            } else if (ganhou(leo, dodo) && ganhou(leo, pepper)) {
                System.out.println("Iron Maiden's gonna get you, no matter how far!");
            } else if (ganhou(pepper, dodo) && ganhou(pepper, leo)) {
                System.out.println("Urano perdeu algo muito precioso...");
            } else {
                System.out.println("Putz vei, o Leo ta demorando muito pra jogar...");
            }
        }
    }
}