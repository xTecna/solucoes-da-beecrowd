using System; 

class URI {
    static void Main(string[] args) {
        int[] porcoes = {300, 1500, 600, 1000, 150};

        int resposta = 225;
        for(int i = 0; i < 5; ++i){
            int quantidade = int.Parse(Console.ReadLine().Trim());
            resposta += quantidade * porcoes[i];
        }

        Console.WriteLine(resposta);
    }
}