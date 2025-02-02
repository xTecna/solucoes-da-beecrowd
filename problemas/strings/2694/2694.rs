use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let linha: &str = input.trim();
        let parte1: i32 = linha[2..4].parse().unwrap();
        let parte2: i32 = linha[5..8].parse().unwrap();
        let parte3: i32 = linha[11..13].parse().unwrap();

        println!("{}", parte1 + parte2 + parte3);
    }
}
