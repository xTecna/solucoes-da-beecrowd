using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null)
        {
            string[] partes = entrada.Split(' ');
            string D = partes[0];
            string N = partes[1];

            if(D == "0" && N == "0"){
                break;
            }

            N = N.Replace(D, "");
            N = N.TrimStart('0');

            if(N.Length == 0){
                Console.WriteLine("0");
            }else{
                Console.WriteLine(N);
            }
        }
    }
}