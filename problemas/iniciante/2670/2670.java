import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int A1 = Integer.parseInt(in.readLine());
        int A2 = Integer.parseInt(in.readLine());
        int A3 = Integer.parseInt(in.readLine());

        System.out.println(2 * Math.min(A2 + 2 * A3, Math.min(A1 + A3, 2 * A1 + A2)));
    }
}