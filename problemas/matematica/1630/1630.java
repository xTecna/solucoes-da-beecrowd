import java.io.IOException;
import java.util.Scanner;

public class Main {
    public static int mdc(int a, int b){
        return (b == 0) ? a : mdc(b, a % b);
    }
    
    public static void main(String[] args) throws IOException {
        Scanner scanner = new Scanner(System.in);
        int X, Y;

        while(true){
            try{
                X = scanner.nextInt();
                Y = scanner.nextInt();

                System.out.println(2 * (X/mdc(X, Y) + Y/mdc(X, Y)));
            }catch (Exception ex){
                break;
            }
        }
    }
}