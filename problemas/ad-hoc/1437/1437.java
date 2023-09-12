import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int N = Integer.parseInt(in.readLine());

            if(N == 0){
                break;
            }

            int direcao = 0;
            String comandos = in.readLine();
            for(int i = 0; i < comandos.length(); ++i){
                if(comandos.charAt(i) == 'D'){
                    direcao = (direcao + 1) % 4;
                }else{
                    direcao = ((direcao - 1) + 4) % 4;
                }
            }

            switch(direcao){
                case 0: System.out.println('N');
                        break;
                case 1: System.out.println('L');
                        break;
                case 2: System.out.println('S');
                        break;
                case 3: System.out.println('O');
                        break;
            }
        }
    }
}