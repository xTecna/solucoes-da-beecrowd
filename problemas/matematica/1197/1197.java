import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] vt = in.readLine().trim().split(" ");

            int v = Integer.parseInt(vt[0]);
            int t = Integer.parseInt(vt[1]);

            System.out.println(v * 2 * t);
        }
    }
}