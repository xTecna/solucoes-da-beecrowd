import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);

        int B = scanner.nextInt();
        int T = scanner.nextInt();

        if (B + T > 160) {
            System.out.println(1);
        } else if (B + T < 160) {
            System.out.println(2);
        } else {
            System.out.println(0);
        }
    }
}