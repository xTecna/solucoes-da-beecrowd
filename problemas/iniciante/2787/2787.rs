use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let l: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let c: i32 = input.trim().parse().unwrap();

    println!("{}", 1 - ((l % 2) ^ (c % 2)));
}
