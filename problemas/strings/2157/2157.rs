use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let b = numeros[0];
        let e = numeros[1];

        let mut resposta = String::new();
        for i in b..=e {
            resposta += &i.to_string();
        }
        resposta += &resposta.chars().rev().collect::<String>();

        println!("{}", resposta);
    }
}
