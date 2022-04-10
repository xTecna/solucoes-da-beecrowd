import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        double X = Double.parseDouble(entrada[0]);
        double Y = Double.parseDouble(entrada[1]);
        
        if(X > 0.0){
            if(Y > 0.0)
                System.out.printf("Q1\n");
            else if(Y < 0.0)
                System.out.printf("Q4\n");
            else
                System.out.printf("Eixo X\n");
        }else if(X < 0.0){
            if(Y > 0.0)
                System.out.printf("Q2\n");
            else if(Y < 0.0)
                System.out.printf("Q3\n");
            else
                System.out.printf("Eixo X\n");
        }else{
            if(Y > 0.0)
                System.out.printf("Eixo Y\n");
            else if(Y < 0.0)
                System.out.printf("Eixo Y\n");
            else
                System.out.printf("Origem\n");
        }
    }
}