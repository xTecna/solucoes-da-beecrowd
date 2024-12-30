import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
  public static void main(String[] args) throws IOException {
    InputStreamReader ir = new InputStreamReader(System.in);
    BufferedReader in = new BufferedReader(ir);

    int m = Integer.parseInt(in.readLine());
    int a = Integer.parseInt(in.readLine());
    int b = Integer.parseInt(in.readLine());
    int c = m - a - b;
    
    System.out.println(Math.max(a, Math.max(b, c)));
  }
}