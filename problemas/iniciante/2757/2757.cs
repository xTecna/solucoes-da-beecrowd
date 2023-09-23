using System;

class URI {
    static void Main(string[] args) {
        int A = int.Parse(Console.ReadLine());
        int B = int.Parse(Console.ReadLine());
        int C = int.Parse(Console.ReadLine());

        Console.WriteLine($"A = {A}, B = {B}, C = {C}");
        Console.WriteLine($"A = {A,10}, B = {B,10}, C = {C,10}");

        if(A < 0){
            Console.WriteLine($"A = {A:000000000}, B = {B:0000000000}, C = {C:0000000000}");
        }else{
            Console.WriteLine($"A = {A:0000000000}, B = {B:0000000000}, C = {C:0000000000}");
        }
        
        Console.WriteLine($"A = {A,-10}, B = {B,-10}, C = {C,-10}");
    }
}