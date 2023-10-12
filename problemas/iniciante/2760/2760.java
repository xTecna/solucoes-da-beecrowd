import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String A = in.readLine();
        String B = in.readLine();
        String C = in.readLine();

        System.out.printf("%s%s%s\n", A, B, C);
        System.out.printf("%s%s%s\n", B, C, A);
        System.out.printf("%s%s%s\n", C, A, B);
        System.out.printf("%.10s%.10s%.10s\n", A, B, C);
    }
}