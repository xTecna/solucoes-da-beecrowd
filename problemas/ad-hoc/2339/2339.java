import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] CPF = in.readLine().trim().split(" ");
        int C = Integer.parseInt(CPF[0]);
        int P = Integer.parseInt(CPF[1]);
        int F = Integer.parseInt(CPF[2]);

        System.out.println(P >= C * F ? 'S' : 'N');
    }
}