use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input);
    
    let x: i32 = input.trim().parse().unwrap();

    println!("{} minutos", 2*x);
}