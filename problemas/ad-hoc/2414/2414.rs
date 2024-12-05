use std::io;
use std::cmp::max;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    let mut maior = numeros[0];
    for i in 1..numeros.len() {
        maior = max(maior, numeros[i]);
    }

    println!("{}", maior);
}
