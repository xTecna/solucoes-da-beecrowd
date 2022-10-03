import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for (int letra = 97; letra < 123; ++letra) {
            System.out.printf("%d e %c\n", letra, letra);
        }
    }
}