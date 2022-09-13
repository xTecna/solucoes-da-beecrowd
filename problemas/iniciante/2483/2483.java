import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int I = Integer.parseInt(in.readLine());

        System.out.print("Feliz nat");
        for (int i = 0; i < I; ++i) {
            System.out.print("a");
        }
        System.out.println("l!");
    }
}