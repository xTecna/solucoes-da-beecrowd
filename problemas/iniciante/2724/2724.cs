using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            if(i > 0){
                Console.WriteLine("");
            }

            int T = int.Parse(Console.ReadLine());
            string[] perigosos = new string[T];
            for(int j = 0; j < T; ++j){
                perigosos[j] = Console.ReadLine().Trim();
            }

            int U = int.Parse(Console.ReadLine());
            for(int j = 0; j < U; ++j){
                string formula = Console.ReadLine().Trim();

                bool perigoso = false;
                for(int k = 0; !perigoso && k < T; ++k){
                    int pos = formula.IndexOf(perigosos[k]);
                    while(pos != -1){
                        int frente = pos + perigosos[k].Length;

                        if (frente < formula.Length){
                            char daFrente = formula[frente - 1];
                            char maisNaFrente = formula[frente];

                            if ((Char.IsDigit(daFrente) && !Char.IsDigit(maisNaFrente)) || (Char.IsUpper(daFrente) && Char.IsUpper(maisNaFrente)) || (Char.IsLower(daFrente) && Char.IsUpper(maisNaFrente))){
                                perigoso = true;
                                break;
                            }
                        }else{
                            perigoso = true;
                            break;
                        }

                        pos = formula.IndexOf(perigosos[k], pos + 1);
                    }
                }

                Console.WriteLine(perigoso ? "Abortar" : "Prossiga");
            }
        }
    }
}