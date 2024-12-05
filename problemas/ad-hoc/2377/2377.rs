use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let L = numeros[0];
    let D = numeros[1];

    input = String::new();
    io::stdin().read_line(&mut input);
    numeros = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let K = numeros[0];
    let P = numeros[1];

    println!("{}", K * L + P * (L / D));
}
