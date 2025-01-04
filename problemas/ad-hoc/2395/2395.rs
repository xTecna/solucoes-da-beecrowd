use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let conteiner: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    input = String::new();
    io::stdin().read_line(&mut input);
    let navio: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    println!("{}", (navio[0] / conteiner[0]) * (navio[1] / conteiner[1]) * (navio[2] / conteiner[2]));
}
