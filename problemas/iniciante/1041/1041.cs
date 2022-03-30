using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double X = entrada[0];
        double Y = entrada[1];
        
        if(X > 0.0){
            if(Y > 0.0)
                Console.WriteLine("Q1");
            else if(Y < 0.0)
                Console.WriteLine("Q4");
            else
                Console.WriteLine("Eixo X");
        }else if(X < 0.0){
            if(Y > 0.0)
                Console.WriteLine("Q2");
            else if(Y < 0.0)
                Console.WriteLine("Q3");
            else
                Console.WriteLine("Eixo X");
        }else{
            if(Y > 0.0)
                Console.WriteLine("Eixo Y");
            else if(Y < 0.0)
                Console.WriteLine("Eixo Y");
            else
                Console.WriteLine("Origem");
        }
    }
}