import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int Q = Integer.parseInt(in.readLine());
        String[] votos = in.readLine().trim().split(" ");
        
        int satisfatorio = Q;
        for(int i = 0; i < Q; ++i){
            satisfatorio -= Integer.parseInt(votos[i]);
        }

        if(satisfatorio > Q/2){
            System.out.println("Y");
        }else{
            System.out.println("N");
        }
    }
}