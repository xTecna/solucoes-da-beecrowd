import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] musicas = new String[] { "PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE",
                "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS" };

        int C = Integer.parseInt(in.readLine());
        for (int i = 0; i < C; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            System.out.println(musicas[Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1])]);
        }
    }
}