import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] LR = in.readLine().trim().split(" ");

            int L = Integer.parseInt(LR[0]);
            int R = Integer.parseInt(LR[1]);

            if(L == 0 && R == 0){
                break;
            }

            System.out.println(L + R);
        }
    }
}