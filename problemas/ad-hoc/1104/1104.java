import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");

            int A = Integer.parseInt(entrada[0]);
            int B = Integer.parseInt(entrada[1]);

            if(A == 0 && B == 0){
                break;
            }

            String[] cartasAlice = in.readLine().trim().split(" ");
            HashSet<Integer> alice = new HashSet<Integer>();
            for(int i = 0; i < A; ++i){
                alice.add(Integer.parseInt(cartasAlice[i]));
            }
            
            String[] cartasBeatriz = in.readLine().trim().split(" ");
            HashSet<Integer> beatriz = new HashSet<Integer>();
            for(int i = 0; i < B; ++i){
                beatriz.add(Integer.parseInt(cartasBeatriz[i]));
            }

            HashSet<Integer> uniao = new HashSet<Integer>();
            uniao.addAll(alice);
            uniao.addAll(beatriz);
            System.out.println(Math.min(uniao.size() - alice.size(), uniao.size() - beatriz.size()));
        }
    }
}