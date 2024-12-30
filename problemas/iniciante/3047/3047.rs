use std::cmp::max;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let m: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let a: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let b: i32 = input.trim().parse().unwrap();

    let c = m - a - b;
    println!("{}", max(a, max(b, c)));
}
