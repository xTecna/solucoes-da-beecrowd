import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int converte(int horas, int minutos){
        return 60 * horas + minutos;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] partes = in.readLine().trim().split(" ");

            int H1 = Integer.parseInt(partes[0]);
            int M1 = Integer.parseInt(partes[1]);
            int H2 = Integer.parseInt(partes[2]);
            int M2 = Integer.parseInt(partes[3]);
            
            if(H1 == 0 && M1 == 0 && H2 == 0 && M2 == 0){
                break;
            }

            if(H2 < H1 || (H1 == H2 && M2 < M1)){
                H2 += 24;
            }
            int resposta = converte(H2, M2) - converte(H1, M1);

            System.out.println(resposta);
        }
    }
}