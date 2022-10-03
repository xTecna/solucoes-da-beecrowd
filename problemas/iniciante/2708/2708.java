import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int jipes = 0;
        int pessoas = 0;

        String[] entrada = in.readLine().trim().split(" ");
        while (!(entrada[0].equals("ABEND"))) {
            if (entrada[0].equals("SALIDA")) {
                pessoas += Integer.parseInt(entrada[1]);
                ++jipes;
            } else if (entrada[0].equals("VUELTA")) {
                pessoas -= Integer.parseInt(entrada[1]);
                --jipes;
            } else {
                break;
            }

            entrada = in.readLine().trim().split(" ");
        }

        System.out.println(pessoas);
        System.out.println(jipes);
    }
}