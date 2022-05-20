import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);

        if (B < A && C >= B) {
            System.out.println(":)");
        } else if (B > A && C <= B) {
            System.out.println(":(");
        } else if (B > A && C > B && C - B < B - A) {
            System.out.println(":(");
        } else if (B > A && C > B && C - B >= B - A) {
            System.out.println(":)");
        } else if (B < A && C < B && B - C < A - B) {
            System.out.println(":)");
        } else if (B < A && C < B && B - C >= A - B) {
            System.out.println(":(");
        } else if (A == B) {
            if (C > B) {
                System.out.println(":)");
            } else {
                System.out.println(":(");
            }
        }
    }
}