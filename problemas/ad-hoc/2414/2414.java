import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        System.out.println(Arrays.stream(in.readLine().trim().split(" ")).mapToInt(Integer::parseInt).takeWhile(num -> num != 0).max().orElse(0));
    }
}