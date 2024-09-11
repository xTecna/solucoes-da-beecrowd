use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut n: i32 = input.trim().parse().unwrap();
    n -= n % 2;
    
    for i in (2..(n+1)).step_by(2) {
        println!("{}^2 = {}", i, i * i);
    }
}
