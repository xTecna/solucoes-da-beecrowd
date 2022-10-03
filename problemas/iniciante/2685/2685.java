import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int M = Integer.parseInt(in.readLine());

            M %= 360;

            if (M < 90) {
                System.out.println("Bom Dia!!");
            } else if (M < 180) {
                System.out.println("Boa Tarde!!");
            } else if (M < 270) {
                System.out.println("Boa Noite!!");
            } else {
                System.out.println("De Madrugada!!");
            }
        }
    }
}