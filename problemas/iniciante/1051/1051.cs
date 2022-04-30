using System;

class URI {
    static void Main(string[] args) {
        double renda = double.Parse(Console.ReadLine());
        double devido = 0;

        if(renda > 4500.00){
            devido += (renda - 4500.00) * 0.28;
            renda = 4500.00;
        }
        if (renda > 3000.00){
            devido += (renda - 3000.00) * 0.18;
            renda = 3000.00;
        }
        if (renda > 2000.00){
            devido += (renda - 2000.00) * 0.08;
        }

        if (devido == 0){
            Console.WriteLine("Isento");
        }else{
            Console.WriteLine($"R$ {devido:0.00}");
        }
    }
}