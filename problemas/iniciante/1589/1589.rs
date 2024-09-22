use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<&str> = input.split(" ").collect();

        let r1: i32 = numeros[0].trim().parse().unwrap();
        let r2: i32 = numeros[1].trim().parse().unwrap();
        println!("{}", r1 + r2);
    }
}
