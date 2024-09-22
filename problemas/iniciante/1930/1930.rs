use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.split(" ").collect();

    let mut soma: i32 = 0;
    for i in 0..4 {
        let numero: i32 = numeros[i].trim().parse().unwrap();
        soma += numero;
    }
    println!("{}", soma - 3);
}
