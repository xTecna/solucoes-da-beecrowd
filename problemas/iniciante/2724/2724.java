import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            if (i > 0) {
                System.out.println("");
            }

            int T = Integer.parseInt(in.readLine());
            String[] perigosos = new String[T];
            for (int j = 0; j < T; ++j) {
                perigosos[j] = in.readLine().trim();
            }

            int U = Integer.parseInt(in.readLine());
            for (int j = 0; j < U; ++j) {
                String formula = in.readLine().trim();

                boolean perigoso = false;
                for (int k = 0; !perigoso && k < T; ++k) {
                    int pos = formula.indexOf(perigosos[k]);
                    while (pos != -1) {
                        int frente = pos + perigosos[k].length();

                        if (frente < formula.length()) {
                            char daFrente = formula.charAt(frente - 1);
                            char maisNaFrente = formula.charAt(frente);

                            if ((Character.isDigit(daFrente) && !Character.isDigit(maisNaFrente))
                                    || (Character.isUpperCase(daFrente) && Character.isUpperCase(maisNaFrente))
                                    || (Character.isLowerCase(daFrente) && Character.isUpperCase(maisNaFrente))) {
                                perigoso = true;
                                break;
                            }
                        } else {
                            perigoso = true;
                            break;
                        }

                        pos = formula.indexOf(perigosos[k], pos + 1);
                    }
                }

                System.out.println(perigoso ? "Abortar" : "Prossiga");
            }
        }
    }
}