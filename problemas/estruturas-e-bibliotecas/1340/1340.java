import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int n = Integer.parseInt(in.readLine());

            Stack<Integer> pilha = new Stack<Integer>();
            Queue<Integer> fila = new LinkedList<Integer>();
            PriorityQueue<Integer> filaDePrioridade = new PriorityQueue<Integer>();
            boolean p = true, f = true, fp = true;
            for(int i = 0; i < n; ++i){
                String[] partes = in.readLine().trim().split(" ");

                int elemento = Integer.parseInt(partes[1]);
                if(partes[0].equals("1")){
                    if(p){
                        pilha.push(elemento);
                    }
                    if(f){
                        fila.add(elemento);
                    }
                    if(fp){
                        filaDePrioridade.add(-elemento);
                    }
                }else{
                    if(p){
                        if(pilha.empty() || pilha.peek() != elemento){
                            p = false;
                        }else{
                            pilha.pop();
                        }
                    }
                    if(f){
                        if(fila.isEmpty() || fila.peek() != elemento){
                            f = false;
                        }else{
                            fila.remove();
                        }
                    }
                    if(fp){
                        if(filaDePrioridade.isEmpty() || filaDePrioridade.peek() != -elemento){
                            fp = false;
                        }else{
                            filaDePrioridade.remove();
                        }
                    }
                }
            }

            if(p && !f && !fp){
                System.out.println("stack");
            }else if(!p && f && !fp){
                System.out.println("queue");
            }else if(!p && !f && fp){
                System.out.println("priority queue");
            }else if(!p && !f && !fp){
                System.out.println("impossible");
            }else{
                System.out.println("not sure");
            }
        }
    }
}