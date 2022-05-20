import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void calcula(int x, int y) {
        int quociente;

        if (x > 0)
            if (y > 0)
                quociente = x / y;
            else
                quociente = (int) Math.ceil((double) x / y);
        else if (y > 0)
            quociente = (int) Math.floor((double) x / y);
        else
            quociente = (int) Math.ceil((double) x / y);

        System.out.println(String.format("%d %d", quociente, x - (y * quociente)));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int a = Integer.parseInt(entrada[0]);
        int b = Integer.parseInt(entrada[1]);

        calcula(a, b);
    }
}