use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    numeros.sort();
    println!("{}", numeros[1]);
}
