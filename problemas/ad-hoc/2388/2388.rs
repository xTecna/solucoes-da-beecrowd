use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut resposta = 0;
    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<&str> = input.split(" ").collect();
        let v: i32 = numeros[0].trim().parse().unwrap();
        let t: i32 = numeros[1].trim().parse().unwrap();

        resposta += v * t;
    }

    println!("{}", resposta);
}
