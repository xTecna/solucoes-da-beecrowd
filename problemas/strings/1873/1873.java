import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        HashMap<String, List<String>> ganhaDe = new HashMap<String, List<String>>();
        ganhaDe.put("pedra", Arrays.asList("tesoura", "lagarto"));
        ganhaDe.put("papel", Arrays.asList("pedra", "spock"));
        ganhaDe.put("tesoura", Arrays.asList("papel", "lagarto"));
        ganhaDe.put("lagarto", Arrays.asList("papel", "spock"));
        ganhaDe.put("spock", Arrays.asList("pedra", "tesoura"));

        int C = Integer.parseInt(in.readLine());
        for(int k = 0; k < C; ++k){
            String[] entrada = in.readLine().trim().split(" ");

            if(entrada[0].equals(entrada[1])){
                System.out.println("empate");
            }else if(ganhaDe.get(entrada[0]).contains(entrada[1])){
                System.out.println("rajesh");
            }else{
                System.out.println("sheldon");
            }
        }
    }
}