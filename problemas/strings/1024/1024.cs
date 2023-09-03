using System;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            char[] alfabeto = Console.ReadLine().Trim().ToCharArray();
            int deslocamento = int.Parse(Console.ReadLine());

            for(int j = 0; j < alfabeto.Length; ++j){
                alfabeto[j] = (char)((((int)alfabeto[j] - (int)'A' - deslocamento + 26) % 26) + (int)'A');
            }

            Console.WriteLine(string.Join("", alfabeto));
        }
    }
}