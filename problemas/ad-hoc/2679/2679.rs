use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let x: i32 = input.trim().parse().unwrap();
    println!("{}", x + 2 - (x % 2));
}
