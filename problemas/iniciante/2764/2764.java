import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] data = in.readLine().trim().split("/");

        System.out.printf("%s/%s/%s\n", data[1], data[0], data[2]);
        System.out.printf("%s/%s/%s\n", data[2], data[1], data[0]);
        System.out.printf("%s-%s-%s\n", data[0], data[1], data[2]);
    }
}