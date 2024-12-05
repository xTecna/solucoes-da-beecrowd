use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let h: i32 = parts[0].trim().parse().unwrap();
    let p: i32 = parts[1].trim().parse().unwrap();

    println!("{:.2}", h as f64 / p as f64);
}
