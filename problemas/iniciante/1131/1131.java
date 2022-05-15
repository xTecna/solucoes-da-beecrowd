import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int inter, gremio, empate;
    
        inter = 0;
        gremio = 0;
        empate = 0;
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int pt_inter = Integer.parseInt(entrada[0]);
            int pt_gremio = Integer.parseInt(entrada[1]);

            if(pt_inter > pt_gremio){
                ++inter;
            }else if(pt_inter == pt_gremio){
                ++empate;
            }else{
                ++gremio;
            }

            System.out.println("Novo grenal (1-sim 2-nao)");
            String codigo = in.readLine();
            if(!codigo.equals("1")){
                break;
            }
        }

        System.out.printf("%d grenais\n", inter + gremio + empate);
        System.out.printf("Inter:%d\n", inter);
        System.out.printf("Gremio:%d\n", gremio);
        System.out.printf("Empates:%d\n", empate);
        
        if(inter > gremio){
            System.out.println("Inter venceu mais");
        }else if(inter == gremio){
            System.out.println("Nao houve vencedor");
        }else{
            System.out.println("Gremio venceu mais");
        }
    }
}