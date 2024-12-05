use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut anterior: i32 = -1;
    let mut resposta: i32 = 0;
    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numero: i32 = input.trim().parse().unwrap();

        if numero != anterior {
            resposta += 1;
            anterior = numero;
        }
    }

    println!("{}", resposta);
}
