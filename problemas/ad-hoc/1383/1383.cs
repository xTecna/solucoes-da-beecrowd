using System;
using System.Collections.Generic;

class URI {
    static int[,] sudoku = new int[9,9];
    
    static bool verificaLinha(int i){
        HashSet<int> numeros = new HashSet<int>();
        for(int j = 0; j < 9; ++j){
            numeros.Add(sudoku[i, j]);
        }
        return numeros.Count == 9;
    }
    
    static bool verificaColuna(int j){
        HashSet<int> numeros = new HashSet<int>();
        for(int i = 0; i < 9; ++i){
            numeros.Add(sudoku[i, j]);
        }
        return numeros.Count == 9;
    }
    
    static bool verificaQuadrado(int x){
        HashSet<int> numeros = new HashSet<int>();
        
        int linha = 3*(x/3);
        int coluna = 3*(x%3);
        for(int i = 0; i < 3; ++i){
            for(int j = 0; j < 3; ++j){
                numeros.Add(sudoku[linha + i, coluna + j]);
            }
        }
        return numeros.Count == 9;
    }
    
    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());
        
        for(int k = 1; k <= n; ++k){
            for(int i = 0; i < 9; ++i){
                string[] entrada = Console.ReadLine().Trim().Split(' ');
                for(int j = 0; j < 9; ++j){
                    sudoku[i, j] = int.Parse(entrada[j]);
                }
            }
            
            bool resposta = true;
            for(int i = 0; i < 9; ++i){
                if(!verificaLinha(i) || !verificaColuna(i) || !verificaQuadrado(i)){
                    resposta = false;
                    break;
                }
            }
            
            Console.WriteLine($"Instancia {k}");
            if(resposta){
                Console.WriteLine("SIM");
            }else{
                Console.WriteLine("NAO");
            }
            Console.WriteLine("");
        }
    }
}