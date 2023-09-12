using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            int N = int.Parse(entrada);
            
            if(N == 0){
                break;
            }
            
            int direcao = 0;
            string comandos = Console.ReadLine();
            for(int i = 0; i < comandos.Length; ++i){
                if(comandos[i] == 'D'){
                    direcao = (direcao + 1) % 4;
                }else{
                    direcao = ((direcao - 1) + 4) % 4;
                }
            }
            
            switch(direcao){
                case 0: Console.WriteLine('N');
                        break;
                case 1: Console.WriteLine('L');
                        break;
                case 2: Console.WriteLine('S');
                        break;
                case 3: Console.WriteLine('O');
                        break;
            }
        }
    }
}