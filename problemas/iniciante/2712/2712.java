import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.*;

public class Main {
    public static Pattern regex = Pattern.compile("^([A-Z]{3})-([0-9]{4})$");

    public static boolean valido(String placa) {
        return regex.matcher(placa).find();
    }

    public static String diaDaSemana(String placa) {
        switch (placa.charAt(7)) {
            case '1':
            case '2':
                return "MONDAY";
            case '3':
            case '4':
                return "TUESDAY";
            case '5':
            case '6':
                return "WEDNESDAY";
            case '7':
            case '8':
                return "THURSDAY";
            case '9':
            case '0':
                return "FRIDAY";
        }
        return "FAILURE";
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String S = in.readLine();

            if (!valido(S)) {
                System.out.println("FAILURE");
            } else {
                System.out.println(diaDaSemana(S));
            }
        }
    }
}