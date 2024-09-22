use std::cmp::max;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.split(" ").collect();

    let a: i32 = numeros[0].trim().parse().unwrap();
    let b: i32 = numeros[1].trim().parse().unwrap();
    println!("{}", max(a, b));
}
