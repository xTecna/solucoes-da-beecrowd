import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        DecimalFormat df = new DecimalFormat("#.##");

        for(double i = 0; i <= 2; i += 0.2){
            for(int j = 1; j <= 3; ++j){
                System.out.println("I=" + df.format(i).replace(",", ".") + " J=" + df.format(j + i).replace(",", "."));
            }
        }
    }
}