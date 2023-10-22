import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for(int k = 0; k < T; ++k){
            int N = Integer.parseInt(in.readLine());

            String[] carneiros = in.readLine().trim().split(" ");

            HashSet<Integer> diferentes = new HashSet<Integer>();
            for(int i = 0; i < carneiros.length; ++i){
                diferentes.add(Integer.parseInt(carneiros[i]));
            }

            System.out.println(diferentes.size());
        }
    }
}