import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for(int i = 1; i < 10; i += 2){
            for(int j = 7; j > 4; --j){
                System.out.printf("I=%d J=%d\n", i, j);
            }
        }
    }
}