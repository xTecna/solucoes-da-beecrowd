use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut resposta: String = "Feliz nat".to_owned();
    for _ in 0..n {
        resposta.push_str("a");
    }
    resposta.push_str("l!");

    println!("{}", resposta);
}
