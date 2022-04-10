import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        int par = 2;
        
        while(par <= 100){
            System.out.printf("%d\n", par);
            par += 2;
        }
    }
}