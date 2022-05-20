import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

        int N = Integer.parseInt(in.readLine());

        System.out.println(frase.substring(0, N));
    }
}