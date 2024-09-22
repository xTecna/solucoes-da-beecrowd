use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut resposta: String = "Ho".to_owned();
    for _ in 1..n {
        resposta.push_str(" Ho");
    }
    resposta.push_str("!");

    println!("{}", resposta);
}
