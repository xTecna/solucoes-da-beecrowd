import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        
        String[] L = in.readLine().trim().split(" ");
        int LA = Integer.parseInt(L[0]);
        int LB = Integer.parseInt(L[1]);

        String[] S = in.readLine().trim().split(" ");
        int SA = Integer.parseInt(S[0]);
        int SB = Integer.parseInt(S[1]);

        if(LA <= N && N <= LB && SA <= N && N <= SB){
            System.out.println("possivel");
        }else{
            System.out.println("impossivel");
        }
    }
}