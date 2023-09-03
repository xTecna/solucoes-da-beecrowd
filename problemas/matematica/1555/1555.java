import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int r(int x, int y){
        return (3 * x) * (3 * x) + y * y;
    }

    public static int b(int x, int y){
        return 2 * x * x + (5 * y) * (5 * y);
    }

    public static int c(int x, int y){
        return -100 * x + y * y * y;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] xy = in.readLine().trim().split(" ");

            int x = Integer.parseInt(xy[0]);
            int y = Integer.parseInt(xy[1]);

            int rafael = r(x, y);
            int beto = b(x, y);
            int carlos = c(x, y);

            if(rafael > beto && rafael > carlos){
                System.out.println("Rafael ganhou");
            }else if(beto > carlos){
                System.out.println("Beto ganhou");
            }else{
                System.out.println("Carlos ganhou");
            }
        }
    }
}