use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let c: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    let mut resposta = 0;
    for i in 0..c {
        resposta += numeros[i as usize];
    }

    println!("{}", resposta);
}
