using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);

            for(int i = 0; i < N; ++i){
                String[] pontos = Console.ReadLine().Trim().Split(' ');
                Console.WriteLine((char) (97 + 3 * (pontos.Length - 1) + pontos[0].Length - 1));
            }
        }
    }
}