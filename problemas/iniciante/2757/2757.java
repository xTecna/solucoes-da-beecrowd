import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int A = Integer.parseInt(in.readLine());
        int B = Integer.parseInt(in.readLine());
        int C = Integer.parseInt(in.readLine());

        System.out.printf("A = %d, B = %d, C = %d\n", A, B, C);
        System.out.printf("A = %10d, B = %10d, C = %10d\n", A, B, C);
        System.out.printf("A = %010d, B = %010d, C = %010d\n", A, B, C);
        System.out.printf("A = %-10d, B = %-10d, C = %-10d\n", A, B, C);
    }
}