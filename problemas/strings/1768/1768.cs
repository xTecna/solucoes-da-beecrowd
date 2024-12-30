using System;
using System.Text;

class URI {
    static void imprimeTriangulo(int n, int espacamento){
        StringBuilder sb = new StringBuilder();
        int vazio = n - 1;
        int estrelas = 1;
        
        for(int i = 0; i < n; ++i){
            for(int j = 0; j < vazio + espacamento; ++j){
                sb.Append(" ");
            }
            for(int j = 0; j < estrelas; ++j){
                sb.Append("*");
            }

            vazio -= 1;
            estrelas += 2;
            if(i != n - 1){
                sb.Append('\n');
            }
        }

        Console.WriteLine(sb.ToString());
    }
    
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            int alturaArvore = (int)(Math.Ceiling(N/2.0));

            imprimeTriangulo(alturaArvore, 0);
            imprimeTriangulo(2, alturaArvore - 2);
            Console.WriteLine("");
        }
    }
}