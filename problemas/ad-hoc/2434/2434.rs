use std::io;
use std::cmp::min;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let n = numeros[0];
    let mut saldo = numeros[1];

    let mut resposta = saldo;
    for i in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let movimentacao: i32 = input.trim().parse().unwrap();
        saldo += movimentacao;

        resposta = min(resposta, saldo);
    }

    println!("{}", resposta);
}
