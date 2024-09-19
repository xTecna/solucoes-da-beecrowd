use std::io;

fn main() {
    for i in 0..10 {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let numero: i32 = input.trim().parse().unwrap();

        if numero <= 0 {
            println!("X[{}] = 1", i);
        } else {
            println!("X[{}] = {}", i, numero);
        }
    }
}
