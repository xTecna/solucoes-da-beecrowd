import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            Map<Character, Character> traducao = new HashMap<Character, Character>();

            String[] entrada = in.readLine().trim().split(" ");
            int C = Integer.parseInt(entrada[0]);
            int N = Integer.parseInt(entrada[1]);

            String cifra1 = in.readLine();
            String lowerCifra1 = cifra1.toLowerCase();
            String cifra2 = in.readLine();
            String lowerCifra2 = cifra2.toLowerCase();
            for (int i = 0; i < C; ++i) {
                traducao.put(cifra1.charAt(i), cifra2.charAt(i));
                traducao.put(lowerCifra1.charAt(i), lowerCifra2.charAt(i));
                traducao.put(cifra2.charAt(i), cifra1.charAt(i));
                traducao.put(lowerCifra2.charAt(i), lowerCifra1.charAt(i));
            }

            for (int i = 0; i < N; ++i) {
                String frase = in.readLine();

                for (int j = 0; j < frase.length(); ++j) {
                    if (traducao.containsKey(frase.charAt(j))) {
                        System.out.print(traducao.get(frase.charAt(j)));
                    } else {
                        System.out.print(frase.charAt(j));
                    }
                }
                System.out.println("");
            }
            System.out.println("");
        }
    }
}