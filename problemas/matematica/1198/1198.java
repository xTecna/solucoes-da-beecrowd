import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] guerreiros = in.readLine().trim().split(" ");

            long hashmat = Long.parseLong(guerreiros[0]);
            long oponente = Long.parseLong(guerreiros[1]);

            System.out.println(Math.abs(hashmat - oponente));
        }
    }
}