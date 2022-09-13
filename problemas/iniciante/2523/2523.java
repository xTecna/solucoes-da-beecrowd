import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String lampadas = in.readLine();
            int N = Integer.parseInt(in.readLine());
            String[] letras = in.readLine().trim().split(" ");
            for (int i = 0; i < N; ++i) {
                System.out.print(lampadas.charAt(Integer.parseInt(letras[i]) - 1));
            }
            System.out.println("");
        }
    }
}