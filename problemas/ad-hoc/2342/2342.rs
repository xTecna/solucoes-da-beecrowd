use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let p: i32 = parts[0].trim().parse().unwrap();
    let c: &str = parts[1].trim();
    let q: i32 = parts[2].trim().parse().unwrap();

    if c == "+" {
        if p + q <= n {
            println!("OK");
        } else {
            println!("OVERFLOW");
        }
    } else {
        if p * q <= n {
            println!("OK");
        } else {
            println!("OVERFLOW");
        }
    }
}
