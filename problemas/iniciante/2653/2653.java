import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashSet;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        HashSet<String> joias = new HashSet<String>();
        while (in.ready()) {
            String joia = in.readLine();
            joias.add(joia);
        }

        System.out.println(joias.size());
    }
}