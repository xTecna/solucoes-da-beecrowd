use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut numero: i32 = input.trim().parse().unwrap();

    for i in 0..1000 {
        println!("N[{}] = {}", i, i % numero);
    }
}
