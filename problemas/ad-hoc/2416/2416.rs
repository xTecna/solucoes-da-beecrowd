use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let c: i32 = parts[0].trim().parse().unwrap();
    let n: i32 = parts[1].trim().parse().unwrap();

    println!("{}", c % n);
}
