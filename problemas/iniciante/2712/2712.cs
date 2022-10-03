using System;
using System.Text.RegularExpressions;

class URI {
    static Regex regex = new Regex("^([A-Z]{3})-([0-9]{4})$");

    static bool valido(string placa){
        return regex.Match(placa).Success;
    }

    static string diaDaSemana(string placa){
        switch(placa[7]){
            case '1':
            case '2':   return "MONDAY";
            case '3':
            case '4':   return "TUESDAY";
            case '5':
            case '6':   return "WEDNESDAY";
            case '7':
            case '8':   return "THURSDAY";
            case '9':
            case '0':   return "FRIDAY";
        }
        return "FAILURE";
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string S = Console.ReadLine();

            if(!valido(S)){
                Console.WriteLine("FAILURE");
            }else{
                Console.WriteLine(diaDaSemana(S));
            }
        }
    }
}