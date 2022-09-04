import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String tweet = in.readLine();
        System.out.println(tweet.length() > 140 ? "MUTE" : "TWEET");
    }
}