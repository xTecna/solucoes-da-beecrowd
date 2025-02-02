use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let n: i32 = parts[0].trim().parse().unwrap();
    let x: i32 = parts[1].trim().parse().unwrap();
    let y: i32 = parts[2].trim().parse().unwrap();

    println!("{:.2}", n as f64 / (x + y) as f64);
}
