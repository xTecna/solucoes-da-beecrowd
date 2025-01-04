import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int L = Integer.parseInt(in.readLine());
        int C = Integer.parseInt(in.readLine());

        System.out.println(1 - ((L % 2) ^ (C % 2)));
    }
}