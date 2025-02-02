use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(".").collect();
    let parts2: Vec<&str> = parts[2].split("-").collect();

    println!("{}", parts[0].trim());
    println!("{}", parts[1].trim());
    println!("{}", parts2[0].trim());
    println!("{}", parts2[1].trim());
}
