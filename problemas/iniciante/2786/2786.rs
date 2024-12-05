use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let l: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let c: i32 = input.trim().parse().unwrap();

    println!("{}", l * c + (l - 1) * (c - 1));
    println!("{}", 2 * (l + c - 2));
}
