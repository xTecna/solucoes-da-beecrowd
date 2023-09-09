import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static long somaPA(int a1, int an, int n){
        return ((long)(a1 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] AB = in.readLine().trim().split(" ");
        int A = Integer.parseInt(AB[0]);
        int B = Integer.parseInt(AB[1]);

        System.out.println(somaPA(A, B, B - A + 1));
    }
}