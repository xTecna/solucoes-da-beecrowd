import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            for (int i = 0; i < N; ++i) {
                String[] pontos = in.readLine().trim().split(" ");
                System.out.println((char) (97 + 3 * (pontos.length - 1) + pontos[0].length() - 1));
            }
        }
    }
}