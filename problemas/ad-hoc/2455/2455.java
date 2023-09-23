import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] numeros = in.readLine().trim().split(" ");

        int P1 = Integer.parseInt(numeros[0]);
        int C1 = Integer.parseInt(numeros[1]);
        int P2 = Integer.parseInt(numeros[2]);
        int C2 = Integer.parseInt(numeros[3]);

        int diferenca = (P2 * C2) - (P1 * C1);

        if(diferenca < 0)       System.out.println("-1");
        else if(diferenca > 0)  System.out.println("1");
        else                    System.out.println("0");
    }
}