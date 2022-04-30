import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for(int i = 1, j = 60; j > -1; i += 3, j -= 5){
            System.out.printf("I=%d J=%d\n", i, j);
        }
    }
}