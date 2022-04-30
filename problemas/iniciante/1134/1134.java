import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int alcool = 0, gasolina = 0, diesel = 0;
        while(in.ready()){
            int codigo = Integer.parseInt(in.readLine());

            if(codigo == 4){
                break;
            }

            switch(codigo){
                case 1:     ++alcool;
                            break;
                case 2:     ++gasolina;
                            break;
                case 3:     ++diesel;
                            break;
                default:    break;
            }
        }

        System.out.println("MUITO OBRIGADO");
        System.out.printf("Alcool: %d\n", alcool);
        System.out.printf("Gasolina: %d\n", gasolina);
        System.out.printf("Diesel: %d\n", diesel);
    }
}