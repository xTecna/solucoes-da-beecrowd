import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] DVFVG = in.readLine().trim().split(" ");
            int D = Integer.parseInt(DVFVG[0]);
            int VF = Integer.parseInt(DVFVG[1]);
            int VG = Integer.parseInt(DVFVG[2]);

            if(12.0/VF >= Math.sqrt(144 + (D * D))/VG){
                System.out.println("S");
            }else{
                System.out.println("N");
            }
        }
    }
}