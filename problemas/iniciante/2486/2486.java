import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Map<String, Integer> vitaminaC = new HashMap<String, Integer>();
        vitaminaC.put("suco de laranja", 120);
        vitaminaC.put("morango fresco", 85);
        vitaminaC.put("mamao", 85);
        vitaminaC.put("goiaba vermelha", 70);
        vitaminaC.put("manga", 56);
        vitaminaC.put("laranja", 50);
        vitaminaC.put("brocolis", 34);

        while (in.ready()) {
            int T = Integer.parseInt(in.readLine());

            if (T == 0) {
                break;
            }

            int consumo = 0;
            for (int i = 0; i < T; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int N = Integer.parseInt(entrada[0]);
                String nome = String.join(" ", Arrays.copyOfRange(entrada, 1, entrada.length));

                consumo += N * vitaminaC.get(nome);
            }

            if (consumo < 110) {
                System.out.printf("Mais %d mg\n", 110 - consumo);
            } else if (consumo > 130) {
                System.out.printf("Menos %d mg\n", consumo - 130);
            } else {
                System.out.printf("%d mg\n", consumo);
            }
        }
    }
}