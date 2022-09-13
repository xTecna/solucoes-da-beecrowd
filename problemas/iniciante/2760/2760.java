import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] nomes = new String[3];
        for (int i = 0; i < 3; ++i) {
            nomes[i] = in.readLine();
        }

        System.out.printf("%s%s%s\n", nomes[0], nomes[1], nomes[2]);
        System.out.printf("%s%s%s\n", nomes[1], nomes[2], nomes[0]);
        System.out.printf("%s%s%s\n", nomes[2], nomes[0], nomes[1]);
        System.out.printf("%s%s%s\n", nomes[0].substring(0, Math.min(nomes[0].length(), 10)),
                nomes[1].substring(0, Math.min(nomes[1].length(), 10)),
                nomes[2].substring(0, Math.min(nomes[2].length(), 10)));
    }
}