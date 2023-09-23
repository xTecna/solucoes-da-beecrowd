import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        HashSet<String> pomekons = new HashSet<String>();
        for(int i = 0; i < N; ++i){
            String pomekon = in.readLine().trim();
            pomekons.add(pomekon);
        }

        System.out.printf("Falta(m) %d pomekon(s).\n", 151 - pomekons.size());
    }
}