import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        char A = in.readLine().charAt(0);
        char B = in.readLine().charAt(0);
        char C = in.readLine().charAt(0);

        System.out.printf("A = %c, B = %c, C = %c\n", A, B, C);
        System.out.printf("A = %c, B = %c, C = %c\n", B, C, A);
        System.out.printf("A = %c, B = %c, C = %c\n", C, A, B);
    }
}