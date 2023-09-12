using System;

class URI {
    static void Main(string[] args) {
        char A = char.Parse(Console.ReadLine());
        char B = char.Parse(Console.ReadLine());
        char C = char.Parse(Console.ReadLine());

        Console.WriteLine($"A = {A}, B = {B}, C = {C}");
        Console.WriteLine($"A = {B}, B = {C}, C = {A}");
        Console.WriteLine($"A = {C}, B = {A}, C = {B}");
    }
}