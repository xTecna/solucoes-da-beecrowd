import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.BufferedWriter;

public class Main {
    public static int somaPA(int an) {
        return (an * (an + 1)) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        OutputStreamWriter osw = new OutputStreamWriter(System.out);
        BufferedWriter out = new BufferedWriter(osw);

        int k = 1;
        while (in.ready()) {
            int N = Integer.parseInt(in.readLine());

            out.write(String.format("Caso %d: %d numero%s\n", k++, somaPA(N) + 1, N == 0 ? "" : "s"));

            out.write("0");
            for (int i = 1; i <= N; ++i) {
                for (int j = 0; j < i; ++j) {
                    out.write(String.format(" %d", i));
                }
            }
            out.write("\n\n");
        }

        out.close();
    }
}