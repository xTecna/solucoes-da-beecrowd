use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let divisoes: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

    let mut resposta = 0;
    for i in 0..n {
        resposta += divisoes[i as usize];
    }

    println!("{}", resposta - n);
}
