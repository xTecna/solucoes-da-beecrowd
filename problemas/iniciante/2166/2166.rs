use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut resposta = 0.0;
    if n == 0 {
        resposta = 1.0;
    } else {
        resposta = 2.0;
        for _ in 1..n {
            resposta = 2.0 + 1.0 / resposta;
        }
        resposta = 1.0 + 1.0 / resposta;
    }
    println!("{:.10}", resposta);
}
