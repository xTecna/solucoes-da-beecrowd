using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static bool vogal(char x){
        switch(x){
            case 'a':
            case 'e':
            case 'i':
            case 'o':
            case 'u':   return true;
            default:    return false;
        }
    }
    
    static void Main(string[] args) {
        char[] risada = Console.ReadLine().Trim().ToCharArray().Where(x => vogal(x)).ToArray();
        
        char[] inversao = new string(risada).ToCharArray();
        Array.Reverse(inversao);
        
        string a = new string(risada);
        string b = new string(inversao);
        
        if(a == b){
            Console.WriteLine("S");
        }else{
            Console.WriteLine("N");
        }
    }
}