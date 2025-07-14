use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let r: i64 = parts[0].trim().parse().unwrap();
    let l: i64 = parts[1].trim().parse().unwrap();

    let pi = 3.1415;
    let v = (4.0 * pi * r as f64 * r as f64 * r as f64) / 3.0;

    println!("{}", (l as f64 / v) as i64);
}
