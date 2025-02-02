use std::io;
use std::cmp::max;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
    let n = numeros[0];
    let x = numeros[1];

    input = String::new();
    io::stdin().read_line(&mut input);
    let alturas: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    let mut resposta = 1;
    let mut acumulado = 1;
    for i in 1..n {
        if (alturas[i as usize] - alturas[(i - 1) as usize] <= x) {
            acumulado += 1;
        } else {
            resposta = max(resposta, acumulado);
            acumulado = 1;
        }
    }
    resposta = max(resposta, acumulado);

    println!("{}", resposta);
}
