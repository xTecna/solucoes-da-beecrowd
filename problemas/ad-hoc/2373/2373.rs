use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut resposta = 0;
    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();

        if (numeros[0] > numeros[1]) {
            resposta += numeros[1];
        }
    }

    println!("{}", resposta);
}
