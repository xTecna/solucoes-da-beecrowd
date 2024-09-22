import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws IOException {
        String C;
        int N, P, Q;
        Scanner scanner = new Scanner(System.in);

        N = scanner.nextInt();

        P = scanner.nextInt();
        C = scanner.next();
        Q = scanner.nextInt();

        if(C.equals("+")){
            if(P + Q <= N)
                System.out.println("OK");
            else
                System.out.println("OVERFLOW");
        }else{
            if(P * Q <= N)
                System.out.println("OK");
            else
                System.out.println("OVERFLOW");
        }
    }
}