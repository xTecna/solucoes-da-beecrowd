import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] caracteristicas = new String[3];

        for(int i = 0; i < 3; ++i){
            caracteristicas[i] = in.readLine();
        }

        if(caracteristicas[0].equals("vertebrado")){
            if(caracteristicas[1].equals("ave")){
                if(caracteristicas[2].equals("carnivoro")){
                    System.out.println("aguia");
                }else if(caracteristicas[2].equals("onivoro")){
                    System.out.println("pomba");
                }
            }else if(caracteristicas[1].equals("mamifero")){
                if(caracteristicas[2].equals("onivoro")){
                    System.out.println("homem");
                }else if(caracteristicas[2].equals("herbivoro")){
                    System.out.println("vaca");
                }
            }
        }else if(caracteristicas[0].equals("invertebrado")){
            if(caracteristicas[1].equals("inseto")){
                if(caracteristicas[2].equals("hematofago")){
                    System.out.println("pulga");
                }else if(caracteristicas[2].equals("herbivoro")){
                    System.out.println("lagarta");
                }
            }else if(caracteristicas[1].equals("anelideo")){
                if(caracteristicas[2].equals("hematofago")){
                    System.out.println("sanguessuga");
                }else if(caracteristicas[2].equals("onivoro")){
                    System.out.println("minhoca");
                }
            }
        }
    }
}