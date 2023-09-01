using System;

class URI {
    static char[] alfabeto;

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            alfabeto = Console.ReadLine().Trim().ToCharArray();
            int deslocamento = int.Parse(Console.ReadLine());

            for(int j = 0; j < alfabeto.Length; ++i){
                alfabeto[j] = ((char)((((int)alfabeto[j]) - ((int)'A') - deslocamento + 26) % 26) + ((int)'A'));
            }

            Console.WriteLine(string.Join('', alfabeto));
        }
    }
}